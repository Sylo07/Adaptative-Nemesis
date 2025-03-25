extends Control

@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer

func _ready():
	video_stream_player.play()

func _input(event):
	if event is InputEventKey and event.pressed:
		get_tree().change_scene_to_file("res://escenas/menu.tscn")
