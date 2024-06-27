extends Node2D

func pause():
	get_tree().paused = true 
	Game.world.pause_menu.options_index = 0
	Game.world.pause_menu.show()
	Game.world.pause_menu.enable()

func resume():
	get_tree().paused = false 
	Game.world.pause_menu.hide()
	Game.world.pause_menu.disable()

func _input(event):
	if event.is_action_pressed("btn_space"):
		pause()
