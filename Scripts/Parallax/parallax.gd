extends ParallaxLayer

@export var speed = 24

func _process(delta):
	motion_offset.x -= speed * delta
