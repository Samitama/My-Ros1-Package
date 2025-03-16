#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <iostream>

int main(int argc, char **argv){
    ros::init(argc,argv,"turtle_control");
    ros::NodeHandle n;
    ros::Publisher turtle_pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",1000);

    if(ros::ok())
    {
	double x, y;
	std::cout << "X ekseni icin deger giriniz: ";
	std::cin >> x;
	std::cout << "Y ekseni icin deger giriniz: ";
	std::cin >> y;

        geometry_msgs::Twist cmd;
        cmd.linear.x = x;
	cmd.linear.y = 0.0;
        ROS_INFO("Positions of X : [%0.2f]",cmd.linear.x);
        turtle_pub.publish(cmd);
        ros::spinOnce();
        ros::Duration(1.0).sleep();

	cmd.linear.x = 0.0;
	cmd.linear.y = y;
	ROS_INFO("Positions of Y : [%0.2f]",cmd.linear.y);
	turtle_pub.publish(cmd);
	ros::spinOnce();
	ros::Duration(1.0).sleep();
    }
    return 0;
}
