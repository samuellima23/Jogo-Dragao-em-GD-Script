extends Node2D




func _on_return_pressed():
	get_node("Anim").play("hide")
	yield(get_node("Anim"), "finished")
	
	SplashFade.clear_above()


func _on_home_pressed():
	get_node("Anim").play("hide")
	yield(get_node("Anim"), "finished")
	
	SplashFade.fade_to("res://scenes/splash.tscn")
	


func _on_replay_pressed():
	get_node("Anim").play("hide")
	yield(get_node("Anim"), "finished")
	
	SplashFade.fade_to("res://scenes/GAME.tscn")
	
