extends Node2D

@onready var main_menu = $MainMenu 
@onready var pause_menu = $PauseMenu
@onready var world_elements = $WorldElements
@onready var transition = $Transition
@onready var parallax = $ParallaxBackground
@onready var game_over = $GameOver

func _ready():
	game_over.disable()
	Game.world = self
	transition.fade_in()
	main_menu.show()
	await transition.faded_in
	main_menu.enable()
