extends StaticBody3D

@export var texex:Texture2D
@export var indx:int
@export var ToolInfo:ToolInfo


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite3D.texture=texex
	pass # Replace with function body.


func _on_input_event(camera, event, position, normal, shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			visible=false
			print("grabbed "+str(indx))
			#add tool name to available tools
			ToolInfo.tools[indx]=1
			ToolManager.signal_emit_toolget(indx)
	pass # Replace with function body.
