# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake-3.30.3-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.30.3-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sami/projects/src/my_ros_noetic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sami/projects/src/my_ros_noetic/build

# Include any dependencies generated for this target.
include CMakeFiles/turtle_.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/turtle_.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/turtle_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/turtle_.dir/flags.make

CMakeFiles/turtle_.dir/src/turtle_control.cpp.o: CMakeFiles/turtle_.dir/flags.make
CMakeFiles/turtle_.dir/src/turtle_control.cpp.o: /home/sami/projects/src/my_ros_noetic/src/turtle_control.cpp
CMakeFiles/turtle_.dir/src/turtle_control.cpp.o: CMakeFiles/turtle_.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sami/projects/src/my_ros_noetic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/turtle_.dir/src/turtle_control.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/turtle_.dir/src/turtle_control.cpp.o -MF CMakeFiles/turtle_.dir/src/turtle_control.cpp.o.d -o CMakeFiles/turtle_.dir/src/turtle_control.cpp.o -c /home/sami/projects/src/my_ros_noetic/src/turtle_control.cpp

CMakeFiles/turtle_.dir/src/turtle_control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/turtle_.dir/src/turtle_control.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sami/projects/src/my_ros_noetic/src/turtle_control.cpp > CMakeFiles/turtle_.dir/src/turtle_control.cpp.i

CMakeFiles/turtle_.dir/src/turtle_control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/turtle_.dir/src/turtle_control.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sami/projects/src/my_ros_noetic/src/turtle_control.cpp -o CMakeFiles/turtle_.dir/src/turtle_control.cpp.s

# Object files for target turtle_
turtle__OBJECTS = \
"CMakeFiles/turtle_.dir/src/turtle_control.cpp.o"

# External object files for target turtle_
turtle__EXTERNAL_OBJECTS =

devel/lib/my_ros_noetic/turtle_: CMakeFiles/turtle_.dir/src/turtle_control.cpp.o
devel/lib/my_ros_noetic/turtle_: CMakeFiles/turtle_.dir/build.make
devel/lib/my_ros_noetic/turtle_: CMakeFiles/turtle_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sami/projects/src/my_ros_noetic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/my_ros_noetic/turtle_"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/turtle_.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/turtle_.dir/build: devel/lib/my_ros_noetic/turtle_
.PHONY : CMakeFiles/turtle_.dir/build

CMakeFiles/turtle_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/turtle_.dir/cmake_clean.cmake
.PHONY : CMakeFiles/turtle_.dir/clean

CMakeFiles/turtle_.dir/depend:
	cd /home/sami/projects/src/my_ros_noetic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sami/projects/src/my_ros_noetic /home/sami/projects/src/my_ros_noetic /home/sami/projects/src/my_ros_noetic/build /home/sami/projects/src/my_ros_noetic/build /home/sami/projects/src/my_ros_noetic/build/CMakeFiles/turtle_.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/turtle_.dir/depend
