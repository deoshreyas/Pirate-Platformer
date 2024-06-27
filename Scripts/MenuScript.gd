extends CanvasLayer

@export var options_container : Node 
@onready var options = options_container.get_children()

var options_index:
	get: return options_index 
	set(value):
		options_index = clampi(value, 0, options.size()-1)
		for option in options.size():
			options[option].modulate.a = 10.0 if option==options_index else 0.3 

func _ready():
	disable()
	options_index = 0
	
func enable():
	set_process_input(true)

func disable():
	set_process_input(false)

func _input(event):
	if event.is_action_pressed("btn_down"):
		options_index += 1
	elif event.is_action_pressed("btn_up"):
		options_index -= 1 
	elif event.is_action_pressed("ui_accept"):
		var option_selected = options[options_index]
		if option_selected.has_method("select"):
			option_selected.select()
