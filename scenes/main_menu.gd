extends Control

signal cam_move(direction, amount)
signal player_forward()
var tooheavboxtime:=0.0
var safeshowtime:=0.0

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
		$std.mouse_filter=MOUSE_FILTER_STOP
	else:
		$std.visible=false
		$minimal.visible=true
		$std.mouse_filter=MOUSE_FILTER_PASS
	pass # Replace with function body.


func _on_quityes_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_quitno_pressed():
	$quitconfirm.visible=false
	pass # Replace with function body.


func _on_texture_rect_gui_input(event):
	pass # Replace with function body.


func _on_obj_tools_cam_move(direction, amount):
	cam_move.emit(direction,amount)
	pass # Replace with function body.


func _on_obj_tools_player_forward():
	player_forward.emit()
	pass # Replace with function body.

func _process(delta):
	if(tooheavboxtime>0.0):
		tooheavboxtime-=delta
	else:
		$tooheavybox.visible=false
	if(safeshowtime>0.0&&!$wrongsafebox.keepshow):
		safeshowtime-=delta/8.0
		
		$wrongsafebox.position.y=min(10000*sin(safeshowtime)-400,333)
	pass
	
func _ready():
	ToolManager.connect("tooheav",showtooheav)
	ToolManager.connect("wrongsafans",showwrongsafecode)
	ToolManager.connect("getplaybutton",getpbutton)
	pass
func showtooheav():
	print("tooheav")
	$tooheavybox.visible=true
	tooheavboxtime=2.0

func showwrongsafecode():
	print("wrsa3")
	safeshowtime=PI
	pass
func getpbutton():
	$std/playbutton.visible=true

func _on_playbutton_pressed():
	get_tree().quit()
	pass # Replace with function body.
