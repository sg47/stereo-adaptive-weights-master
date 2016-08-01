/**
 * @file occlusion.h
 * @brief Detect and fill occlusions by left-right consistency
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

#ifndef OCCLUSION_H
#define OCCLUSION_H

class Image;

/// Parameters for filling occlusions
struct ParamOcclusion {
    int tol_disp; ///< Tolerance of disp diff in left-right consistency check
    float sigma_space; ///< Sigma for space in bilateral weights
    float sigma_color; ///< Sigma for color in bilateral weights
    int median_radius; ///< Radius of window for weighted median filter

    // Constructor with default parameters
    ParamOcclusion()
    : tol_disp(1),
      sigma_space(9),
      sigma_color(255*0.1f),
      median_radius(9) {}

    bool check() const;
};

void detect_occlusion(Image& disparityLeft, const Image& disparityRight,
                      float dOcclusion, int tol_disp);
void fill_occlusion(const Image& dispDense, const Image& guidance,
                    Image& disparity, int dispMin, int dispMax,
                    const ParamOcclusion& paramOcc);
#endif
