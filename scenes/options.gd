extends Control

signal menu_vis_changed(value)

var play_locked:=true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_option_button_item_selected(index):
	menu_vis_changed.emit(index)
	pass # Replace with function body.


func _on_closeoptions_pressed():
	visible=false
	pass # Replace with function body.
