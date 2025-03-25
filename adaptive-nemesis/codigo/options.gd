extends Control

@onready var sonidobotones_2: AudioStreamPlayer = $VBoxContainer/sonidobotones2
@onready var atras: Button = $VBoxContainer/atras

func _ready():
	atras.pressed.connect(_on_atras_pressed)

func _on_atras_pressed() -> void:
	sonidobotones_2.play()
	get_tree().change_scene_to_file("res://menu.tscn")
