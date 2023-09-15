extends Control



signal spin_box_number
var spinbox_value
var clicks = 0
var sgn = preload("res://Number.tscn")
var sgn1 = preload("res://TrashPrinter.tscn")
var sgn2 = preload("res://Shredder.tscn")
var sgn3 = preload("res://SolarPanels.tscn")
var sgn4 = preload("res://Container.tscn")
var sgn5 = preload("res://Number.tscn")
var initial_position = Vector2(40,40)
var node_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
func _process(delta):
	pass
	
	
func _on_add_other_module_pressed():
	var node = sgn2.instantiate()
	add_child(node)

func _on_add_solar_pressed():
	var node = sgn3.instantiate()
	add_child(node)

func _on_add_container_pressed():
	var node = sgn.instantiate()
	add_child(node)

func _on_add_io_pressed():
	var node = sgn5.instantiate()
	add_child(node)

func _on_add_trash_printer_pressed():
	var node = sgn1.instantiate()
	add_child(node)
	


