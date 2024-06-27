extends CanvasLayer

@onready var player = $AnimationPlayer 

signal faded_in
signal faded_out

func fade_in():
	player.play("fade_in") 
	
func fade_out():
	player.play("fade_out") 

func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"fade_in":
			faded_in.emit()
		"fade_out":
			faded_out.emit()
