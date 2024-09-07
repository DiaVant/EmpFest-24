extends CharacterBody2D
var fuel=50
var laser=preload("res://laser.tscn")

const SPEED = 100

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation+=PI/2
	var direction=Input.get_axis("ui_up","ui_down")
	if direction: fuel-=delta*2
	velocity.y+=0.75*delta*(direction*SPEED+(((2000-position.y)**2)/100000))
	if Input.is_action_just_pressed("left_mouse_button"):
		var nyw=laser.instantiate()
		nyw.position=Vector2(0,-500)
		add_child(nyw)
		fuel-=1
	position.x=1250
	var c=move_and_collide(velocity)
	if c and c.get_collider().collision_layer==2:
		fuel-=20
		c.get_collider().queue_free()
	elif c and c.get_collider().collision_layer==4:
		pass #game over
