extends CharacterBody2D


const SPEED = 100

func _physics_process(delta: float) -> void:
	var direction=Input.get_axis("ui_up","ui_down")
	velocity.y+=0.75*delta*(direction*SPEED+(((2000-position.y)**2)/100000))
	position.x=1250
	move_and_collide(velocity)
