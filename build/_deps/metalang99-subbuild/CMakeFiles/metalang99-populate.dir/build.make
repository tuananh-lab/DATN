# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild

# Utility rule file for metalang99-populate.

# Include the progress variables for this target.
include CMakeFiles/metalang99-populate.dir/progress.make

CMakeFiles/metalang99-populate: CMakeFiles/metalang99-populate-complete


CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-mkdir
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-update
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-patch
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-build
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install
CMakeFiles/metalang99-populate-complete: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'metalang99-populate'"
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles/metalang99-populate-complete
	/usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-done

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'metalang99-populate'"
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-src
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-build
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp
	/usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-mkdir

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-gitinfo.txt
metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps && /usr/bin/cmake -P /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/tmp/metalang99-populate-gitclone.cmake
	cd /home/tuananh/Documents/DATN/build/_deps && /usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-update: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-src && /usr/bin/cmake -P /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/tmp/metalang99-populate-gitupdate.cmake

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-patch: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'metalang99-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-patch

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure: metalang99-populate-prefix/tmp/metalang99-populate-cfgcmd.txt
metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-update
metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-build: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-build

metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-test: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'metalang99-populate'"
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-test

metalang99-populate: CMakeFiles/metalang99-populate
metalang99-populate: CMakeFiles/metalang99-populate-complete
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-install
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-mkdir
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-download
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-update
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-patch
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-configure
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-build
metalang99-populate: metalang99-populate-prefix/src/metalang99-populate-stamp/metalang99-populate-test
metalang99-populate: CMakeFiles/metalang99-populate.dir/build.make

.PHONY : metalang99-populate

# Rule to build all files generated by this target.
CMakeFiles/metalang99-populate.dir/build: metalang99-populate

.PHONY : CMakeFiles/metalang99-populate.dir/build

CMakeFiles/metalang99-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metalang99-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metalang99-populate.dir/clean

CMakeFiles/metalang99-populate.dir/depend:
	cd /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild /home/tuananh/Documents/DATN/build/_deps/metalang99-subbuild/CMakeFiles/metalang99-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/metalang99-populate.dir/depend

