extends Node

var coins = 0 

signal changeCoinLabel(value)

func _on_coins_child_exiting_tree(node):
	coins += 1 
	changeCoinLabel.emit(coins)
