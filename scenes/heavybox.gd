extends clickmoveitem


func _on_input_event(_camera, event, _position, _normal, _shape_idx):
	
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			if(toolinf.curTool==3):
				if(moveTime>=PI):
					moveTime=0.0
			else:
				print("sta")
				ToolManager.signal_emit_tooheav()
