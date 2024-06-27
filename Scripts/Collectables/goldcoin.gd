extends Area2D 

@onready var sprite = $AnimatedSprite2D 
@onready var sfx = $CoinSFX

signal incrementCoinCount

func _ready():
	sprite.play("idle")
	
func _on_body_entered(_body):
	incrementCoinCount.emit()
	sprite.play("collect")
	sfx.play()

func _on_animated_sprite_2d_animation_finished():
	queue_free()
