extends Area2D

var move = Vector2.ZERO
var lookVec = Vector2.ZERO
var target = null
var speed = 500

func _ready():
	lookVec = target

func _physics_process(delta):
	move = Vector2.ZERO
	
	move = move.move_toward(lookVec,delta)
#	$DeathParticles.emitting = true
	$AnimatedSprite.play("default")
	position += move * speed
	
	
func _on_Knife_body_entered(body):
	$HitKnife.play()
	if body.has_method("hit"):
		body.hit()
	if body.name != "Player":
		queue_free()
