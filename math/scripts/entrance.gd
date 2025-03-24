extends Control


func _on_button_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/lessons.tscn")


func _on_button_2_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/execise.tscn")
