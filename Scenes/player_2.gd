extends CharacterBody2D


const SPEED = 300.0

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = 0
	if (Input.is_key_pressed(KEY_UP)):
		direction = -1
	if (Input.is_key_pressed(KEY_DOWN)):
		direction = 1
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
