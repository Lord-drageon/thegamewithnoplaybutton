extends clickmoveitem


func _on_input_event(_camera, event, _position, _normal, _shape_idx):
	if(event is InputEventMouseButton):
		if(event.button_index==MOUSE_BUTTON_LEFT):
			if(toolinf.curTool==1):
				$MeshInstance3D.visible=false;
				for i in get_children():
					if i is CollisionShape3D:
						i.disabled=true
				#cut the string
			else:
				
				super(_camera, event, _position, _normal, _shape_idx)
