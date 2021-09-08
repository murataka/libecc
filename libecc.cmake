cmake_minimum_required (VERSION 3.10)
project (libecc)
#include(ExternalProject)



set(C_COMPILE_FLAGS "-Wall -g3 -O0 ${NATIVE_OPT} -DPALISADE_VERSION=${PALISADE_VERSION}")
set(CXX_COMPILE_FLAGS "-Wall -g3 -O0 ${NATIVE_OPT} -DPALISADE_VERSION=${PALISADE_VERSION} ${IGNORE_WARNINGS}")


        file(GLOB SOURCE_FILES
            ${CMAKE_CURRENT_SOURCE_DIR}/src/sig/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/hash/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/fp/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/curves/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/nn/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/utils/*.c
            ${CMAKE_CURRENT_SOURCE_DIR}/src/sig/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/hash/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/fp/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/curves/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/curves/*/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/nn/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/utils/*.h
            ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h
            )

                add_library(libecc ${SOURCE_FILES} )

set_target_properties(libecc PROPERTIES LINKER_LANGUAGE C)
target_compile_definitions(libecc PRIVATE WITH_STDLIB USE_ASSERT_PRINT )
