extends Node

var coins = 0 
@onready var coincount = get_parent().get_child(4).get_child(0).get_child(3)

func _on_coins_child_exiting_tree(node):
	coins += 1 
	coincount.text = str(coins)
