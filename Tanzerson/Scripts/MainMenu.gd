extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var Lvl : TileMap = load("res://Scenes/Level.tscn").instance() 
	Lvl.global_position = Vector2(0,0)
	get_parent().add_child(Lvl)
	queue_free()
