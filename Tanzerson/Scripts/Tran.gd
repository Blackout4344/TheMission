extends CanvasLayer




func _process(_delta):
	if Global.something == false:
		queue_free()

