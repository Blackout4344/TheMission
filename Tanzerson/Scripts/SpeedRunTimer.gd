extends CanvasLayer



# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.bobby == false:
		hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.startTimer:
		Global.bobby = true
		show()
