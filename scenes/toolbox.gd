extends HBoxContainer

@export var curTool:String
@export var toolinf:tool_info
signal camMoveVis(value)
signal  playMoveVis(value)

# Called when the node enters the scene tree for the first time.
func _ready():
	ToolManager.connect("toolget",toolgetcatch)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
		
	pass

func toolgetcatch(indx):
	get_children()[indx].visible=true
	get_child(7).visible=true
	if(indx==0):
		camMoveVis.emit(true)
	elif(indx==4):
		playMoveVis.emit(true)


func setCurTool(namet):
	curTool=namet
	#use a resource to store current tool.
	var chilsi=get_children()
	for i in range(0,chilsi.size()-1):
		print(i)
		if chilsi[i].toolName==namet:
			chilsi[i].active=true
			toolinf.curTool=i
		else:
			chilsi[i].active=false
			chilsi[i].icon=chilsi[i].mainImg
func remCurTool():
	curTool=""
	for i in get_children():
		i.active=false
		i.icon=i.mainImg
	toolinf.curTool=-1
