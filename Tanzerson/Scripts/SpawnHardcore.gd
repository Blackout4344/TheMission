extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


func _process(delta):
	if Global.hardcore == true:
		show()
func _on_Spawn_body_entered(body):
	if $Sprite.texture != load("res://sprite_0/sprite_1.png"):
		$Sound.play()
	if body.name == "Player":
		$Sprite.texture = load("res://sprite_0/sprite_1.png")
		Global.update_spawn(self.position)
		
