extends Label

@onready var tween = get_tree().create_tween()
var tiempo_sin_input = 0.0
const TIEMPO_LIMITE = 3.0  # Tiempo antes de empezar a desvanecer

func _process(delta):
	if hay_input():
		tiempo_sin_input = 0  # Reinicia el contador si hay entrada
		if modulate.a < 1.0:
			aparecer()
	else:
		tiempo_sin_input += delta
		if tiempo_sin_input >= TIEMPO_LIMITE:
			desvanecer()

func hay_input() -> bool:
	return Input.is_anything_pressed()

func desvanecer():
	tween.stop()  # Detiene cualquier animación en curso
	tween = get_tree().create_tween()  # Crea un nuevo Tween
	tween.tween_property(self, "modulate:a", 0.2, 1.5).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)

func aparecer():
	tween.stop()
	tween = get_tree().create_tween()
	tween.tween_property(self, "modulate:a", 1.0, 0.5).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
