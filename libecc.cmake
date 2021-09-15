cmake_minimum_required (VERSION 3.10)
project (libecc_lib)
#include(ExternalProject)



        file(GLOB LIBECC_SOURCE_FILES
            ${PROJECT_SOURCE_DIR}/src/external_deps/*.c
            ${PROJECT_SOURCE_DIR}/src/sig/*.c
            ${PROJECT_SOURCE_DIR}/src/hash/*.c
            ${PROJECT_SOURCE_DIR}/src/fp/*.c
            ${PROJECT_SOURCE_DIR}/src/curves/*.c
            ${PROJECT_SOURCE_DIR}/src/nn/*.c
            ${PROJECT_SOURCE_DIR}/src/utils/*.c
            ${PROJECT_SOURCE_DIR}/src/sig/*.h
            ${PROJECT_SOURCE_DIR}/src/hash/*.h
            ${PROJECT_SOURCE_DIR}/src/fp/*.h
            ${PROJECT_SOURCE_DIR}/src/curves/*.h
            ${PROJECT_SOURCE_DIR}/src/curves/*/*.h
            ${PROJECT_SOURCE_DIR}/src/nn/*.h
            ${PROJECT_SOURCE_DIR}/src/utils/*.h
            ${PROJECT_SOURCE_DIR}/src/*.h
            )

                add_library(libecc STATIC ${LIBECC_SOURCE_FILES} )

set_target_properties(libecc PROPERTIES LINKER_LANGUAGE C)
target_compile_definitions(libecc PRIVATE WITH_STDLIB USE_ASSERT_PRINT USE_CRYPTOFUZZ VERBOSE_INNER_VALUES)

include(tests.cmake)
include(examples.cmake)
