extends Label

func _ready():
	set_process(true)

func _process(_delta):
	var raw_time : int = 0
	var minutes : int = 0
	var seconds : int = 0
	var milliseconds : int = 0
	if Global.startTimer == true:
		raw_time = OS.get_ticks_msec() - Global.timerStartRaw;	
		minutes = (raw_time % 3600000) / 60000;
		seconds = ((raw_time % 3600000) % 60000) / 1000;
		milliseconds = ((raw_time % 3600000) % 60000) % 1000;
	var time_passed = "%02d : %02d : %03d" % [minutes,seconds,milliseconds]
	if Global.win == true:
		text = time_passed
		set_process(false)
	text = time_passed
