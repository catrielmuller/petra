extends Node

onready var part1 = $Sprite
onready var timeout = $EndTimer

func _on_Area2D_body_entered(body):
	if body is Player:
		var temple1 = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleL1')
		var sprite1 = temple1.get_child(0)
		var temple2 = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleL2')
		var sprite2 = temple2.get_child(0)
		var temple3 = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleL3')
		var sprite3 = temple3.get_child(0)
		if sprite1.visible && sprite2.visible && sprite3.visible:
			var temple = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleFull')
			var sprite = temple.get_child(0)
			sprite.visible = true
			timeout.start()
			


func _on_EndTimer_timeout():
	get_tree().change_scene("res://scenes/menu.tscn")
