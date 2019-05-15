/******************************************************************************
 *                                                                            *
 * Copyright (C) 2017 Fondazione Istituto Italiano di Tecnologia (IIT)        *
 * All Rights Reserved.                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 * @file robotstatepublisher.h
 * @authors: Silvio Traversaro <silvio.traversaro@iit.it>
 */

#ifndef YARP_ROBOT_STATE_PUBLISHER_H
#define YARP_ROBOT_STATE_PUBLISHER_H

#include <vector>

#include <yarp/os/all.h>
#include <yarp/dev/PolyDriver.h>
#include <yarp/dev/IFrameTransform.h>

#include <iDynTree/Core/VectorDynSize.h>
#include <iDynTree/KinDynComputations.h>

#include <yarp/rosmsg/sensor_msgs/JointState.h>

class YARPRobotStatePublisherModule;

/****************************************************************/
class JointStateSuscriber: public yarp::os::Subscriber<yarp::rosmsg::sensor_msgs::JointState>
{
private:
    YARPRobotStatePublisherModule* m_module;

public:
    JointStateSuscriber();
    void attach(YARPRobotStatePublisherModule* module);
    using yarp::os::Subscriber<yarp::rosmsg::sensor_msgs::JointState>::onRead;
    virtual void        onRead(yarp::rosmsg::sensor_msgs::JointState &v);
};


/****************************************************************/
class YARPRobotStatePublisherModule : public yarp::os::RFModule
{
    double m_period;
    yarp::dev::PolyDriver       m_ddtransformclient;
    yarp::dev::IFrameTransform       *m_iframetrans;

    std::string m_tfPrefix;

    // Clock-related workaround
    bool m_usingNetworkClock;
    yarp::os::NetworkClock m_netClock;

    // Class for computing forward kinematics
   iDynTree::KinDynComputations m_kinDynComp;
   iDynTree::VectorDynSize m_jointPos;
   std::string m_baseFrameName;
   iDynTree::FrameIndex m_baseFrameIndex;
   yarp::sig::Matrix m_buf4x4;

   // Mutex protecting the method across the different threads
   yarp::os::Mutex m_mutex;

   // /JointState topic scruscriber
   yarp::os::Node*      m_rosNode;
   JointStateSuscriber* m_jointStateSubscriber;

   // String to check if the urdf model joints are greater or lower
   // than the number of joints streamed in joints_states topic
   std::string m_model_joints;

public:
    YARPRobotStatePublisherModule();
    bool configure(yarp::os::ResourceFinder &rf);
    bool close();
    double getPeriod();
    bool updateModule();
    virtual void        onRead(yarp::rosmsg::sensor_msgs::JointState &v);
};

#endif

