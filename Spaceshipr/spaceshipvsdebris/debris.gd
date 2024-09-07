extends CharacterBody2D
var die=0
const SPEED = 100

func _physics_process(delta: float) -> void:
	velocity+=delta*(Vector2(1250,2000)-position).normalized()*((velocity.length()**2)/(position-Vector2(1250,2000)).length())
	move_and_slide()
	if position.x>3000 or position.y>2000:
		die=1
	if die:
		queue_free()
		
