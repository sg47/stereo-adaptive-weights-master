# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/Downloads/stereo-adaptive-weights-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Downloads/stereo-adaptive-weights-master/build

# Include any dependencies generated for this target.
include CMakeFiles/tiff2png.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tiff2png.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tiff2png.dir/flags.make

CMakeFiles/tiff2png.dir/io_png.c.o: CMakeFiles/tiff2png.dir/flags.make
CMakeFiles/tiff2png.dir/io_png.c.o: ../io_png.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Downloads/stereo-adaptive-weights-master/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/tiff2png.dir/io_png.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -o CMakeFiles/tiff2png.dir/io_png.c.o   -c /root/Downloads/stereo-adaptive-weights-master/io_png.c

CMakeFiles/tiff2png.dir/io_png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiff2png.dir/io_png.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -E /root/Downloads/stereo-adaptive-weights-master/io_png.c > CMakeFiles/tiff2png.dir/io_png.c.i

CMakeFiles/tiff2png.dir/io_png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiff2png.dir/io_png.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -S /root/Downloads/stereo-adaptive-weights-master/io_png.c -o CMakeFiles/tiff2png.dir/io_png.c.s

CMakeFiles/tiff2png.dir/io_png.c.o.requires:
.PHONY : CMakeFiles/tiff2png.dir/io_png.c.o.requires

CMakeFiles/tiff2png.dir/io_png.c.o.provides: CMakeFiles/tiff2png.dir/io_png.c.o.requires
	$(MAKE) -f CMakeFiles/tiff2png.dir/build.make CMakeFiles/tiff2png.dir/io_png.c.o.provides.build
.PHONY : CMakeFiles/tiff2png.dir/io_png.c.o.provides

CMakeFiles/tiff2png.dir/io_png.c.o.provides.build: CMakeFiles/tiff2png.dir/io_png.c.o

CMakeFiles/tiff2png.dir/io_tiff.c.o: CMakeFiles/tiff2png.dir/flags.make
CMakeFiles/tiff2png.dir/io_tiff.c.o: ../io_tiff.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Downloads/stereo-adaptive-weights-master/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/tiff2png.dir/io_tiff.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -o CMakeFiles/tiff2png.dir/io_tiff.c.o   -c /root/Downloads/stereo-adaptive-weights-master/io_tiff.c

CMakeFiles/tiff2png.dir/io_tiff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiff2png.dir/io_tiff.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -E /root/Downloads/stereo-adaptive-weights-master/io_tiff.c > CMakeFiles/tiff2png.dir/io_tiff.c.i

CMakeFiles/tiff2png.dir/io_tiff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiff2png.dir/io_tiff.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -Wall -Wextra -Werror -S /root/Downloads/stereo-adaptive-weights-master/io_tiff.c -o CMakeFiles/tiff2png.dir/io_tiff.c.s

CMakeFiles/tiff2png.dir/io_tiff.c.o.requires:
.PHONY : CMakeFiles/tiff2png.dir/io_tiff.c.o.requires

CMakeFiles/tiff2png.dir/io_tiff.c.o.provides: CMakeFiles/tiff2png.dir/io_tiff.c.o.requires
	$(MAKE) -f CMakeFiles/tiff2png.dir/build.make CMakeFiles/tiff2png.dir/io_tiff.c.o.provides.build
.PHONY : CMakeFiles/tiff2png.dir/io_tiff.c.o.provides

CMakeFiles/tiff2png.dir/io_tiff.c.o.provides.build: CMakeFiles/tiff2png.dir/io_tiff.c.o

CMakeFiles/tiff2png.dir/tiff2png.cpp.o: CMakeFiles/tiff2png.dir/flags.make
CMakeFiles/tiff2png.dir/tiff2png.cpp.o: ../tiff2png.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /root/Downloads/stereo-adaptive-weights-master/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tiff2png.dir/tiff2png.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -Wall -Wextra -Werror -o CMakeFiles/tiff2png.dir/tiff2png.cpp.o -c /root/Downloads/stereo-adaptive-weights-master/tiff2png.cpp

CMakeFiles/tiff2png.dir/tiff2png.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tiff2png.dir/tiff2png.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -Wall -Wextra -Werror -E /root/Downloads/stereo-adaptive-weights-master/tiff2png.cpp > CMakeFiles/tiff2png.dir/tiff2png.cpp.i

CMakeFiles/tiff2png.dir/tiff2png.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tiff2png.dir/tiff2png.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -Wall -Wextra -Werror -S /root/Downloads/stereo-adaptive-weights-master/tiff2png.cpp -o CMakeFiles/tiff2png.dir/tiff2png.cpp.s

CMakeFiles/tiff2png.dir/tiff2png.cpp.o.requires:
.PHONY : CMakeFiles/tiff2png.dir/tiff2png.cpp.o.requires

CMakeFiles/tiff2png.dir/tiff2png.cpp.o.provides: CMakeFiles/tiff2png.dir/tiff2png.cpp.o.requires
	$(MAKE) -f CMakeFiles/tiff2png.dir/build.make CMakeFiles/tiff2png.dir/tiff2png.cpp.o.provides.build
.PHONY : CMakeFiles/tiff2png.dir/tiff2png.cpp.o.provides

CMakeFiles/tiff2png.dir/tiff2png.cpp.o.provides.build: CMakeFiles/tiff2png.dir/tiff2png.cpp.o

# Object files for target tiff2png
tiff2png_OBJECTS = \
"CMakeFiles/tiff2png.dir/io_png.c.o" \
"CMakeFiles/tiff2png.dir/io_tiff.c.o" \
"CMakeFiles/tiff2png.dir/tiff2png.cpp.o"

# External object files for target tiff2png
tiff2png_EXTERNAL_OBJECTS =

tiff2png: CMakeFiles/tiff2png.dir/io_png.c.o
tiff2png: CMakeFiles/tiff2png.dir/io_tiff.c.o
tiff2png: CMakeFiles/tiff2png.dir/tiff2png.cpp.o
tiff2png: CMakeFiles/tiff2png.dir/build.make
tiff2png: /usr/lib64/libtiff.so
tiff2png: /usr/lib64/libpng.so
tiff2png: /usr/lib64/libz.so
tiff2png: CMakeFiles/tiff2png.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable tiff2png"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiff2png.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tiff2png.dir/build: tiff2png
.PHONY : CMakeFiles/tiff2png.dir/build

CMakeFiles/tiff2png.dir/requires: CMakeFiles/tiff2png.dir/io_png.c.o.requires
CMakeFiles/tiff2png.dir/requires: CMakeFiles/tiff2png.dir/io_tiff.c.o.requires
CMakeFiles/tiff2png.dir/requires: CMakeFiles/tiff2png.dir/tiff2png.cpp.o.requires
.PHONY : CMakeFiles/tiff2png.dir/requires

CMakeFiles/tiff2png.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tiff2png.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tiff2png.dir/clean

CMakeFiles/tiff2png.dir/depend:
	cd /root/Downloads/stereo-adaptive-weights-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Downloads/stereo-adaptive-weights-master /root/Downloads/stereo-adaptive-weights-master /root/Downloads/stereo-adaptive-weights-master/build /root/Downloads/stereo-adaptive-weights-master/build /root/Downloads/stereo-adaptive-weights-master/build/CMakeFiles/tiff2png.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tiff2png.dir/depend

