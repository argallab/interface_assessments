extends Polygon2D

var follow_color = Color(0.1,.9,.05)
var off_color = Color(1,1,1)
var color_dict = {-1: off_color, 1: follow_color}  

onready var godot2ros_node = get_node("../Godot2Ros")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	get_node("../Button").connect("pressed",self,"on_start_button")

func _process(delta):
	var msg = godot2ros_node.get_message()
	if msg == 'pause':
		pause()  #overkill at the moment, but old version needed more than hide so keeping for consistency
	elif len(msg.split(":")) ==2:
		var c_angle = float(msg.split(":")[1])
		rotation = c_angle
		print(msg)
		print(msg.split(":"))
		print(msg.split(":")[1])
		show()
	elif msg != 'none yet':
		print(msg)
		var arrow_node = get_node("../ArrowFeedback")
		var split_cmd = msg.split_floats(',')
		#pixel space inverts things (reasons for the negatives)
		var om = split_cmd[0]
		var v = split_cmd[1]
		if om == 0 and v == 0:
			print("hide")
			arrow_node.hide()
		else:
			arrow_node.show()
			var angle
			if v == 0:
				if om >0:
					angle = -PI/2
				else:
					angle = PI/2	
			else:
				angle = -atan(om/v)
				if v < 0:
					angle += PI
			arrow_node.rotation = angle

func on_start_button():
	var start_str = "start"
	godot2ros_node.send_msg_to_ros(start_str)
	get_node("../Button").hide()
	print("started")
	
func pause():
	hide()
	