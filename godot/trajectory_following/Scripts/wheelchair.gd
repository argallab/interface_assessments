extends Polygon2D

var use_keyboard = false
var rotation_speed = 0.01
var forward_speed = 1.0
var past_first_block = false  #used for final instructions (i.e. stop)

func _ready():
	position.x = 550
	position.y = 550
	rotation = PI
	get_node('../curved_path').hide()

func _process(delta):
	if use_keyboard:
		var inpx = (int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")))
		var inpy = (int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
		var angle  = rotation-PI/2
		position.x += forward_speed*inpy*cos(angle)
		position.y += forward_speed*inpy*sin(angle)
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
	change_display_directions()
	send_odom_to_ros()

func send_odom_to_ros():
	var odom_str = str(position.x) + ',' + str(position.y) + ',' + str(rotation)
	get_node('../godot2ros').send_msg_to_ros(odom_str)
	
func change_display_directions():
	var bot_y = 550
	var right_x = 550
	var left_x = 50
	var top_y = 50
	var pos_tol = 40
	var rot_tol = 10*PI/180
	var up_heading = PI
	var left_heading = PI/2
	var right_heading = -PI/2
	var down_heading = 0
	var rot = wrap_pi(rotation)
	print(position.x)
	print(position.y)
	# FIRST TURN BLOCK
	if position.x < (right_x-left_x)/2:
		past_first_block = true
	if abs(position.x - right_x) <pos_tol and abs(position.y-top_y) <pos_tol and abs(up_heading - abs(rot)) < rot_tol :   #the abs(rot) only needed for up_heading
		$direction_arrow.rotation = -PI/2
		$Camera2D/direction_label.text = "Left"
	if abs(position.x - right_x) <pos_tol and abs(position.y-top_y) <pos_tol and abs(left_heading - rot) < rot_tol :
		$direction_arrow.rotation = 0
		$Camera2D/direction_label.text = "Forward"
		#past_first_block = true
	# SECOND TURN BLOCK
	if abs(position.x - left_x) <pos_tol and abs(position.y-top_y) <pos_tol and abs(left_heading - rot) < rot_tol :
		$direction_arrow.rotation = PI/2
		$Camera2D/direction_label.text = "Right"
	if abs(position.x - left_x) <pos_tol and abs(position.y-top_y) <pos_tol and abs(up_heading - abs(rot)) < rot_tol :
		$direction_arrow.rotation = -PI
		$Camera2D/direction_label.text = "Backward"
	## 3rd TURN BLOCK
	if abs(position.x - left_x) <pos_tol and abs(position.y-bot_y) <pos_tol and abs(up_heading - abs(rot)) < rot_tol :
		$direction_arrow.rotation = -PI/2
		$Camera2D/direction_label.text = "Left"
	if abs(position.x - left_x) <pos_tol and abs(position.y-bot_y) <pos_tol and abs(left_heading - rot) < rot_tol :
		$direction_arrow.rotation = -PI
		$Camera2D/direction_label.text = "Backward"	
	## FINAL BLOCK
	if abs(position.x - right_x) <pos_tol and abs(position.y-bot_y) <pos_tol and abs(left_heading - rot) < rot_tol :
		$direction_arrow.rotation = PI/2
		$Camera2D/direction_label.text = "Right"
	if (past_first_block):
		if abs(position.x - right_x) <pos_tol and abs(position.y-bot_y) <pos_tol and abs(up_heading - abs(rot)) < rot_tol :
			$direction_arrow.hide()
			$Camera2D/direction_label.text = "Follow path"
			get_node('../curved_path').show()
			get_node('../path').hide()
#			get_node('../path/turn2').hide()
#			get_node('../path/turn3').hide()
#			get_node('../path/turn4').hide()
			
		if abs(position.x - 2200) < pos_tol and abs(position.y-550) < pos_tol:
			$Camera2D/direction_label.text = "Done"

func wrap_pi(angle):
	while angle < -PI:
		angle += 2*PI
	
	while angle > PI:
		angle -= 2*PI
	return angle		
		
