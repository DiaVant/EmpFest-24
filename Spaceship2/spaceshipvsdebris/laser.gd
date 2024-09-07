extends Area2D
var die=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	die=0.1

func _process(delta: float) -> void:
	if die<=0:
		queue_free()
	else:
		die-=delta
		for i in get_overlapping_bodies():
			if i.collision_layer==2:
				i.queue_free()
