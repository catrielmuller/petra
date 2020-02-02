extends Node

onready var part = $Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	if body is Player:
		var temple = get_tree().get_root().get_node('Stage').get_node('Temple').get_node('TempleL2')
		var sprite = temple.get_child(0)
		sprite.visible = true
		part.visible = false
