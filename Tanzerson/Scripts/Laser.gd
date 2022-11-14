extends Area2D


var move = Vector2.ZERO
var lookVec = Vector2.ZERO
var player = null
var speed = 800

func _ready():
	lookVec = player.position - position

func _process(_delta):
	if Global.health == 30 or Global.health == 16:
		position = Vector2(0,0)
	if Global.health != 30 or Global.health != 16:
		pass
func _physics_process(delta):
	move = Vector2.ZERO
	
	move = move.move_toward(lookVec,delta)
	$DeathParticles.emitting = true
	position += move * speed



func _on_Bullet_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.deaths += 1
		Global.Boss = false
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.playerFirstSpawn = false
	elif body.name != "BossStage2":
		queue_free()	
