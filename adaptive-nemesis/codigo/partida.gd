extends Node2D
@onready var timer: Timer = $Timer

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	timer.timeout.connect(_on_timer_timeout)
func _input(event):
	if event is InputEventKey:
		timer.start()  # Reinicia el temporizador si hay entrada del usuario

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://escenas/ir_a_por_artefacto.tscn")  # Cambia a la nueva escena
