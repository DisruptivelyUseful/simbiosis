extends GraphNode
var number
signal clicks_changed(old_value, new_value)
var clicks = 10
signal shoot(n, value)
var n = preload("res://Number.tscn")



func _ready():
	pass
	

func _process(delta):
	pass
	
func _on_Control_close_request():
	queue_free()

func _on_Control_resize_request(new_minsize):
	size = new_minsize

func _on_timer_timeout():
	shoot.emit(n)
