cmake_minimum_required (VERSION 3.10)
project (libecc_tests)


    add_executable(ec_self_tests
        ${CMAKE_CURRENT_SOURCE_DIR}/src/tests/ec_self_tests.c
        ${CMAKE_CURRENT_SOURCE_DIR}/src/tests/ec_self_tests_core.c
#        ${CMAKE_CURRENT_SOURCE_DIR}/src/tests/ec_utils.c
        )


    target_link_libraries (ec_self_tests PRIVATE  libecc    )
    target_compile_definitions(ec_self_tests PRIVATE WITH_STDLIB USE_ASSERT_PRINT USE_CRYPTOFUZZ VERBOSE_INNER_VALUES )
