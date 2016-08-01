/**
 * @file filters.cpp
 * @brief Various image filters
 * @author Pauline Tan <pauline.tan@ens-cachan.fr>
 *         Pascal Monasse <monasse@imagine.enpc.fr>
 *
 * Copyright (c) 2012-2015, Pauline Tan, Pascal Monasse
 * All rights reserved.
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * You should have received a copy of the GNU General Pulic License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "image.h"
#include <algorithm>
#include <numeric>
#include <vector>
#include <cmath>
#include <cassert>

/// Fill pixels below value \a vMin using values at two closest pixels on same
/// line above \a vMin. The filling value is the result of \a cmp with the two
/// values as parameters.
void Image::fillX(float vMin, const float& (*cmp)(const float&,const float&)) {
    assert(c==1);
    for(int y=0; y<h; y++) {
        int x0=-1;
        float v0 = vMin;
        while(x0<w) {
            int x1=x0+1;
            while(x1<w && (*this)(x1,y)<vMin) ++x1;
            float v=v0;
            if(x1<w)
                v = cmp(v,v0=(*this)(x1,y));
            std::fill(&(*this)(x0+1,y), &(*this)(x1,y), v);
            x0=x1;
        }
    }
}

/// Fill pixels below value \a vMin with min of values at closest pixels on same
/// line above \a vMin.
void Image::fillMinX(float vMin) {
    fillX(vMin, std::min<float>);
}

/// Fill pixels below value \a vMin with max of values at closest pixels on same
/// line above \a vMin.
void Image::fillMaxX(float vMin) {
    fillX(vMin, std::max<float>);
}

/// Derivative along x-axis
Image Image::gradX() const {
    assert(w>=2 && c==1);
    Image D(w,h);
    float* out=D.tab;
    for(int y=0; y<h; y++) {
        const float* in=tab+y*w;
        *out++ = in[1]-in[0];
        for(int x=1; x+1<w; x++, in++)
            *out++ = .5f*(in[2]-in[0]);
        *out++ = in[1]-in[0];
    }
    return D;
}

/// Median filter, write results in \a M
Image Image::median(int radius) const {
    Image M(w,h,c);
    int size=2*radius+1;
    size *= size;
    float* v = new float[size];
    for(int y=0; y<h; y++)
        for(int x=0; x<w; x++)
            for(int k=0; k<c; k++) {
                int n=0;
                for(int j=-radius; j<=radius; j++)
                    if(0<=j+y && j+y<h)
                        for(int i=-radius; i<=radius; i++)
                            if(0<=i+x && i+x<w)
                                v[n++] = (*this)(i+x,j+y,k);
                // Following line should be used instead of full sort.
                // However, because of bug #58800 of g++ 4.8.2, we avoid it.
                // std::nth_element(v, v+n/2, v+n);
                std::sort(v, v+n);
                M(x,y,k) = v[n/2];
            }
    delete [] v;
    return M;
}

/// Square function
inline float sqr(float v1) {
    return v1*v1;
}

/// Square L2 distance between colors at (x1,y1) and at (x2,y2)
float Image::dist2(int x1,int y1, int x2,int y2) const {
    float d=0;
    for(int i=0; i<c; i++)
        d += sqr((*this)(x1,y1,i)-(*this)(x2,y2,i));
    return d;
}

/// @brief Compute weighted histogram of image values.
///
/// The area is [x-radius,x+radius]x[y-radius,y+radius] (inter image).
/// Values are shifted by \a vMin.
/// Weights are computed from the \a guidance image with factors \a sSpace for
/// spatial distance and \a sColor for color distance to central pixel.
void Image::weighted_histo(std::vector<float>& tab, int x, int y, int radius,
                           int vMin, const Image& guidance,
                           float sSpace, float sColor) const {
    std::fill(tab.begin(), tab.end(), 0.0f);
    for(int dy=-radius; dy<=radius; dy++)
        if(0<=y+dy && y+dy<h)
            for(int dx=-radius; dx<=radius; dx++)
                if(0<=x+dx && x+dx<w) {
                    float w = exp(-(dx*dx+dy*dy)*sSpace
                                  -guidance.dist2(x,y,x+dx,y+dy)*sColor);
                    tab[static_cast<int>((*this)(x+dx,y+dy))-vMin] += w;
                }
}

/// Index in histogram \a tab reaching median.
static int median_histo(const std::vector<float>& tab) {
    float sum=std::accumulate(tab.begin(), tab.end(), 0.0f)/2;
    int d=-1;
    for(float cumul=0; cumul<sum;)
        cumul += tab[++d];
    return d;
}

/// @brief Weighted median filter of current image.
///
/// Image is assumed to have integer values in [vMin,vMax]. Weights are computed
/// as in bilateral filter in color image \a guidance. Only pixels of image
/// \a where outside [vMin,vMax] are filtered.
Image Image::weightedMedian(const Image& guidance,
                            const Image& where, int vMin, int vMax,
                            int radius, float sSpace, float sColor) const {
    assert(where.c==1);
    sSpace = 1.0f/(sSpace*sSpace);
    sColor = 1.0f/(sColor*sColor);

    const int size=vMax-vMin+1;
    std::vector<float> tab(size);
    Image M(w,h);

#ifdef _OPENMP
#pragma omp parallel for firstprivate(tab)
#endif
    for(int y=0; y<h; y++)
        for(int x=0; x<w; x++) {
            if(vMin<=where(x,y) && where(x,y)<=vMax) {
                M(x,y)=(*this)(x,y);
                continue;
            }
            weighted_histo(tab, x,y, radius, vMin, guidance, sSpace, sColor);
            M(x,y) = static_cast<float>(vMin+median_histo(tab));
        }
    return M;
}
