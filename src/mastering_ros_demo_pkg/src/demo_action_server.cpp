#include<actionlib/server/simple_action_server.h>
#include "mastering_ros_demo_pkg/Demo_actionAction.h"

class Demo_actionAction
{
actionlib::SimpleACtionServer<mastering_ros_demo_pkg::Demo_actionAction> as;
mastering_ros_demo_pkg::Demo_actionFeedback feedback;
mastering_ros_demo_pkg::Demo_actionResult result;

Demo_actionAction(std::string name):
	as(nh_,name,boost::bind(&Demo_actionAction::executeCB, this , _1),false), 
	action_name(name)
	as.registerPreemptCallback(boost::bind(&Demo_actionAction::preemptCB,this));
	void executeCB(const mastering_ros_demo_pkg::Demo_actionGoalConstPtr &goal)
	{
		if(!as.isActive() || as.isPreemptRequested()) return;

		for(progress = 0 ; progress < goal->count; progress++)
		{
			//Check for ros
			if(!ros::ok())
			{
				if(!as.isActive() || as.isPreemptRequested())
				{
					return;
				}

				if(goal->count == progress){
				result.final_count = progress;
				as.setSucceeded(result);
			}
		}
	}
	Demo_actionAction demo_action_obj(ros::this_node::getName());


