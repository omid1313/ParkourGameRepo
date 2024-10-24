extends Area2D

var enterd = false


func _on_body_entered(body):
	if body.name == "Redhood":
		get_tree().change_scene_to_file("res://level_3.tscn")
