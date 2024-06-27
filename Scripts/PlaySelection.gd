extends Label

func select():
	Game.world.transition.fade_out()
	Game.world.main_menu.disable()
	await Game.world.transition.faded_out
	get_tree().paused = true
	Game.world.main_menu.hide()
	Game.world.world_elements.load_level()
	Game.world.transition.fade_in()
	await Game.world.transition.faded_in 
	get_tree().paused = false
