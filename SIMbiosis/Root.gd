extends Control

var target_id = 0
var clicks = 10
var array = Global.array

var totalDelta = 0.0
var gameTick = 0
# Called when the node enters the scene tree for the first time.

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_speed_slider_value_changed(value):
	Engine.time_scale = value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_toggle_play_pressed():
	var G = $GraphEdit
	var connection_list = G.get_connection_list()
	print(G.get_connection_list())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	totalDelta += delta
	if gameTick < int(totalDelta):
		gameTick = int(totalDelta)
	var number = array[target_id] # 10
	$CanvasLayer/Label.text = str(number) + " Watt-Hours"
	$CanvasLayer/Label2.text = str(clicks) + " Watt-Hours"
	
func _on_timer_timeout():
	for i in range (22):
		target_id += 1
		if target_id == 23:
			target_id = 0
			
func _on_GraphEdit_connection_request(from, from_slot, to, to_slot):
	$GraphEdit.connect_node(from, from_slot, to, to_slot)

func _on_GraphEdit_disconnection_request(from, from_slot, to, to_slot):
	$GraphEdit.disconnect_node(from, from_slot, to, to_slot)
	
	

	


