extends Node2D

@export var sprite:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/HSlider.value = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_h_slider_value_changed(value):
	$CanvasLayer/HSlider/Numbers.text = str(value)
	pass


func _on_button_pressed(event):
	if event.name == "Button":
		var new_sprite = sprite.instantiate()
		new_sprite.position = position.x + position.y
		new_sprite.name = "block"
		get_tree().get_root().add_child(new_sprite)
	pass
