extends Label
var value = 0
var radius = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _draw():
	draw_circle(Vector2(0, 0), radius, 255)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = $Label2.value + $Label.value
	text = str(value)
	#radius = value * 0.1
