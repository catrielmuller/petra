extends Node

func _on_ExitTimer_timeout():
	get_tree().change_scene("res://scenes/main.tscn")
