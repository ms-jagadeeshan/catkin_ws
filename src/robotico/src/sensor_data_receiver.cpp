#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "robotico/string_msg.h"
#include <iostream>

int distance_limit = 75;
class subsAndClient
{
private:
	ros::NodeHandle node_obj;
	ros::ServiceClient client;
	ros::Subscriber distance_subscriber;
public:
	subsAndClient()
	{
		distance_subscriber = node_obj.subscribe("/distance", 10, &subsAndClient::distance_callback, this);
		client = node_obj.serviceClient<robotico::string_msg>("warning_server");
	}
	void warning(int distance)
	{
		robotico::string_msg srv;
		if (distance <= distance_limit)
		{
			std::stringstream ss;
			ros::ServiceClient client = node_obj.serviceClient<robotico::string_msg>("warning_server");
			ss << "Warning: Stop the rover, there is wall in front";
			srv.request.in = ss.str();
			if (client.call(srv))
			{
				ROS_INFO("Sending warning to warning service");
			}
			else
			{
				ROS_ERROR("Failed to call service");
			}
		}
	}


	void distance_callback(const std_msgs::Int32::ConstPtr& msg)
	{
		this->warning(msg->data);
		ROS_INFO("Distance from Wall received from publisher : %d", msg->data);
	}
};


int main(int argc, char** argv) {
	ros::init(argc, argv, "sensor_data_receiver");
	subsAndClient sc1;

	ros::spin();
	return 0;
}
