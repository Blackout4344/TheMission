extends Node2D

const speed = 200

func _process(delta):
	position += transform.x * speed * delta
	$Timer.set_wait_time(5)




func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.playerFirstSpawn = false
	elif body.name != "Boss":
		queue_free()


func _on_Timer_timeout():
	queue_free()
