extends Polygon2D

var use_keyboard = false
var rotation_speed = 0.01
var forward_speed = 1.0
var past_first_block = false  #used for final instructions (i.e. stop)

func _ready():
	position.x = 550
	position.y = 550
	rotation = PI

func _process(delta):
	if use_keyboard:
		var inpx = (int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")))
		var inpy = (int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
		var angle  = rotation-PI/2
		var projected_x = position.x + forward_speed*inpy*cos(angle)
		var projected_y = position.y + forward_speed*inpy*sin(angle)
		if projected_x < 1012 and projected_x > 0 and projected_y < 1012 and projected_y > 0:
			position.x = projected_x
#		if projected_y < 1028 and projected_y > 0:
			position.y = projected_y
#
#		position.x += forward_speed*inpy*cos(angle)
#		position.y += forward_speed*inpy*sin(angle)
		rotation += rotation_speed*inpx
		pass
	else:
		var cmd_str  = get_node('../godot2ros').get_message()
		print(cmd_str)
		if cmd_str == 'none yet':
			pass
		else:
			var split_cmd = cmd_str.split_floats(',')
			#pixel space inverts things (reasons for the negatives)
			var om = -rotation_speed*split_cmd[0]
			var v = -split_cmd[1]
			rotation += om
			var angle  = rotation-PI/2
			position.x += v*cos(angle)
			position.y += v*sin(angle)
	send_odom_to_ros()

func send_odom_to_ros():
	var odom_str = str(position.x) + ',' + str(position.y) + ',' + str(rotation)
	get_node('../godot2ros').send_msg_to_ros(odom_str)
	

func wrap_pi(angle):
	while angle < -PI:
		angle += 2*PI
	
	while angle > PI:
		angle -= 2*PI
	return angle		
		
