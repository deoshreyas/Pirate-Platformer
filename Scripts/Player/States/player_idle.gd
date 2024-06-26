extends PlayerBaseState

func enter():
	play("idle")
	
func physics_update(delta):
	var x_input = Input.get_axis("btn_left", "btn_right")
	object.direction = x_input 
	accelerate(delta)
	object.move_and_slide()
	if Input.is_action_just_pressed("btn_space"):
		change_state("jump")
	elif not object.is_on_floor():
		change_state("fall")
	elif x_input!=0:
		change_state("run")
