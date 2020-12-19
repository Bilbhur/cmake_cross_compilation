cmake_minimum_required(VERSION 3.17)
project(cross_compile)

set(CMAKE_CXX_STANDARD 14)

add_executable(cross_compile main.cpp)

# SET SFML UP TO YOUR PROJECT
find_package(SFML 2.5.1 COMPONENTS system window graphics network audio REQUIRED)
target_link_libraries (${PROJECT_NAME} sfml-graphics sfml-window sfml-system sfml-network sfml-audio)

if (SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(${PROJECT_NAME} ${SFML_LIBRARIES})
endif()