extends Area2D


func _on_body_entered(body):
# Collect the coin when player body touches it
	if body.name == "Redhood":
		queue_free()



