extends Control
signal cam_move(direction, amount)
const cam_move_amount=PI/10.0
signal player_forward()



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


func _on_toolbox_cam_move_vis(value):
	$cameratool.visible=value
	pass # Replace with function body.


func _on_toolbox_play_move_vis(value):
	$moveTool.visible=value
	pass # Replace with function body.
