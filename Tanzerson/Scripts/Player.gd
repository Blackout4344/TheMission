extends KinematicBody2D

onready var knifeScene = preload("res://Scenes/Knife.tscn")

var Vel = Vector2(0,0)
var target = null
var readyShoot = true
var coyote_timer: float = 0

export (float) var coyote_time = 0.5
export var speed : float
export var gravity : float
export var jump : float

func enter() -> void:
	.enter()
	coyote_timer = coyote_time
	

func _process(delta):
	if Global.groundShake:
		Global.camera.shake(1,5)	
	coyote_timer -= delta
	
func _input(event : InputEvent):
	if Input.is_action_just_pressed("Move_Up") and coyote_timer > 0:
		return jump
func _physics_process(delta):
	Vel.x = 0
	if Input.is_action_pressed("Move_Right"):
		$Sprite.flip_h = false
		Vel.x += speed
	if Input.is_action_pressed("Move_Left"):
		$Sprite.flip_h = true
		Vel.x -= speed	
	if (Vel.x != 0):
		$Sprite.play("Walking")		
	else:
		$Sprite.stop()
	if is_on_wall():
		$Sprite.play("Climbing")		
	if not $Sprite.is_playing():
		$Sprite.play("Idle")			
	if Input.is_action_just_pressed("Move_Up") and (is_on_floor() or is_on_wall()): 
		Vel.y = 0
		Vel.y -= jump	
	else:
		Vel.y += gravity * delta			
	
	if Input.is_action_just_pressed("Shoot"):
		if readyShoot == true:
			$KnifeSound.play()
			shoot()	
	Vel = move_and_slide(Vel,Vector2.UP) 
		
func shoot():
	target = get_local_mouse_position()
	var knife = knifeScene.instance()
	knife.position = self.position
	knife.target = target
	get_parent().add_child(knife)
	readyShoot = false
	$Timer.set_wait_time(1)
	 
func _ready() -> void:	
	if not Global.playerFirstSpawn: 
		if not Global.deathSoundPlayed:
			$DeathSound.play()
			Global.deathSoundPlayed = true	
	OS.delay_msec(500)
	self.position = Global.spawn_point
	Global.deathSoundPlayed = false



func _on_Timer_timeout():
	readyShoot = true



