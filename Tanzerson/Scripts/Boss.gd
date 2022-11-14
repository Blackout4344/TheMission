extends KinematicBody2D


const bulletHell = preload("res://Scenes/BulletHell.tscn")

onready var shootTimerforShoot = $ShootTimer
onready var rotater = $Rotater
onready var bulletScene = preload("res://Scenes/Bullet.tscn")
onready var laserScene = preload("res://Scenes/Laser.tscn")

var move = Vector2.ZERO
var player = null
var speed = 0
var knife = Vector2(0,0)

const rotateSpeed = 50
const Shoottimer = 0.2
const spawnpointCount = 6
const radius = 100

func _process(_delta):
	if Global.health == 30 or Global.health == 16:
		position = Vector2(804,1848)
		$Back.set_wait_time(15)
		Global.readyUP2 = true
#	var new_rotation = rotater.rotation_degrees * rotateSpeed * delta
#	rotater.rotation_degrees = fmod(new_rotation,360)
	
func _ready():
	Global.readyUP = false
	Global.readyUP2 = false
#	var step = 2 * PI / spawnpointCount
#	for i in range(spawnpointCount):
#		var spawnPoint = Node2D.new()
#		var pos = Vector2(radius,0).rotated(step * i)
#		spawnPoint.position = pos
#		spawnPoint.rotation = pos.angle()
#		rotater.add_child(spawnPoint)
#		
#	shootTimerforShoot.wait_time = Shoottimer
#	shootTimerforShoot.start()
	
	
func _physics_process(_delta):
	if Global.health == 0:
		queue_free()
#		position = Vector2(2564,1753)
	elif Global.health != 0:
		position = Vector2(6460,-16978)
		
	if player != null:
		move = position.direction_to(player.position) * speed
	else:
		move = Vector2.ZERO
	move = move_and_collide(move)		
	
func _on_Area2D_body_entered(body):
	if body != self and body.name == "Player":
		player = body

func fire():
	if Global.health != 30:
		if Global.health > 0:
			var bullet = bulletScene.instance()
			bullet.position = self.position
			bullet.player = player
			get_parent().add_child(bullet)
			$Timer.set_wait_time(1.5)
		else:
			var bullet = laserScene.instance()
			bullet.position = self.position
			bullet.player = player
			get_parent().add_child(bullet)
			$Timer.set_wait_time(1.5)	

func _on_Area2D_body_exited(_body):
	$AudioStreamPlayer2D.stop()
	#player = null


func _on_Timer_timeout():
	if player != null:
		$AudioStreamPlayer2D.play()
		fire()


func _on_KillZone_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		Global.deaths += 1
		Global.Boss = false
		Global.health = 36
		Global.boss2Health = 30
		Global.boss3Health = 38
		Global.readyUP = false
		Global.readyUP2 = false
		Global.playerFirstSpawn = false


func hit():
	Global.health -= 2
	$DeathParticles.emitting = true
	$HealthBar.onHit()

#func _on_ShootTimer_timeout():
	#for s in rotater.get_children():
		#var hell = bulletHell.instance()
		#get_tree().root.add_child(hell)
		#hell.position = s.global_position
		#hell.rotation = s.global_rotation
		


func _on_Back_timeout():
	if Global.readyUP2:
		position = Vector2(5361,-16981)
		Global.health -= 2




