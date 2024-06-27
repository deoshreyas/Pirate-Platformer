extends Label

func select():
	var main_menu = Game.world.main_menu
	var transition = Game.world.transition
	Game.world.game_over.disable()
	transition.fade_out()
	await transition.faded_out 
	Game.world.game_over.hide()
	main_menu.show()
	main_menu.options_index = 0 
	Game.world.world_elements.unload_level()
	await get_tree().process_frame
	get_tree().paused = false 
	Game.world.parallax.scroll_offset = Vector2.ZERO
	transition.fade_in()
	await transition.faded_in 
	main_menu.enable()
