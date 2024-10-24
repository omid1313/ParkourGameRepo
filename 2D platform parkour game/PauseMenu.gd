extends Control



func _ready():
	# Ensure the pause menu is hidden at the start
	self.visible = false

func resume():
 # Hide the pause menu
	get_tree().paused = false
	self.visible = false  # Hide the pause menu

func pause():
 # Show the pause menu
	get_tree().paused = true
	self.visible = true  

func test_esc():
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().paused:
			resume()
		else:
			pause()


func _on_resume_pressed():
	resume()

func _on_quite_pressed():
	get_tree(). quit()

func _process(delta):
	test_esc()
