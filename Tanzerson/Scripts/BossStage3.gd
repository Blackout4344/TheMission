extends KinematicBody2D



export var point1 : Vector2
export var point2 : Vector2
onready var target = point1
export var speed : float
export var gravity : float
var Vel = Vector2(0,0)
func _ready():
#	$Animation.connect("animation_finished", self, "_on_Animation_animation_finished")
	position = Vector2(4553,1753)




#func _process(delta):
#	Vel = position.direction_to(target) * speed
#	if Global.boss2Health == 0:
#		#position = Vector2(6592,-17086)
#		$Jump.play("default")
#		if position.distance_to(point1) <= 458:
#			target = point2 
#		if position.distance_to(point2) <= 458:
#			target = point1
#		if Vel.x > 0:
#			$Jump.flip_h = false
#		if Vel.x < 0:
#			$Jump.flip_h = true		
#
#	Vel.y += gravity * delta
#	Vel = move_and_slide(Vel,Vector2.UP)	

#func _on_Timer_timeout():
	#print("bob")
	#Global.groundShake = false
	





func _on_Jump_animation_finished():
	pass
