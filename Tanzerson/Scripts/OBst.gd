extends KinematicBody2D

func _ready():
	hide()
	position = Vector2(5747,-19060)

func _process(_delta):
	if Global.health == 0:
		show()
		position = Vector2(5934,-16819)
#		Vel = position.direction_to(target) * speed
#		if position.distance_to(point1) <= 226:
#			target = point2 
#		#if position.distance_to(point2) <= 116:
#			#target = point1	
#		Vel.y += gravity * delta
#		Vel = move_and_slide(Vel,Vector2.UP)

