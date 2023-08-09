extends CharacterBody2D

var speed = 80.0

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	$AnimationTree.get("parameters/blend_position")
	velocity=input_vector*speed
	move_and_slide()
	$AnimationTree.set('parameters/blend_position',input_vector)
