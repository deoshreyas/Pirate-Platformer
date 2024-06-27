extends Label

var muted = false

func select(): 
	# if playing, then mute, else play
	if muted:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)
		AudioServer.set_bus_mute(AudioServer.get_bus_index("BgMusic"), false)
		muted = false
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
		AudioServer.set_bus_mute(AudioServer.get_bus_index("BgMusic"), true)
		muted = true
