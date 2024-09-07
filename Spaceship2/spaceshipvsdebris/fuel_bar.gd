extends ProgressBar
@export var player: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	value=50

func _process(delta):
	value=player.fuel
