extends Area2D

var enterd = false



func _on_body_entered(body):
	#Check if player touches 
	get_tree().change_scene_to_file("res://level_2.tscn") 
