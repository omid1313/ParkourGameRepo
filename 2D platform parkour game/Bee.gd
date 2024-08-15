extends CharacterBody2D


var speed = 100
var direction = 1 

func _physics_process(delta):
	if is_on_wall():
		direction = direction * -1
		$AnimatedSprite2D.flip_h = not $AnimatedSprite2D.flip_h
	velocity.x = speed * direction
	
	move_and_slide()
	
	



func _death(area):
	if area.has_meta("Bee"):
		pass
	else:
			get_tree().reload_current_scene()
			

