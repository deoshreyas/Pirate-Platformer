extends PlayerBaseState

var variable_jump_height

func enter():
	play("idle")
	object.velocity.y = -400
	object.velocity.x = input.x * Player.MAX_SPEED
	variable_jump_height = false 
	input.jump_buffer = false 
	
func physics_update(delta):
	move(delta, true)
	if not variable_jump_height and not input.jump_pressed:
		variable_jump_height = true 
		if object.velocity.y<=0:
			object.velocity.y /= 2 
	if object.velocity.y>=0:
		change_state("fall")
