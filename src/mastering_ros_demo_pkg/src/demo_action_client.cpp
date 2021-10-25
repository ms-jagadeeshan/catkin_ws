#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include "mastering_ros_demo_pkg/Demo_actionAction.h"actionlib::SimpleActionClient<mastering_ros_demo_pkg::Demo_actionAction>
ac("demo_action", true);
ac.waitForServer();
mastering_ros_demo_pkg::Demo_actionGoal goal;
goal.count = atoi(argv[1]);
ac.sendGoal(goal);
