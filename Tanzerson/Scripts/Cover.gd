extends KinematicBody2D


export var point1 : Vector2
export var point2 : Vector2
export var speed : float
export var gravity : float
onready var target = point1
var Vel = Vector2(0,0)

func _ready():
	hide()
	position = Vector2(5281,-18928)

func _process(_delta):
	if Global.Boss == true:
		show()
		position = Vector2(4514,-16778)
#		Vel = position.direction_to(target) * speed
#		if position.distance_to(point1) <= 226:
#			target = point2 
#		#if position.distance_to(point2) <= 116:
#			#target = point1	
#		Vel.y += gravity * delta
#		Vel = move_and_slide(Vel,Vector2.UP)
	else:
		hide()
		position = Vector2(5281,-18928)
