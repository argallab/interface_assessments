#!/usr/bin/env python

from godot_ros_comm import GodotRosComm
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Point
from nuric_system.msg import LowLevelCommand   #TODO make generic

import roslib
import rospy

class trajFollow(GodotRosComm):
    def __init__(self):
        GodotRosComm.__init__(self)
        self.initializeSubscribers()
        self.initializePublishers()

    # Main while loop.
        while not rospy.is_shutdown():
            #self.sendStrToGodot("some message I want the godot gods to read")
            #ex_str = self.recvStrFromGodot()
            #print("[GODOT ROS COOM] yay godot gods got back to me and said...." + ex_str)
            # Sleep for a while before publishing new messages. Division is so rate != period.
            self.getOdom()

            if self.rate:
                rospy.sleep(1/self.rate)
            else:
                rospy.sleep(1.0)

    def initializePublishers(self):
        self.pixel_odom_pub = rospy.Publisher('traj_follow_odom', Point)

    def initializeSubscribers(self):
        self.joy_sub_ = rospy.Subscriber('joy_throttled', LowLevelCommand, self.joyCallback)

    # callbacks
    def joyCallback(self, msg):
        angular_scale = 1.0/0.4
        linear_scale = 1.0/0.352
        msg_str = str(msg.command.angular.z*angular_scale) + \
            "," + str(msg.command.linear.x*linear_scale)
        self.sendStrToGodot(msg_str)

    # helpers
    def getOdom(self):
        odom_str = self.recvStrFromGodot()
        rospy.logfatal(odom_str)
        if odom_str != 'none':
            odom_str = odom_str.split(',')
            x = float(odom_str[0])
            y = float(odom_str[1])
            theta = float(odom_str[2])
            odom_msg = Point(x,y,theta)
            self.pixel_odom_pub.publish(odom_msg)
            self.bool_user_has_control = True; 

# Main function.
if __name__ == '__main__':
    # Initialize the node and name it.
    rospy.init_node('traj_follow')
    # Go to class functions that do all the heavy lifting. Do error checking.
    try:
        traj_follow = trajFollow()

    except rospy.ROSInterruptException: pass
