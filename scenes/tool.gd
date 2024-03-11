extends Button
class_name  tool

@export var hoverImg:Texture2D
@export var mainImg:Texture2D
@export var toolName:String
@export var active:bool

func _ready():
	icon=mainImg
	pass

func _on_focus_entered():
	icon=hoverImg
	pass # Replace with function body.


func _on_focus_exited():
	if(!active):
		icon=mainImg
	pass # Replace with function body.

func deactivatee():
	icon=mainImg

func _on_pressed():
	get_parent().setCurTool(toolName)
	pass # Replace with function body.

