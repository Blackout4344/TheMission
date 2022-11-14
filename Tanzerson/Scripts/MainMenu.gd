extends Control


func _ready():
	$CanvasLayer/ColorRect.hide()



func _on_Button_pressed():
	$CanvasLayer/ColorRect.show()
	$CanvasLayer/AnimationPlayer.play("grey")
	Global.LvSelect = true
#	var Lvl : TileMap = load("res://Scenes/Level.tscn").instance() 
#	Lvl.global_position = Vector2(0,0)
#	get_parent().add_child(Lvl)
#	queue_free()


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "grey":
		Global.doYourThing = true
		var Lvl : TileMap = load("res://Scenes/Level.tscn").instance() 
		Lvl.global_position = Vector2(0,0)
		get_parent().add_child(Lvl)
		queue_free()
