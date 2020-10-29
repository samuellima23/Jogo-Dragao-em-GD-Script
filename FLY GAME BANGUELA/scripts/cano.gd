extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var vel = -100
var cena 

func _ready():
	cena = get_tree().get_current_scene()
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	
func _process(delta):
	if cena.estado == cena.JOGANDO:
		set_pos(get_pos() + Vector2(vel * delta, 0))
		
		if get_pos().x < -100:
			queue_free()


func _on_Area2D_body_enter( body ):
	if body.get_name() == "PASSARO":
		cena.kill()


func _on_ponto_body_enter( body ):
	cena.pontuar()
