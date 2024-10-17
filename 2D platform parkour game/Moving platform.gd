extends Path2D

@export var loop = true
@export var speed = 0.01
@export var speed_scale = 1.0
var reverse = false

@onready var path = $PathFollow2D
@onready var animation =$AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready():
	if not loop:
		animation.play("move")
		animation.speed_scale = speed_scale
		set_process(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not reverse:
		path.progress_ratio += speed
		if path.progress_ratio >= 0.98:
			reverse = true
	elif reverse:
		path.progress_ratio -= speed
		if path.progress_ratio <= 0.02:
			reverse = false
