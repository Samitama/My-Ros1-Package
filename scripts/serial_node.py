#!/usr/bin/env python3
import serial
import rospy
from std_msgs.msg import String

def main():
    rospy.init_node("serial")
    pub = rospy.Publisher("/ser_str",String,queue_size = 10)
    port = serial.Serial("/dev/ttyUSB0", 115200, timeout=1)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        msg = String()
        a = input("pini ac/kapa (1/0): ")
        if port.is_open:
            if a == "1":
                port.write(b'#|1|\n')
            if a == "0":
                port.write(b'#|0|\n')
        msg.data = a
        rospy.loginfo(msg)
        rate.sleep()

if __name__ == "__main__":
    main()