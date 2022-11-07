extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/ColorRect.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#	pass
#func _process(delta):

func _on_Button_pressed():
	$CanvasLayer/ColorRect.show()
	$CanvasLayer/AnimationPlayer.play("grey")
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
