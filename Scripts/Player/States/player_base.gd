extends State 
class_name PlayerBaseState

var input:
	get: return object.input

func play(animation):
	object.sprites.play(animation)
	
func accelerate(delta, direction=input.x):
	object.velocity.x = move_toward(object.velocity.x, Player.MAX_SPEED*direction, Player.ACCELERATION*delta)

func apply_gravity(delta):
	var g = Player.JUMP_GRAVITY if fsm.current_state=="jump" else Player.FALL_GRAVITY
	object.velocity.y = move_toward(object.velocity.y, Player.TERMINAL_VELOCITY, g*delta)

func move(delta, apply_g, update_dir=true, direction=input.x):
	accelerate(delta, direction)
	if apply_g: apply_gravity(delta)
	if update_dir: object.direction = direction 
	object.move_and_slide()
