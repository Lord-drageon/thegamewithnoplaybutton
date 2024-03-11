extends StaticBody3D

@export var ratio:= 0.5#0-full left, 1-full right
@export var lweight:=0.0
@export var rweight:=0.0
@export var toolinf:ToolInfo
@export var stiffness=200

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(ratio>0&&lweight>rweight):
		ratio-=(lweight-rweight)/stiffness
	if(ratio<1.0&&rweight>lweight):
		ratio-=(lweight-rweight)/stiffness
	$rightarm.position.y=1.5*(1-ratio)-1
	$leftarm.position.y=1.5*(ratio)-1
	pass


func _on_rightarm_input_event(camera, event, position, normal, shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			if($rightarm/Sprite3D.visible):
				$rightarm/Sprite3D.visible=false
				rweight=0.0
			elif(toolinf.curTool==2):
				$rightarm/Sprite3D.visible=true
				rweight=100.0
	pass # Replace with function body.
