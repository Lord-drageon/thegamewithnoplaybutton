extends HBoxContainer

@export var curTool:String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func setCurTool(name):
	curTool=name
	for i in get_children():
		if i.toolName==name:
			i.active=true
		else:
			i.active=false
			i.icon=i.mainImg
