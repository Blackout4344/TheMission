extends KinematicBody2D



func _ready():
	$Animation.connect("animation_finished", self, "_on_Animation_animation_finished")
#	position = Vector2(69,-148)
	position = Vector2(4553,1753)


func _process(_delta):
	$Animation.play("default")


func _on_Animation_animation_finished():
	if $Animation.animation == "default":
		Global.currentCam = true
		#Global.groundShake = true
		$Timer.set_wait_time(1)
		


	





func _on_Timer_timeout():
	Global.groundShake = false
