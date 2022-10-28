extends Area2D

onready var player = get_node("/root/Main/Level/Player")
var lookVec = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	look_at(player.global_position)
