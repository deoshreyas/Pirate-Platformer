extends PlayerBaseState

func enter():
	play("idle")
	object.velocity.y = -400
	
func physics_update(delta):
	var x_input = Input.get_axis("btn_left", "btn_right")
	object.direction = x_input 
	accelerate(delta)
	apply_gravity(delta)
	object.move_and_slide()
	if object.velocity.y>=0:
		change_state("fall")
