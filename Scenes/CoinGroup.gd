extends Node

@onready var coinCount = $CoinCount 

func _on_manager_change_coin_label(value):
	coinCount.text = str(value)
