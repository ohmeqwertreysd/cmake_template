cmake_minimum_required(VERSION 3.16)
project(CMake_Template)

include(common.cmake)

if(TARGET)
    message("Build ${TARGET}")
    if(${TARGET} STREQUAL "all")
        add_subdirectory(src)
        #add_subdirectory(test)
    elseif(${TARGET} STREQUAL "src")
        add_subdirectory(src)
    elseif(${TARGET} STREQUAL "test")
        add_subdirectory(test)
    endif()
else()
    message(WARNING "Undefined TARGET flag")
endif()

enable_testing()
include(CTest)

message("------------------${BUILD_TESTING}")

if(BUILD_TESTING)
    add_subdirectory(test)
endif()