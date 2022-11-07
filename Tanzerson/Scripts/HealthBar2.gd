extends Control


onready var healthbar = $TextureProgress



export (Color) var healthy_color = Color.green
export (Color) var caution_color = Color.yellow
export (Color) var danger_color = Color.red
export (float, 0, 1, 0.05) var caution_zone = 0.5
export (float, 0, 1, 0.05) var danger_zone = 0.3

func onHit():
	healthbar.value -= 2
	_assign_color(healthbar.value)
func _assign_color(health):
	if health < healthbar.max_value * danger_zone:
		healthbar.tint_progress = danger_color
	elif health < healthbar.max_value * caution_zone:
		healthbar.tint_progress = caution_color
	else:
		healthbar.tint_progress = healthy_color		
	
	
