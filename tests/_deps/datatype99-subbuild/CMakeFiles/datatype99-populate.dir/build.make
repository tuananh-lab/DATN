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
CMAKE_SOURCE_DIR = /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild

# Utility rule file for datatype99-populate.

# Include the progress variables for this target.
include CMakeFiles/datatype99-populate.dir/progress.make

CMakeFiles/datatype99-populate: CMakeFiles/datatype99-populate-complete


CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-mkdir
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-update
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-patch
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-build
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install
CMakeFiles/datatype99-populate-complete: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'datatype99-populate'"
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles/datatype99-populate-complete
	/usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-done

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'datatype99-populate'"
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-src
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp
	/usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-mkdir

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-gitinfo.txt
datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps && /usr/bin/cmake -P /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/tmp/datatype99-populate-gitclone.cmake
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps && /usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-update: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-src && /usr/bin/cmake -P /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/tmp/datatype99-populate-gitupdate.cmake

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-patch: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'datatype99-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-patch

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure: datatype99-populate-prefix/tmp/datatype99-populate-cfgcmd.txt
datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-update
datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-build: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-build

datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-test: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'datatype99-populate'"
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E echo_append
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-build && /usr/bin/cmake -E touch /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-test

datatype99-populate: CMakeFiles/datatype99-populate
datatype99-populate: CMakeFiles/datatype99-populate-complete
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-install
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-mkdir
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-download
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-update
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-patch
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-configure
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-build
datatype99-populate: datatype99-populate-prefix/src/datatype99-populate-stamp/datatype99-populate-test
datatype99-populate: CMakeFiles/datatype99-populate.dir/build.make

.PHONY : datatype99-populate

# Rule to build all files generated by this target.
CMakeFiles/datatype99-populate.dir/build: datatype99-populate

.PHONY : CMakeFiles/datatype99-populate.dir/build

CMakeFiles/datatype99-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/datatype99-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/datatype99-populate.dir/clean

CMakeFiles/datatype99-populate.dir/depend:
	cd /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild /home/tuananh/Documents/Github/smolrtsp/tests/_deps/datatype99-subbuild/CMakeFiles/datatype99-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/datatype99-populate.dir/depend

