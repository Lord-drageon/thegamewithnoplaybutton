extends Panel

var keepshow:=false
var rotatefall:=false
var fallspd:=0.0
@export var tool_inf:tool_info

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(rotatefall&&$TextureRect2.position.y<9999):
		fallspd+=0.7
		$TextureRect2.position.y+=fallspd
		$TextureRect2.rotation+=0.05
	pass


func _on_texture_rect_3_gui_input(event):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			if(tool_inf.curTool==1):
				$TextureRect3.visible=false
				keepshow=true
				pass
	pass # Replace with function body.


func _on_texture_rect_2_gui_input(event):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			if(tool_inf.curTool==5):
				rotatefall=true
				fallspd=-7.2
	pass # Replace with function body.
