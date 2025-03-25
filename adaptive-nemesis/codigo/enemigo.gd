extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	velocity.x = 0
	animated_sprite.play("idle")  # Animación de estar quieto
	move_and_slide()
	if Input.is_action_just_pressed("interacion"):
		DialogueManager.show_example_dialogue_balloon(load("res://codigo/enemigo.dialogue"), "start")
