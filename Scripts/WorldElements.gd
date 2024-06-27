extends Node2D

var levels_map = {
	"level_1": "res://Scenes/Levels/level.tscn"
}

var current_level 

func load_level():
	current_level = load(levels_map["level_1"]).instantiate()
	add_child(current_level)

func unload_level():
	current_level.queue_free()
	current_level = null
