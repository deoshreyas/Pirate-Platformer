extends CharacterBody2D
class_name Player 

const MAX_SPEED = 90.0
const ACCELERATION = 900.0

const JUMP_GRAVITY = 980.0 
const FALL_GRAVITY = 500.0
const TERMINAL_VELOCITY = 500.0 

@onready var sprites = $AnimatedSprite2D
@onready var fsm = $FSM 
@onready var input = $InputHandler

var direction:
	get: return direction
	set(value):
		if value==0 or value==direction: return 
		direction = value 
		sprites.flip_h = value==-1
		
func _ready():
	fsm.change_state("idle")

func _physics_process(delta):
	input.update()
	fsm.physics_update(delta)

