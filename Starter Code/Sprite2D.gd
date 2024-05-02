extends Sprite2D

var speed = 500

func  _physics_process(delta):
	position.y += speed * delta

func _on_area_entered(area):
	print(area)
	
	pass # Replace with function body.



func _on_death_plain_body_entered(body):
	$explosion.play()
	$"..".delete()
	print(body)
	pass # Replace with function body.
