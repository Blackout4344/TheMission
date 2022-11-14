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
	

func _process(_delta):
	if Global.selectMade:
		self.position = Global.spawn_point
		Global.selectMade = false
	if Global.groundShake:
		Global.camera.shake(1,5)	
	if Global.doYourThing:
		$Tran/AnimationPlayer.play("normal")
	
	
func _input(_event : InputEvent):
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
		$Sprite.position = Vector2(-4,-24)
		$Sprite.play("walking")		
	else:
		$Sprite.stop()
	if is_on_wall():
		$Sprite.position = Vector2(3,0)
		$Sprite.play("Climbing")		
	if not $Sprite.is_playing():
		$Sprite.position = Vector2(3,0)
		$Sprite.play("Idle")			
	if Input.is_action_just_pressed("Move_Up") and (is_on_floor() or is_on_wall()): 
		Vel.y = 0
		Vel.y -= jump	
	else:
		Vel.y += gravity * delta			
	
	if Input.is_action_just_pressed("Shoot"):
		if readyShoot == true and Global.selectMade == false:
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
	$DeathTran/ColorRect.hide()
	if not Global.playerFirstSpawn: 
		if not Global.deathSoundPlayed:
			$DeathSound.play()
			Global.deathSoundPlayed = true	
	$DeathTran/ColorRect.show()
	$DeathTran/AnimationPlayer2.play("death")
	self.position = Global.spawn_point
	Global.deathSoundPlayed = false



func _on_Timer_timeout():
	readyShoot = true





func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "normal":
		Global.doYourThing = false
		Global.something = false
		$Tran/ColorRect.hide()


func _on_AnimationPlayer2_animation_finished(anim_name):
	if anim_name == "death":
		$DeathTran.hide()





