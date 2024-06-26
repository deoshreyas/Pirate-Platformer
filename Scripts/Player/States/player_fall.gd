extends PlayerBaseState

func enter():
	play("fall")
	
func physics_update(delta):
	move(delta, true)
	if object.is_on_floor():
		if input.x==0:
			change_state("idle")
		else:
			change_state("run")
