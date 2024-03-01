extends Control
signal cam_move(direction, amount)
const cam_move_amount=5.0
signal player_forward()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cam_up_pressed():
	cam_move.emit(1,cam_move_amount)
	pass # Replace with function body.


func _on_cam_left_pressed():
	cam_move.emit(2,cam_move_amount)
	pass # Replace with function body.


func _on_cam_down_pressed():
	cam_move.emit(3,cam_move_amount)
	pass # Replace with function body.


func _on_cam_right_pressed():
	cam_move.emit(0,cam_move_amount)
	pass # Replace with function body.


func _on_move_tool_pressed():
	player_forward.emit()
	pass # Replace with function body.
