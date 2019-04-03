#!/usr/bin/env python

#this node gives 2 way communication (1 channel in and 1 channel out) for godot TODO make it unlimited channels or extends based on people desires

import sys
import socket
import errno
import rospy

class GodotRosComm():
    # Must have __init__(self) function for a class, similar to a C++ class constructor.
    def __init__(self, udp_ip="127.0.0.1", udp_recv_port=2012, udp_send_port=1507):

        self.rate = 40.0 # This is set to match the forced fps of the godot game
        self.udp_ip = udp_ip
        self.udp_send_port = udp_send_port
        self.sock_send = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  # UDP

        self.sock_recv = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  # UDP
        self.sock_recv.bind((udp_ip, udp_recv_port))
        self.sock_recv.setblocking(0)

    def sendStrToGodot(self, msg_str):
        self.sock_send.sendto(msg_str.encode('utf-8'), (self.udp_ip, self.udp_send_port))

    def recvStrFromGodot(self):
        msg_string = "none"
        try:
            msg = self.sock_recv.recv(4096)
        except socket.error as e:
            err = e.args[0]
            if err == errno.EAGAIN or err == errno.EWOULDBLOCK:
                # do nothing, this is just a blocking message and we don't care
                pass
            else:
                # a "real" error occurred
                print(e)
                sys.exit(1)
        else:
            msg_string = msg.decode()
            rospy.logfatal("[GODOT ROS COOM] got a message from godot")
        return msg_string

