cmake_minimum_required(VERSION 3.16)
project(Tests)

SET(CMAKE_CXX_STANDARD 20)
SET(CMAKE_CXX_STANDARD_REQUIRED on)
SET(CMAKE_CXX_FLAGS -Wall)

find_package(GTest)
include(CTest)

include_directories(${GTEST} ${GMOCK})

add_all_subdirectory(${CMAKE_CURRENT_SOURCE_DIR})

enable_testing()