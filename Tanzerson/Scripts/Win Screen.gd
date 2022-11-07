extends CanvasLayer



func _ready():
	$ColorRect2.hide()
	$Sprite.hide()
	$ColorRect.hide()

func _process(_delta):
	if Global.win == true:
		$ColorRect.show()
		$Win.play("grey")


func _on_AnimationPlayer_animation_finished(_anim_name):
	$AnimationPlayer2.play("New Anim")
	$Sprite.show()
	$ColorRect2.show()
