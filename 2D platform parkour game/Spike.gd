extends Node2D


func _on_area_2d_body_entered(body):
# Relods current scecne when player touch the spike.
	if body.name == "Redhood":
		get_tree().reload_current_scene() 





