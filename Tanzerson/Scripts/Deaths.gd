extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


func _process(_delta):
	$Label.text = var2str(Global.deaths)
	if Global.win == true:
		show()

