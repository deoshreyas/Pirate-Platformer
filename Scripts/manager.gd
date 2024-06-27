extends Node

var coins = 0 

@onready var sfx = $BackgroundSFX

func _ready():
	sfx.play()

signal changeCoinLabel(value)

func _on_coins_child_exiting_tree(node):
	coins += 1 
	changeCoinLabel.emit(coins)
