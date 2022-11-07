extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(-624,1884)
	
func _process(_delta):
	if Global.boss2Health == 0:
		position = Vector2(6532,-17359)
