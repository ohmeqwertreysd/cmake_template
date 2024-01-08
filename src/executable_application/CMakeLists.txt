project(Executable)

file(GLOB SOURCES *.cpp)
file(GLOB HEADERS *.h)

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})
target_link_libraries(${PROJECT_NAME} SomeLib1 SomeLib2)