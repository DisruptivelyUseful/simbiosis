extends CanvasLayer
var radius = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _draw():
	draw_circle(Vector2(0, 0), radius, 182)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radius = get_parent($Label.value)
