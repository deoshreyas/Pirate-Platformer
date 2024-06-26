extends CharacterBody2D

const VELOCITY = 100
const JUMP_VELOCITY = 300

@onready var sprites = $AnimatedSprite2D

var direction:
	get: return direction
	set(value):
		if value==0 or value==direction: return 
		direction = value 
		sprites.flip_h = value==-1

func _physics_process(delta):
	var x_input = Input.get_axis("btn_left", "btn_right")
	direction = x_input
	
	if Input.is_action_just_pressed("btn_space") and is_on_floor():
		velocity.y = -JUMP_VELOCITY
		sprites.play("jump")
	elif not is_on_floor() and velocity.y >= 0:
		sprites.play("fall")
	elif x_input==0 and is_on_floor():
		sprites.play("idle")
	elif is_on_floor():
		sprites.play("run")
	
	velocity.x = x_input*VELOCITY
	velocity.y += 980 * delta
	move_and_slide()
