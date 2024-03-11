extends Node
signal toolget(indx)
signal tooheav
signal wrongsafans
signal getplaybutton

func signal_emit_toolget(indx):
	toolget.emit(indx)

func signal_emit_tooheav():
	print("toohea")
	tooheav.emit()

func signal_emit_wrongsafe():
	print("wrsa2")
	wrongsafans.emit()

func signal_getplaybutton():
	getplaybutton.emit()
