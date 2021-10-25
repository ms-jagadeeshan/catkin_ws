#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <iostream>
int main(int argc, char **argv)
{
	ros::init(argc, argv,"sensor_data_publisher");
	ros::NodeHandle node_obj;
	ros::Publisher distance_publisher = node_obj.advertise<std_msgs::Int32>("/distance",10);
	ros::Rate loop_rate(10);
	int distance=150;
	while (ros::ok())
	{
		std_msgs::Int32 msg;
		msg.data = distance;
		ROS_INFO("Publishing Distance from Wall: [%d]",msg.data);
		distance_publisher.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		--distance;
	}
	return 0;
}
