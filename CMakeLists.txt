cmake_minimum_required(VERSION 3.17)
project(cross_compile)

set(CMAKE_CXX_STANDARD 17)

# SET SFML UP TO YOUR PROJECT
find_package(SFML 2.5.1 COMPONENTS system window graphics network audio REQUIRED)
include_directories(${SFML_INCLUDE_DIR})

add_executable(cross_compile main.cpp)

target_link_libraries (${PROJECT_NAME} sfml-graphics sfml-window sfml-system sfml-network sfml-audio)
