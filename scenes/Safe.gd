extends Node3D
var curKeycode=[0,0,0,0,0,0]
var correctKey=[1,5,3,7,4,3]
var open:=false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(open):
		global_rotation.y=90.0
	pass


func _on_static_body_3d_input_event(camera, event, position, normal, shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT&&event.pressed):
			var digs=$"gamenoplay-safedoor".get_children()
			
			for i in range(2,8):
				if(digs[i] is StaticBody3D):
					curKeycode[i-2]=digs[i].indx
			print(curKeycode)
			if(curKeycode!=correctKey):
				print("wrsa1")
				ToolManager.signal_emit_wrongsafe()
			else:
				open=true
	pass # Replace with function body.
