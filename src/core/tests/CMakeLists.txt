macro(add_unit_test classname)
    set(testsrc ${classname}UnitTest.cpp)
    set(testbinary ${classname}UnitTest)
    set(testname   UnitTest${classname})
    add_executable(${testbinary} ${testsrc})
    target_include_directories(${testbinary} PRIVATE ${EIGEN3_INCLUDE_DIR})
    target_link_libraries(${testbinary} idyntree-core)
    add_test(NAME ${testname} COMMAND ${testbinary})

    if(IDYNTREE_RUN_VALGRIND_TESTS)
        add_test(NAME memcheck_${testname} COMMAND ${MEMCHECK_COMMAND_COMPLETE} ./${testbinary})
    endif()
endmacro()

add_unit_test(Axis)
add_unit_test(Direction)
add_unit_test(PrivateUtils)
add_unit_test(SpatialAcc)
add_unit_test(SpatialInertia)
add_unit_test(ArticulatedBodyInertia)
add_unit_test(Twist)
add_unit_test(Wrench)
add_unit_test(ExpLog)
add_unit_test(VectorDynSize)
add_unit_test(MatrixDynSize)
