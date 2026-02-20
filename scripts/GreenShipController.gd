extends CharacterBody2D
@export var speed := 800
var already_launched := false

func _process(delta):
	var mouse_pos = get_global_mouse_position()
	var direction = mouse_pos - global_position
	rotation = direction.angle() + deg_to_rad(90)

func _input(event):
	if event.is_action_pressed("left_click") and not already_launched:
		var mouse_pos = get_global_mouse_position()
		var direction = (mouse_pos - global_position).normalized()
		velocity = direction * speed
		
		already_launched = true
		
func _physics_process(delta):
	move_and_slide()
