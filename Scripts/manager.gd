extends Node

@onready var total_coins = get_parent().get_child(1).get_child_count()
var coins = 0 
@onready var coincount = get_parent().get_child(4).get_child(0).get_child(0).get_child(1)

var time = 0

func _on_coins_child_exiting_tree(node):
	coins += 1 
	coincount.text = str(coins)
	if coins==total_coins and get_tree()!=null:
		Game.world.game_over.options_index = 0
		get_tree().paused = true
		Game.world.game_over.get_child(0).get_child(0).get_child(1).get_child(0).text = "time:" + str(snapped(time, 0.01))
		Game.world.game_over.show()
		Game.world.game_over.enable()
	
func _process(delta: float):
	time += delta 
