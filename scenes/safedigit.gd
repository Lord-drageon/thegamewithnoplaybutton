extends Node3D
var indx=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_event(camera, event, position, normal, shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT&&event.pressed):
			
			rotate_z(PI/5.0)
			indx=(indx+1)%10
	pass # Replace with function body.
