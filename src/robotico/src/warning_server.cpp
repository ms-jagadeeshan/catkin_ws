#include "ros/ros.h"
#include "robotico/string_msg.h"
#include <iostream>
#include <sstream>
#define FT_B_RED "\x1B[1;31m"
#define FT_NRM "\x1B[0m"
using namespace std;
bool warning_server_callback(robotico::string_msg::Request &req,
robotico::string_msg::Response &res) {
std::stringstream ss;
ss << "Received Here";
res.out = ss.str();
ROS_INFO(FT_B_RED"%s"FT_NRM,req.in.c_str());
return true;
}
int main(int argc, char **argv)
{
ros::init(argc, argv, "warning_server");
ros::NodeHandle n;
ros::ServiceServer service = n.advertiseService("warning_server",
warning_server_callback);
ros::spin();
return 0;
}
