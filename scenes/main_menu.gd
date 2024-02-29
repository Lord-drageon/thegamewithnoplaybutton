extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_optionsbutton_pressed():
	if($options.visible):
		$options.visible=false
	else:
		$options.visible=true
	pass # Replace with function body.


func _on_quitbutton_pressed():
	$quitconfirm.visible=true
	pass # Replace with function body.


func _on_options_menu_vis_changed(value):
	if(value==0):
		$std.visible=true
		$minimal.visible=false
	else:
		$std.visible=false
		$minimal.visible=true
		
	pass # Replace with function body.


func _on_quityes_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_quitno_pressed():
	$quitconfirm.visible=false
	pass # Replace with function body.
