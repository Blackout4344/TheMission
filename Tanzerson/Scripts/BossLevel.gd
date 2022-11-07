extends Area2D





func _on_BossLevel_body_entered(body):
	if body.name == "Player":
		Global.Boss = true
