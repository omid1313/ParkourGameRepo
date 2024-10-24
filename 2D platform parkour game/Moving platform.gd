extends Path2D

@export var loop = true
@export var speed = 0.01
@export var speed_scale = 1.0
var reverse = false

@onready var path = $PathFollow2D
@onready var animation =$AnimationPlayer




func _ready():
# Plays the "move" animation once and stops processing if not looping.
	if not loop:
		animation.play("move")
		animation.speed_scale = speed_scale
		set_process(false)



func _process(delta):
# Moves the platform along the path, switching direction when it reaches the ends
	if not reverse:
		path.progress_ratio += speed
		if path.progress_ratio >= 0.98:
			reverse = true
	elif reverse:
		path.progress_ratio -= speed
		if path.progress_ratio <= 0.02:
			reverse = false
