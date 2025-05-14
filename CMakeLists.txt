cmake_minimum_required(VERSION 4.0)

# Project setup
project(ProjectEuler LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Add fmt library
include(FetchContent)
FetchContent_Declare(
  fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt
  GIT_TAG        11.2.0)
FetchContent_MakeAvailable(fmt)

# Turn on compile commands for IDE support
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Function to add problem solutions
function(add_euler_executable problem_number source_file)
    add_executable("euler_${problem_number}" "src/${source_file}")
    target_link_libraries("euler_${problem_number}" PRIVATE fmt::fmt)
endfunction()

# Solutions 
add_euler_executable("1" multiples_of_3_and_5.cpp)
