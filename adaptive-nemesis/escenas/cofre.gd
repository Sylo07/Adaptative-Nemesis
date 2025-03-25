extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	if Input.is_action_pressed("interacion"):
		animated_sprite.play("abierto")
	else:
		animated_sprite.play("reposo") 
	move_and_slide()
