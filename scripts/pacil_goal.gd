extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "greenShip":
		var win_label = get_tree().current_scene.get_node("winLabel")
		win_label.show()
		await get_tree().create_timer(5.0).timeout
		get_tree().change_scene_to_file("res://scenes/MainLevel.tscn")
