# Copyright: (C) 2015 Fondazione Istituto Italiano di Tecnologia
# Authors: Silvio Traversaro
# CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

project(iDynTree_ICUB CXX)

SET(iDynTree_ICUB_source src/skinDynLibConversions.cpp)

SET(iDynTree_ICUB_header include/iDynTree/iCub/skinDynLibConversions.h)

SOURCE_GROUP("Source Files" FILES ${iDynTree_ICUB_source})
SOURCE_GROUP("Header Files" FILES ${iDynTree_ICUB_header})

include(AddInstallRPATHSupport)
add_install_rpath_support(BIN_DIRS "${CMAKE_INSTALL_PREFIX}/bin"
                          LIB_DIRS "${CMAKE_INSTALL_PREFIX}/lib"
                          DEPENDS IDYNTREE_ENABLE_RPATH
                          USE_LINK_PATH)


add_library(idyntree-icub ${iDynTree_ICUB_source} ${iDynTree_ICUB_header})

# share headers with all iDynTree targets
set_property(GLOBAL APPEND PROPERTY IDYNTREE_TREE_INCLUDE_DIRS "${CMAKE_CURRENT_SOURCE_DIR}/include")
get_property(IDYNTREE_TREE_INCLUDE_DIRS GLOBAL PROPERTY IDYNTREE_TREE_INCLUDE_DIRS)

set_target_properties(idyntree-icub PROPERTIES PUBLIC_HEADER "${iDynTree_ICUB_header}")


target_include_directories(idyntree-icub PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include;${IDYNTREE_TREE_INCLUDE_DIRS}>"
                                                "$<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}>")

target_link_libraries(idyntree-icub LINK_PUBLIC skinDynLib idyntree-core idyntree-model idyntree-yarp idyntree-estimation)

target_include_directories(idyntree-icub INTERFACE ${skinDynLib_INCLUDE_DIRS})

include_directories(SYSTEM ${skinDynLib_INCLUDE_DIRS})

install(TARGETS idyntree-icub
        EXPORT iDynTree
        RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}" COMPONENT bin
        LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT shlib
        ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT lib
        PUBLIC_HEADER DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/iDynTree/iCub" COMPONENT dev)

set_property(GLOBAL APPEND PROPERTY ${VARS_PREFIX}_TARGETS idyntree-icub)

set_property(GLOBAL APPEND PROPERTY IDYNTREE_TREE_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include)

