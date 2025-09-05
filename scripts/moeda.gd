extends Area2D

var moedas := 1
@onready var som_moedas = $AudioStreamPlayer
@onready var animacao = $AnimatedSprite2D
@onready var colisao = $CollisionShape2D

func _on_body_entered(body: Node2D) -> void:
	if "player" in body.name:
		colisao.set_deferred("disabled", true)
		if has_node("AnimatedSprite2D"):
			animacao.visible = false
			som_moedas.play()
			await som_moedas.finished
			Global.moedas += moedas
			queue_free()
