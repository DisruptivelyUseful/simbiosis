extends GraphNode

var number = Global.clicks
	

	
func _process(delta):
	pass
	
func _on_Control_close_request():
	queue_free()

func _on_Control_resize_request(new_minsize):
	size = new_minsize

