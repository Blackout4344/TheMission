extends Area2D

var move = Vector2.ZERO
var lookVec = Vector2.ZERO
var player = null
var speed = 500

func _ready():
	lookVec = player.global_position - global_position

func _physics_process(delta):
	move = Vector2.ZERO
	
	move = move.move_toward(lookVec,delta)
	$DeathParticles.emitting = true
	position += move * speed



func _on_Bullet_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.playerFirstSpawn = false
	elif body.name != "BossStage2":
		queue_free()	
