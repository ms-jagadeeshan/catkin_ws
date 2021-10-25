#include<ros/ros.h>

int main (int argc, char**argv)
{
	int count=0;
	ros::init(argc,argv,"simple_node");
	ros::NodeHandle nh;
	ros::Rate loop_rate(10);

	while(ros::ok())
	{	
		ROS_INFO("simple node. count=%d",count);
		ros::spinOnce();
		count++;
		loop_rate.sleep();
	}
}
