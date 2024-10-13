extends Node2D





func _on_area_2d_area_entered(area):
	if body.has_method("_die"):
		body._die()
