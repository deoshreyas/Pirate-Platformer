extends PlayerBaseState

func enter():
	play("run")
	
func physics_update(delta):
	move(delta, false)
	if input.jump_just_pressed:
		change_state("jump")
	elif not object.is_on_floor():
		change_state("fall")
	elif input.x==0:
		change_state("idle")
