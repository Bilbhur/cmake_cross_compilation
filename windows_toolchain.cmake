# Sample toolchain file for building for Windows from MacOs.
#
# Typical usage:
#    *) install cross compiler: `brew install mingw-w64`
#    *) mkdir windows_build && cd windows_build
#    *) cmake -DCMAKE_TOOLCHAIN_FILE=../windows_toolchain.cmake ..

# Target OS
set(CMAKE_SYSTEM_NAME WindowsStore)
set(CMAKE_SYSTEM_VERSION 10.0)

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
SET(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
SET(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
set(CMAKE_RANLIB i686-w64-mingw32-ranlib)

# Setting flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

# Link the `libstdc++-6.dll` inside of the binary file.
# The final user won't need to get all involved libs because they'll be in the bin
set(CMAKE_EXE_LINKER_FLAGS "-static")

# Trying to add SFML for cross compilation
link_directories(gitlab_ci/SFML-2.5.1-WIN/lib)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
