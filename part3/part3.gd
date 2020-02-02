extends Node

onready var part = $Sprite

func _on_Area2D_body_entered(body):
	if body is Player:
		var temple = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleL3')
		var sprite = temple.get_child(0)
		sprite.visible = true
		part.visible = false
		($Audio as AudioStreamPlayer2D).play()
