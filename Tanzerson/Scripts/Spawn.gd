extends Area2D



func _on_Spawn_body_entered(body):
	if $Sprite.texture != load("res://sprite_0/sprite_1.png"):
		$Sound.play()
	if body.name == "Player":
		$Sprite.texture = load("res://sprite_0/sprite_1.png")
		Global.update_spawn(self.position)
		
