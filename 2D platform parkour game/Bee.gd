extends CharacterBody2D


var speed = 175
var direction = 1 


func _physics_process(delta):
#  Reverses direction and flips the sprite of the bee when hitting a wall.
	if is_on_wall():
		direction = direction * -1
		$AnimatedSprite2D.flip_h = not $AnimatedSprite2D.flip_h
	velocity.x = speed * direction
	
	move_and_slide()
	


func _on__body_die_entered(body):
	if body.has_method("_die"):
		body._die()
	

