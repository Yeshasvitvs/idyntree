# Copyright: 2015 Fondazione Istituto Italiano di Tecnologia
# Author: Silvio Traversaro
# CopyPolicy: Released under the terms of the GNU GPL v2.0.
#

cmake_minimum_required(VERSION 2.8.11)

project(fixedBaseGravityCompensation)

find_package(YARP REQUIRED)
find_package(iDynTree REQUIRED)

set(folder_source main.cpp)

source_group("Source Files" FILES ${folder_source})

add_executable(${PROJECT_NAME} ${folder_source})

target_link_libraries(${PROJECT_NAME} ${YARP_LIBRARIES}
                                     ${iDynTree_LIBRARIES})


