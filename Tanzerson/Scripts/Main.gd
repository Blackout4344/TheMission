extends Node2D

var LvlScene = preload("res://Scenes/Level.tscn")


func _ready():
	if not Global.playerFirstSpawn:
		remove_child($MainMenu)
		var Lvl : TileMap = LvlScene.instance()
		Lvl.global_position = Vector2(0,0)
		add_child(Lvl)
		

