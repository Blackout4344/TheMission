extends Control

var bob = false
var jeff = false

func _ready():
	$ColorRect.hide()
	$Button.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	$Button5.hide()
	$Button6.hide()
	$Button7.hide()
	$Button8.hide()
	$CheckBox.hide()
	$CheckBox2.hide()
func _process(_delta):
	if Global.LvSelect == true and bob == false:
		$ColorRect.show()
		$Button.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$Button5.show()
		$Button6.show()
		$Button7.show()
		$Button8.show()
		$CheckBox.show()
		$CheckBox2.show()

func _on_Button_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()


func _on_Button2_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(6026,-2421))
	Global.spawn_point = Vector2(6026,-2421)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()
	
func _on_Button3_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(-358,-5422))
	Global.spawn_point = Vector2(-358,-5422)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()


func _on_Button4_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(6252,-7518))
	Global.spawn_point = Vector2(6252,-7518)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()
	
func _on_Button5_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(6154.4,-10975.5))
	Global.spawn_point = Vector2(6154.4,-10975.5)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()
	
func _on_Button6_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(-861,-13160))
	Global.spawn_point = Vector2(-861,-13160)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()


func _on_Button7_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(6348,-14887))
	Global.spawn_point = Vector2(6348,-14887)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()

func _on_Button8_pressed():
	if jeff:
		Global.timerStartRaw = OS.get_ticks_msec()
		Global.startTimer = true
	Global.update_spawn(Vector2(-747,-16799))
	Global.spawn_point = Vector2(-747,-16799)
	#Global.startTimer = true
	Global.selectMade = true
	Global.LvSelect = false
	queue_free()
#	$ColorRect.hide()
#	$Button.hide()
#	$Button2.hide()
#	$Button3.hide()
#	$Button4.hide()
#	$Button5.hide()
#	$Button6.hide()
#	$Button7.hide()
#	$Button8.hide()
#	$CheckBox.hide()
#	$CheckBox2.hide()


func _on_CheckBox_pressed():
	#jeff = true
	#Global.timer_on = true
	pass



func _on_CheckBox2_pressed():
	#Global.hardcore = true
	pass

func _on_CheckBox2_toggled(button_pressed):
	if button_pressed == true:
		#jeff = true
		Global.hardcore = true
		#Global.timer_on = true
	elif button_pressed == false:
		jeff = false
		Global.hardcore = false
		Global.timer_on = false

func _on_CheckBox_toggled(button_pressed):
	if button_pressed == true:
		jeff = true
		Global.timer_on = true
	elif button_pressed == false:
		jeff = false
		Global.timer_on = false	
	
