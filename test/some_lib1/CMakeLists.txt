cmake_minimum_required(VERSION 3.16)

project(some_lib1_test)

file(GLOB SOURCES *.cpp)

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} SomeLib1 gtest gmock GTest::GTest GTest::Main)

add_test(Test ${PROJECT_NAME})