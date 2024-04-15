# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.16.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(smolrtsp-populate NONE)

include(ExternalProject)
ExternalProject_Add(smolrtsp-populate
                     "UPDATE_DISCONNECTED" "False" "URL" "https://github.com/OpenIPC/smolrtsp/archive/refs/tags/v0.1.3.tar.gz"
                    SOURCE_DIR          "/home/tuananh/Documents/DATN/build/_deps/smolrtsp-src"
                    BINARY_DIR          "/home/tuananh/Documents/DATN/build/_deps/smolrtsp-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)
