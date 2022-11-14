extends Label


var time : int
var timer_on = false

func _process(delta):
	if Global.startTimer:
		time += delta
		text = var2str(time)	
