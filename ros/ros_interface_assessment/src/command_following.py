#!/usr/bin/env python

from godot_ros_comm import GodotRosComm
from sensor_msgs.msg import Joy
from std_msgs.msg import String
from nuric_system.msg import LowLevelCommand  #TODO make generic

import roslib
import rospy
from math import pi
from random import shuffle 

class commandFollow(GodotRosComm):
    def __init__(self):
        GodotRosComm.__init__(self)

        self.initializeSubscribers()
        self.initializePublishers()

        #member variables that shouldn't need tuning
        self.start = False
        self.pause = True
        self.issue_command = False
        self.turn = 0
        self.pause_start = rospy.get_time()
        self.command_start = rospy.get_time()
        self.last_key = 'initialize'

        input_method = rospy.get_param('~interface')
        if input_method == 'JOY': 
            self.commands = {0:['0.0', 2.5], 1:['0.0', 4.8], 2:['0.0', 2.3], 3:['0.0', 1.8], 4:['0.0', 1.43], 5:['0.0', 1.87], 6:[str(pi/4), 1.93], 7:[str(pi/4), 1.4], 8:[str(pi/4), 1.36], 9:[str(pi/4), 2.8], 10:[str(pi/2), 2.6], 11:[str(pi/2), 3], 12:[str(pi/2), 4.1], 13:[str(pi/2), 2.93], 14:[str(pi/2), 3.7], 15:[str(pi/2), 2.1], 16:[str(pi/2), 3], 17:[str(pi/2), 1.8], 18:[str(pi/2), 3.96], 19:[str(pi/2), 4.7], 20:[str(pi/2), 6.4], 21:[str(pi/2), 1.64], 22:[str(pi/2), 7.2], 23:[str(pi/2), 1.8], 24:[str(pi/2), 3.5], 25:[str(pi/2), 1.9], 26:[str(3*pi/4), 1.62], 27:[str(3*pi/4), 2], 28:[str(3*pi/4), 1.42], 29:[str(3*pi/4), 3.15], 30:[str(pi), 1.5], 31:[str(pi), 5.7], 32:[str(pi), 6], 33:[str(pi), 1.3], 34:[str(pi), 2.7], 35:[str(pi),2.6], 36:[str(pi),1.4], 37:[str(pi), 2], 38:[str(5*pi/4), 3.7], 39:[str(3*pi/2), 2.3], 40:[str(3*pi/2), 3.2], 41:[str(7*pi/4), 1.15], 42:['0.0', 5.2], 43:[str(pi/4), 2.3], 44:[str(3*pi/4),2.13], 45:[str(5*pi/4), 3.5]}
        elif input_method == 'HA':
            self.commands = {0:['0.0', 5.92], 1:['0.0', 4.8], 2:['0.0', 2.3], 3:['0.0', 10.3], 4:['0.0', 3.4], 5:['0.0', 7.08], 6:[str(pi/4), 1.83], 7:[str(pi/4), 2.9], 8:[str(pi/2), 3.4], 9:[str(pi/2), 3], 10:[str(pi/2), 2.1], 11:[str(pi/2), 4.08], 12:[str(pi/2), 3.7], 13:[str(pi/2), 6.3], 14:[str(pi/2), 3], 15:[str(pi/2), 2.8], 16:[str(pi/2), 7.76], 17:[str(pi/2), 4.7], 18:[str(pi/2), 2.4], 19:[str(pi/2), 3.64], 20:[str(pi/2), 2.7], 21:[str(pi/2), 5.8], 22:[str(pi/2), 3.5], 23:[str(pi/2), 1.9], 24:[str(3*pi/4), 3.31], 25:[str(3*pi/4), 2.16], 26:[str(3*pi/4), 4.7], 27:[str(3*pi/4), 1.9], 28:[str(pi), 2.5], 29:[str(pi), 5.7], 30:[str(pi), 4.6], 31:[str(pi), 1.6], 32:[str(pi), 2.7], 33:[str(pi),2.4], 34:[str(pi),1.42], 35:[str(pi), 1.9], 36:[str(5*pi/4), 3.7], 37:[str(3*pi/2), 2.3], 38:[str(3*pi/4), 3.2], 39:[str(7*pi/4), 2.15]}
        elif input_method == 'SNP':
            self.commands = {0:['0.0', 5.32], 1:['0.0', 8.63], 2:['0.0', 4.6], 3:['0.0', 12.24], 4:['0.0', 4.2], 5:['0.0', 12.48], 6:['0.0', 7.64], 7:['0.0', 7.16], 8:['0.0', 6.5], 9:['0.0', 5.3], 10:['0.0', 10.47], 11:['0.0', 5.5], 12:[str(pi/2), 9.11], 13:[str(pi/2), 5.03], 14:[str(pi/2), 7.04], 15:[str(pi/2), 12.6], 16:[str(pi/2), 11.4], 17:[str(pi/2), 4.6], 18:[str(pi/2), 7.2], 19:[str(pi/2), 5.24], 20:[str(pi/2), 3.3], 21:[str(pi/2), 6.4], 22:[str(pi/2), 9.3], 23:[str(pi), 6.4], 24:[str(pi), 11.4], 25:[str(pi), 5.2], 26:[str(pi), 4.7], 27:[str(pi), 7.04], 28:[str(pi), 10.67], 29:[str(3*pi/2), 4.6], 30:[str(3*pi/2), 8.2], 31:[str(3*pi/2), 10.6], 32:[str(3*pi/2), 5.6], 33:[str(3*pi/2), 7.15]}
       
        #TUNABLE PARAMETERS
        self.pause_time = 0    # seconds
        self.turn_limit = 1    # number of times each command is issued before shutting down
        self.num_keys = list(range(1,len(self.commands)))
        shuffle(self.num_keys)

        # Main while loop.
        while not rospy.is_shutdown():
            if self.rate:
                if (self.start):
                    self.sendCommands()
                else:
                    self.checkGameStart()
                rospy.sleep(1/self.rate)
            else:
                rospy.sleep(1.0)
            if self.turn == self.turn_limit:
                break

    def initializePublishers(self):
        self.command_pub = rospy.Publisher('commands_to_follow', String)

    def initializeSubscribers(self):
        self.joy_throttled_sub_ = rospy.Subscriber('joy_throttled', LowLevelCommand, self.joyThrottledCallback)

    def sendCommands(self):
        time_now = rospy.get_time()

        if self.pause:
            if time_now - self.pause_start > self.pause_time:
                self.issue_command = True
                self.pause = False
                while self.commands[self.num_keys[0]][0] == self.last_key and len(self.num_keys) > 2: 
                    shuffle(self.num_keys)
                self.command_pub.publish(self.commands[self.num_keys[0]][0])
                self.sendStrToGodot("c:"+self.commands[self.num_keys[0]][0])
                self.command_start = time_now

        if self.issue_command:
            if time_now - self.command_start > self.commands[self.num_keys[0]][1]:
                self.issue_command = False
                self.pause = True
                self.sendStrToGodot('pause')
                self.command_pub.publish('pause')
                self.last_key = self.commands[self.num_keys[0]][0]
                rospy.loginfo("key: %s", self.last_key)
                self.num_keys.pop(0)

                if len(self.num_keys) == 0:
                    self.num_keys = list(range(1,len(self.commands)))
                    shuffle(self.num_keys)
                    self.turn += 1      
                    rospy.loginfo("turn  %i out of %i", self.turn, self.turn_limit)
                # should have sent pause already so we know it's done at turn_limit
                self.pause_start = time_now

    def joyThrottledCallback(self, msg):
        angular_scale = 1.0/0.4
        linear_scale = 1.0/0.352
        msg_str = str(msg.command.angular.z*angular_scale) + "," + str(msg.command.linear.x*linear_scale)
        self.sendStrToGodot(msg_str)
    
    #helpers
    def checkGameStart(self):
        msg_str = self.recvStrFromGodot()
        if msg_str == 'start':
            self.start = True

# Main function.
if __name__ == '__main__':
    # Initialize the node and name it.
    rospy.init_node('command_follow')
    # Go to class functions that do all the heavy lifting. Do error checking.
    try:
        traj_follow = commandFollow()

    except rospy.ROSInterruptException:
        pass
