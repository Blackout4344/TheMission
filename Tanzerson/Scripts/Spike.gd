extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("default")




func _on_Player_Detector_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.Boss = false
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.playerFirstSpawn = false
		
