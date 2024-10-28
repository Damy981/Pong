extends Label

@onready var ball = %Ball
@onready var player = %Player
@onready var player2 = %Player2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (Input.is_key_pressed(KEY_SPACE)):
		ball.position.x = 38
		ball.position.y = 98
		player.position.x = 11
		player.position.y = 89		
		player2.position.x = 1142
		player2.position.y = 550
		get_tree().paused = false
		visible = false