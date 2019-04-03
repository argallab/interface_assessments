## use this node to interact with ros
## add the godot_ros_interface pkg to ros and run the godot_ros_comm.py node
## attach this node to another node and use functions get_message() and send_message_to_ros() as interfaces from other nodes

extends Node

# class member variables
var PORT_RECV = 1507
var PORT_SEND = 2012 								# whoop class of 2012
var IP_SERVER = "127.0.0.1"
var socketUDP_recv = PacketPeerUDP.new()
var socketUDP_send = PacketPeerUDP.new()

var latest_msg = "none yet"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	start_server()
	socketUDP_send.set_dest_address(IP_SERVER,PORT_SEND)

func _process(delta):
	get_messages_from_ros()

func start_server():
    if (socketUDP_recv.listen(PORT_RECV, IP_SERVER) != OK):
        printt("Error listening on port: " + str(PORT_RECV))
    else:
        printt("Listening on port: " + str(PORT_RECV))

func get_messages_from_ros():
	if socketUDP_recv.get_available_packet_count() > 0:
		print("packet count sufficient")
		var array_bytes = socketUDP_recv.get_packet()
		latest_msg = array_bytes.get_string_from_utf8()
		
func get_message():   #func for other nodes to interact with the msg
	return latest_msg
	
func send_msg_to_ros(str_msg):
	var pac = str_msg.to_utf8()
	socketUDP_send.put_packet(pac)
	print("sent message to ros")

func _exit_tree():
    socketUDP_recv.close()


