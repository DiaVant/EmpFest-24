extends Node2D
var cool=0
var Deb = preload("res://debris.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position=Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if cool<=0:
		cool=0.25
		var nextThing=Deb.instantiate()
		nextThing.position=Vector2(0,randi()%1300+200)
		nextThing.velocity=Vector2(1000,-1000)
		add_child(nextThing)
	cool-=delta
