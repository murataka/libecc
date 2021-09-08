cmake_minimum_required(VERSION 3.13)  # CMake version check
project(libecc)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard

include_directories(src)
include_directories(src/sig)
include_directories(src/nn)
include_directories(src/nn)



        file(GLOB SOURCE_FILES
            src/sig/*.c
            src/hash/*.c
            src/fp/*.c
            src/curves/*.c
            src/nn/*.c
            src/utils/*.c
            src/sig/*.h
            src/hash/*.h
            src/fp/*.h
            src/curves/*.h
            src/curves/*/*.h
            src/nn/*.h
            src/utils/*.h
            src/*.h
            )

                add_library(libecc ${SOURCE_FILES} )


# Add executable target with source files listed in SOURCE_FILES variable
#add_executable(simple_example ${SOURCE_FILES})
