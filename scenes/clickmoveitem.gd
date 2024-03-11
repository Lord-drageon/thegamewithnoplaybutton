extends StaticBody3D
class_name clickmoveitem

var restPosition:Vector3
var moveTime:=3.15
var moveMult:=1.0

@export var toolinf:tool_info

# Called when the node enters the scene tree for the first time.
func _ready():
	restPosition=global_position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(moveTime<PI):
		global_position.y=restPosition.y+sin(moveTime)*moveMult
		moveTime+=delta
	else:
		global_position=restPosition
	pass



func _on_input_event(_camera, event, _position, _normal, _shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			print("test-move object")
			#if tool is unselected; THEN movetime. otherwise a specific trait to the tool.
			#use a resource to track tool in use
			#print(toolinf.curTool)
			if(toolinf.curTool<0):
				if(moveTime>=PI):
					moveTime=0.0
			elif(toolinf.curTool==4):
				print("gorot")
				rotate_y(PI/12)
			else:
				#code dependant on current tool
				pass
	pass # Replace with function body.
