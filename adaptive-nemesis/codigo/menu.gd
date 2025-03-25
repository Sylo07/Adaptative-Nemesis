extends Control
var musicaFondo = preload("res://sonido/Voicy_New key item.mp3")
var arrow = load("res://imagenes/unnamed (1).png")
@onready var partida_nueva: Button = $VBoxContainer/partidaNueva
@onready var sonidobotones_2: AudioStreamPlayer = $VBoxContainer/sonidobotones2
@onready var continuar: Button = $VBoxContainer/continuar
@onready var opciones: Button = $VBoxContainer/opciones
@onready var salir: Button = $VBoxContainer/salir
@onready var musicafondo: AudioStreamPlayer = $VBoxContainer/musicafondo



func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	partida_nueva.pressed.connect(_on_partida_nueva_pressed)
	continuar.pressed.connect(_on_continuar_pressed)
	opciones.pressed.connect(_on_opciones_pressed)
	salir.pressed.connect(_on_salir_pressed)
	musicafondo.play()
	Input.set_custom_mouse_cursor(arrow)


func _on_partida_nueva_pressed() -> void:
	sonidobotones_2.play()
	get_tree().change_scene_to_file("res://escenas/partida.tscn")

func _on_continuar_pressed():
	sonidobotones_2.play()
	
func _on_opciones_pressed():
	sonidobotones_2.play()
	get_tree().change_scene_to_file("res://escenas/options.tscn")
	
func _on_salir_pressed():
	sonidobotones_2.play()
	get_tree().quit()
