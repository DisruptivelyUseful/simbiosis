extends SpinBox
signal number

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_spin_timer_timeout():
	value += 1
	emit_signal("number")
