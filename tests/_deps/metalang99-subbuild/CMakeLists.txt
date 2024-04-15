# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.16.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(metalang99-populate NONE)

include(ExternalProject)
ExternalProject_Add(metalang99-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/Hirrolot/metalang99" "GIT_TAG" "e0eb4e1"
                    SOURCE_DIR          "/home/tuananh/Documents/Github/smolrtsp/tests/_deps/metalang99-src"
                    BINARY_DIR          "/home/tuananh/Documents/Github/smolrtsp/tests/_deps/metalang99-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)
