cmake_minimum_required(VERSION 3.11)
project(DATN)

#Fix the warnings about `DOWNLOAD_EXTRACT_TIMESTAMP` in newer CMake versions.
if (CMAKE_VERSION VERSION_GREATER_EQUAL "3.24.0")
    cmake_policy(SET CMP0135 NEW)
endif()

option(SMOLRTSP_SHARED "Build a shared library" OFF)
option(SMOLRTSP_FULL_MACRO_EXPANSION "Show full macro expansion backtraces" OFF)

include(FetchContent)

FetchContent_Declare(
    smolrtsp
    URL https://github.com/OpenIPC/smolrtsp/archive/refs/tags/v0.1.3.tar.gz
)

FetchContent_Declare(
    slice99
    GIT_REPOSITORY https://github.com/Hirrolot/slice99
    GIT_TAG 7075e1e)

FetchContent_Declare(
    metalang99
    GIT_REPOSITORY https://github.com/Hirrolot/metalang99
    GIT_TAG e0eb4e1)

FetchContent_Declare(
  datatype99
  GIT_REPOSITORY https://github.com/Hirrolot/datatype99
  GIT_TAG aa24712)

FetchContent_Declare(
  interface99
  GIT_REPOSITORY https://github.com/Hirrolot/interface99
  GIT_TAG 73c7c1e)

# Tạo target cho SmolRTSP và làm cho nó có sẵn trong dự án của bạn
FetchContent_MakeAvailable(smolrtsp slice99 datatype99 interface99)

# Thêm đường dẫn đến các thư mục chứa các tệp nguồn của SmolRTSP

set(SMOLRTSP_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}//include)
set(SMOLRTSP_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

set(SMOLRTSP_SOURCES
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/error.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/header_map.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/header.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/message_body.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/method.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/reason_phrase.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/request_line.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/request_uri.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/request.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/response_line.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/response.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/rtsp_version.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/status_code.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/sdp.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/rtp.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal/h264.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal/h265.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/priv/compiler_attrs.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/writer.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/util.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/transport.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/rtp_transport.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal_transport.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/droppable.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/controller.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/io_vec.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/context.h
    ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/option.h
    ${SMOLRTSP_INCLUDE_DIR}/capture.h 




    ${SMOLRTSP_SOURCE_DIR}/types/error.c
    ${SMOLRTSP_SOURCE_DIR}/types/header_map.c
    ${SMOLRTSP_SOURCE_DIR}/types/header.c
    ${SMOLRTSP_SOURCE_DIR}/types/message_body.c
    ${SMOLRTSP_SOURCE_DIR}/types/method.c
    ${SMOLRTSP_SOURCE_DIR}/types/parsing.c
    ${SMOLRTSP_SOURCE_DIR}/types/parsing.h
    ${SMOLRTSP_SOURCE_DIR}/types/reason_phrase.c
    ${SMOLRTSP_SOURCE_DIR}/types/request_line.c
    ${SMOLRTSP_SOURCE_DIR}/types/request_uri.c
    ${SMOLRTSP_SOURCE_DIR}/types/request.c
    ${SMOLRTSP_SOURCE_DIR}/types/response_line.c
    ${SMOLRTSP_SOURCE_DIR}/types/response.c
    ${SMOLRTSP_SOURCE_DIR}/types/rtsp_version.c
    ${SMOLRTSP_SOURCE_DIR}/types/status_code.c
    ${SMOLRTSP_SOURCE_DIR}/types/sdp.c
    ${SMOLRTSP_SOURCE_DIR}/types/rtp.c
    ${SMOLRTSP_SOURCE_DIR}/nal/h264.c
    ${SMOLRTSP_SOURCE_DIR}/nal/h265.c
    ${SMOLRTSP_SOURCE_DIR}/nal.c
    ${SMOLRTSP_SOURCE_DIR}/writer.c
    ${SMOLRTSP_SOURCE_DIR}/writer/fd.c
    ${SMOLRTSP_SOURCE_DIR}/writer/file.c
    ${SMOLRTSP_SOURCE_DIR}/writer/string.c
    ${SMOLRTSP_SOURCE_DIR}/util.c
    ${SMOLRTSP_SOURCE_DIR}/transport/tcp.c
    ${SMOLRTSP_SOURCE_DIR}/transport/udp.c
    ${SMOLRTSP_SOURCE_DIR}/rtp_transport.c
    ${SMOLRTSP_SOURCE_DIR}/nal_transport.c
    ${SMOLRTSP_SOURCE_DIR}/io_vec.c
    ${SMOLRTSP_SOURCE_DIR}/controller.c
    ${SMOLRTSP_SOURCE_DIR}/context.c
    ${SMOLRTSP_SOURCE_DIR}/macros.h
    ${SMOLRTSP_SOURCE_DIR}/camera-utils/capture-jpeg.c
    ${SMOLRTSP_SOURCE_DIR}/camera-utils/list-controls.c
    ${SMOLRTSP_SOURCE_DIR}/camera-utils/list-formats.c
    ${SMOLRTSP_SOURCE_DIR}/capture.c


)

if(SMOLRTSP_SHARED)
  add_library(${PROJECT_NAME} SHARED ${SMOLRTSP_SOURCES})
else()
  add_library(${PROJECT_NAME} STATIC ${SMOLRTSP_SOURCES})
endif()

if(CMAKE_C_COMPILER_ID STREQUAL "Clang")
  target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra)
elseif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
  target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wno-misleading-indentation)
endif()

if(NOT SMOLRTSP_FULL_MACRO_EXPANSION)
  if(CMAKE_C_COMPILER_ID STREQUAL "Clang")
    target_compile_options(${PROJECT_NAME} PUBLIC -fmacro-backtrace-limit=1)
  elseif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    target_compile_options(${PROJECT_NAME} PUBLIC -ftrack-macro-expansion=0)
  endif()
endif()

# Precompile headers that use Datatype99/Interface99.
target_precompile_headers(
  ${PROJECT_NAME} PUBLIC
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/types/error.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal/h264.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal/h265.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/nal.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/writer.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/transport.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/droppable.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/controller.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/rtp_transport.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/util.h
  ${SMOLRTSP_INCLUDE_DIR}/smolrtsp/priv/compiler_attrs.h)


target_include_directories(${PROJECT_NAME} PUBLIC include)
target_link_libraries(${PROJECT_NAME} PUBLIC slice99 metalang99 datatype99 interface99)

set_target_properties(${PROJECT_NAME} PROPERTIES C_STANDARD 99 C_STANDARD_REQUIRED ON)




# Thêm các thư mục trong src vào dự án của bạn

# Tạo target cho dự án của bạn và kết nối với SmolRTSP


