extends RigidBody2D



func _ready():

	set_process_input(true)
	
func _input(event):
	print(event)
	if event.is_action_pressed("touch"):
		on_touch()
		
func on_touch():
	apply_impulse(Vector2(0,0), Vector2(0, -1200))
