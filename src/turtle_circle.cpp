#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char** argv){
	ros::init(argc,argv,"turtle_circle");
	ros::NodeHandle nh;
	ros::Publisher turtle_pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
	ros::Rate rate(1);

	while(ros::ok()){
		geometry_msgs::Twist cmd;
		cmd.linear.x = 1.4;
		cmd.angular.z = 1.0;
		ROS_INFO("Positions : [%0.2f, %0.2f]", cmd.linear.x,cmd.angular.z);
		turtle_pub.publish(cmd);
		ros::spinOnce();
		rate.sleep();
	}
	return 0;
}
