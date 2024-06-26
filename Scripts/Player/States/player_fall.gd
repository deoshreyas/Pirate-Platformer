extends PlayerBaseState

func enter():
	play("fall")
	
func physics_update(delta):
	var x_input = Input.get_axis("btn_left", "btn_right")
	object.direction = x_input 
	accelerate(delta)
	apply_gravity(delta)
	object.move_and_slide()
	if object.is_on_floor():
		if x_input==0:
			change_state("idle")
		else:
			change_state("run")
