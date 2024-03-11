extends Button

@export var toolName="NIL"
var active:bool
@export var mainImg:Texture2D

func _on_pressed():
	#get_parent().setCurTool("NIL")
	get_parent().remCurTool()
	pass # Replace with function body.
func deactivatee():
	pass
