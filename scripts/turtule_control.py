#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

def pose_callback(pose:Pose):
    cmd = Twist()
    if pose.x > 9.0 or pose.x < 2.0 or pose.y > 9.0 or pose.y < 2.0:
        cmd.linear.x = 1.0
        cmd.angular.z = 0.7
    else :
        cmd.linear.x = 5.0
        cmd.angular.z = 0.0
    rospy.loginfo(f"Pose: {pose.x}, {pose.y}")
    pub.publish(cmd)

if __name__ == "__main__":
    rospy.init_node("turtle_controller")
    pub = rospy.Publisher("/turtle1/cmd_vel",Twist, queue_size=10)
    sub = rospy.Subscriber("/turtle1/pose", Pose,callback=pose_callback)
    rospy.loginfo("Node has started")
    rospy.spin()

