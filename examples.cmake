cmake_minimum_required (VERSION 3.10)
project (libecc_examples)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/external_deps)
    add_executable(curve_basic_examples
        ${CMAKE_CURRENT_SOURCE_DIR}/src/examples/curve_basic_examples.c

        )

#curve_ecdh.c
    target_link_libraries (curve_basic_examples PRIVATE  libecc    )
    target_compile_definitions(curve_basic_examples PRIVATE WITH_STDLIB USE_ASSERT_PRINT CURVE_BASIC_EXAMPLES )

    add_executable(curve_ecdh
        ${CMAKE_CURRENT_SOURCE_DIR}/src/examples/curve_ecdh.c

        )

#curve_ecdh.c
    target_link_libraries (curve_ecdh PRIVATE  libecc    )
    target_compile_definitions(curve_ecdh PRIVATE WITH_STDLIB USE_ASSERT_PRINT CURVE_ECDH )

