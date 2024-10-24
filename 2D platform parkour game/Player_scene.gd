extends CharacterBody2D


const SPEED = 170
const JUMP_VELOCITY = -500

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
# Handles gravity, jumping, and horizontal movement based on input of the player.
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		$Sprite2D.flip_h = not $Sprite2D.flip_h 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()


func _die() -> void:  
# When player touches the bees than dies.
	get_tree().reload_current_scene()






