#!/usr/bin/env python3
import serial
import rospy
from std_msgs.msg import String

class SerialNode():
    def __init__(self):
        rospy.init_node("serial")
        self.pub = rospy.Publisher("/ser_str", String, queue_size=10)
        self.port = serial.Serial("/dev/ttyUSB0", 115200, timeout=1)
        self.rate = rospy.Rate(1)
        rospy.loginfo("Serial Node baslatildi")

    def serial_com(self):
        msg = String()
        while not rospy.is_shutdown():
            a = input("pin ac/kapa (1/0): ")
            if self.port.is_open:
                if a == "1":
                    self.port.write(b'#|1|\n')
                if a == "0":
                    self.port.write(b'#|0|\n')
            msg.data = a
            rospy.loginfo(msg)
            self.pub.publish(msg)
            self.rate.sleep()

def main():
    Serial = SerialNode()
    Serial.serial_com()

if __name__ == "__main__":
    main()