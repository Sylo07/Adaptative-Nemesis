extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var texture_progress_bar: TextureProgressBar = $TextureProgressBar

var life = 100
func _physics_process(delta):
	if Input.is_action_pressed("adelante"):
		velocity.x = 600
		animated_sprite.play("correr")  # Reproduce la animación de correr
		animated_sprite.flip_h = false
	elif Input.is_action_pressed("atras"):
		velocity.x = -600
		animated_sprite.play("correr")
		animated_sprite.flip_h = true
	elif Input.is_action_pressed("dash"):
		animated_sprite.play("dash")
		velocity.x = 700
		animated_sprite.flip_h = false
	elif Input.is_action_pressed("roll"):
		animated_sprite.play("roll")
		velocity.x = -600
		animated_sprite.flip_h = true
	elif Input.is_action_pressed("attack1"):
		animated_sprite.play("attack1")
	elif Input.is_action_pressed("attack2"):
		animated_sprite.play("attack2")
	elif Input.is_action_pressed("combo"):
		animated_sprite.play("combo")
	else:
		velocity.x = 0
		animated_sprite.play("quieto")  # Animación de estar quieto

	move_and_slide()
