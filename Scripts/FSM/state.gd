extends Node
class_name State 

var object 
var fsm 

func enter():
	pass 

func update(_delta):
	pass

func physics_update(_delta):
	pass
	
func exit():
	pass 

func change_state(next_state):
	fsm.change_state(next_state)
	
func get_input_x():
	return Input.get_axis("btn_left", "btn_right")
