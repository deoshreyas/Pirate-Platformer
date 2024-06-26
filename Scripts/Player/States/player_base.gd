extends State 
class_name PlayerBaseState

func play(animation):
	object.sprites.play(animation)
	
func accelerate(delta, direction=get_input_x()):
	var multiplier = Player.AIR_MULTIPLIER if not object.is_on_floor() else 1.0 # change acceleration if player is airborne
	object.velocity.x = move_toward(object.velocity.x, Player.MAX_SPEED*direction, Player.ACCELERATION*multiplier*delta)

func apply_gravity(delta):
	var g = Player.JUMP_GRAVITY if fsm.current_state=="jump" else Player.FALL_GRAVITY
	object.velocity.y = move_toward(object.velocity.y, Player.TERMINAL_VELOCITY, g*delta)
