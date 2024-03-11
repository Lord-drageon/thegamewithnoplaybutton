extends Control

signal menu_vis_changed(value)

@export var tool_inf:tool_info
var play_locked:=true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_option_button_item_selected(index):
	menu_vis_changed.emit(index)
	pass # Replace with function body.


func _on_closeoptions_pressed():
	visible=false
	pass # Replace with function body.


func _on_playbuttonshow_pressed():
	if(tool_inf.curTool==6):
		$PanelContainer/vboxcontainer/playbuttonshow.icon==null
		$PanelContainer/vboxcontainer/playbuttonshow.text="show play button"
		$PanelContainer/vboxcontainer/playbuttonshow.button_pressed=false
		play_locked=false
	elif play_locked:
		$PanelContainer/vboxcontainer/playbuttonshow.button_pressed=false
	else:
		ToolManager.signal_getplaybutton()
	pass # Replace with function body.
