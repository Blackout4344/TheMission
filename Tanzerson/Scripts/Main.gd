extends Node2D


func _ready():
	if not Global.playerFirstSpawn:
		remove_child($MainMenu)
		var Lvl : TileMap = load("res://Scenes/Level.tscn").instance() 
		Lvl.global_position = Vector2(0,0)
		add_child(Lvl)
