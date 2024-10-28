extends RigidBody2D

@onready var score = %ScoreLabel
@onready var resume = %Resume
var velocity = Vector2(400, 400)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collisionInfo = move_and_collide(velocity * delta)
	if (collisionInfo):
		velocity = velocity.bounce(collisionInfo.get_normal())

func _on_player_border_body_entered(_body:Node2D) -> void:
	score.player2Score += 1
	resume.visible = true
	get_tree().paused = true


func _on_player_2_border_body_entered(_body:Node2D) -> void:
	score.playerScore += 1
	resume.visible = true
	get_tree().paused = true