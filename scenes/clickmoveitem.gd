extends StaticBody3D
var restPosition:Vector3
var moveTime:=3.15
var moveMult:=1.0


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



func _on_input_event(camera, event, position, normal, shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			print("test-move object")
			if(moveTime>=PI):
				moveTime=0.0
	pass # Replace with function body.
