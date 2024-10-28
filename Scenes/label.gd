extends Label

var playerScore
var player2Score
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playerScore = 0
	player2Score = 0

func _process(_delta: float) -> void:
		text = "Player 1: %s                                   Player 2: %s" % [playerScore, player2Score]