extends RigidBody2D

@onready var score = %ScoreLabel
@onready var resume = %Resume
@onready var scoreSong = %ScoreSong
@onready var paddleSong = %PaddleSong
@onready var wallSong = %WallSong

var velocity = Vector2(400, 400)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collisionInfo = move_and_collide(velocity * delta)
	if (collisionInfo):
		velocity = velocity.bounce(collisionInfo.get_normal())

func _on_player_border_body_entered(_body:Node2D) -> void:
	score.player2Score += 1
	resume.visible = true
	scoreSong.play()
	get_tree().paused = true


func _on_player_2_border_body_entered(_body:Node2D) -> void:
	score.playerScore += 1
	resume.visible = true
	scoreSong.play()
	await scoreSong.finished
	get_tree().paused = true

func _on_area_2d_body_entered(body:Node2D) -> void:
	if (body.name == "Ball"):
		wallSong.play()

func _on_area_2d_player_2_body_entered(body:Node2D) -> void:
	if (body.name == "Ball"):
		paddleSong.play()

func _on_area_2d_player_body_entered(body:Node2D) -> void:
	if (body.name == "Ball"):
		paddleSong.play()

