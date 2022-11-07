extends KinematicBody2D

onready var bulletScene = preload("res://Scenes/Laser.tscn")

var move = Vector2.ZERO
var player = null
var speed = 0
var allowFire = false
var die = false

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "default":
		allowFire = true
	elif $AnimatedSprite.animation == "New Anim":
		Global.win = true
		queue_free()
func _ready():
	$AnimatedSprite.connect("animation_finished", self, "_on_AnimatedSprite_animation_finished")
	$AnimatedSprite.frame = 0
	position = Vector2(798,1749)
func _physics_process(_delta):
	if Global.boss2Health == 0:
		die = true		
		$AnimatedSprite.position = Vector2(-152,-41)
		$AnimatedSprite.play("New Anim")
		$Timer3.set_wait_time(10)
	elif Global.health == 0:
		position = Vector2(6592,-17086)
		$AnimatedSprite.position = Vector2(-0,95)
		$AnimatedSprite.play("default")
func _on_Area2D_body_entered(body):
	if body != self and body.name == "Player":
		player = body

func fire():
	var bullet = bulletScene.instance()
	bullet.position = self.position
	bullet.player = player
	get_parent().add_child(bullet)
	$Timer.set_wait_time(0.5)

func _on_Area2D_body_exited(_body):
	$AudioStreamPlayer2D.stop()
#	player = null


func _on_Timer_timeout():
	if player != null:
		if allowFire == true:	
			if die != true:
				$AudioStreamPlayer2D.play()
				fire()


func _on_KillZone_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.Boss = false
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.playerFirstSpawn = false


func hit():
	Global.boss2Health -= 2
	$DeathParticles.emitting = true
	$HealthBar.onHit()






