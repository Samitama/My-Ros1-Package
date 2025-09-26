#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist

class F710Teleop:
	def __init__(self):
		rospy.init_node("f710_teleop")

		self.joy_sub = rospy.Subscriber("/joy", Joy, self.joy_callback)
		
		self.vel_pub = rospy.Publisher("/f710/cmd_vel", Twist, queue_size=10)

		self.linear_scale = rospy.get_param("~linear_scale",1.0)
		self.angular_scale = rospy.get_param("~angular_scale", 1.0)
		self.turbo_mode = False

		rospy.loginfo("F710 Teleop baslatildi")
	
	def joy_callback(self, msg):
		twist = Twist()
		
		twist.linear.x = msg.axes[1] * self.linear_scale
		twist.linear.y = msg.axes[0] * self.linear_scale
		twist.angular.z = msg.axes[2] * self.angular_scale
		
		rt_value =  (msg.axes[5] + 1) / 2
		twist.linear.x *= rt_value
		
		if msg.buttons[0]:
			twist.linear.x = 0.0
			twist.linear.y = 0.0
			twist.angular.z = 0.0
			rospy.loginfo("Fren yapildi")

		if msg.buttons[1]:
			rospy.loginfo("Vites artti")
		if msg.buttons[2]:
			rospy.loginfo("1. Vites")
		if msg.buttons[3]:
			rospy.loginfo("2. Vites")

		self.vel_pub.publish(twist)
		
def main():
	teleop = F710Teleop()
	rospy.spin()

if __name__ == "__main__":
	main()
