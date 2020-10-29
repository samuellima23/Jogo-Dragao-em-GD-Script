extends Node2D

onready var Passaro = get_node("PASSARO")
onready var timereplay = get_node("TimerToReplay")
onready var label = get_node("Node2D/Control/Label")
var above_node

var pontos = 0
var estado = 1

const JOGANDO = 1
const PERDENDO = 2

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	SplashFade.clear_above()
	get_node("SomGame").play()
	
func kill():
	Passaro.apply_impulse(Vector2(0,0), Vector2(-1000, 0))
	get_node("BackAnim").stop()
	estado = PERDENDO
	timereplay.start()
	get_node("somHit").play()
	
func pontuar():
	pontos += 1
	label.set_text(str(pontos))
	get_node("somScore").play()

func _on_TimerToReplay_timeout():
	get_tree().reload_current_scene()



func _on_Pause_button_pressed():
	SplashFade.put_above("res://scenes/Pause.tscn")
