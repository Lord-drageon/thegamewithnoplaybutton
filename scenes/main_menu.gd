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
	get_tree().quit()
	pass # Replace with function body.
