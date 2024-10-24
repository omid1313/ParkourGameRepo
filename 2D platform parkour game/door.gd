extends Area2D

var enterd = false



func _on_body_entered(body):
# Changes the scene to level 1 when player enters the area
	if body.name == "Redhood":
		get_tree().change_scene_to_file("res://level_2.tscn")
	
