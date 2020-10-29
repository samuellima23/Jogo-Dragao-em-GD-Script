extends Area2D




func _on_Area2D_input_event( viewport, event, shape_idx ):
	if event.type == InputEvent.SCREEN_TOUCH and event.pressed:
		SplashFade.fade_to("res://scenes/GAME.tscn")
