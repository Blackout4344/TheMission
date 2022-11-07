extends Node2D


const bullet_scene = preload("res://Scenes/BulletHell.tscn")
onready var shoot_timer = $Timer
onready var rotater = $Rotater

const rotate_speed = 50
const shooter_timer_wait_time = 0.5
const spawn_point_count = 24
const radius = 100

func _ready():
	position = Vector2(5813,1896)
	var step = (2 * PI) / spawn_point_count

	for i in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(radius, 0).rotated(step + i)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater.add_child(spawn_point)

	shoot_timer.wait_time = shooter_timer_wait_time
	shoot_timer.start()

func _process(delta : float):
	if Global.health == 30 or Global.health == 16:
		position = Vector2(6634,-16932)
		Global.smtn = false
		$DeathToYOU.set_wait_time(15)
		Global.readyUP = true
		$AnimatedSprite.play("default")
	var new_rotation = rotater.rotation_degrees * rotate_speed * delta
	rotater.rotation_degrees = fmod(new_rotation,360)	

func _on_Timer_timeout():
	for s in rotater.get_children():
		var bullet = bullet_scene.instance()
		get_tree().root.add_child(bullet)
		bullet.position = s.global_position
		bullet.rotation = s.global_rotation





func _on_DeathToYOU_timeout():
	if Global.readyUP:
		position = Vector2(5813,1000)
		Global.smtn = true
func iHaveMethod():
	print("Bob")
