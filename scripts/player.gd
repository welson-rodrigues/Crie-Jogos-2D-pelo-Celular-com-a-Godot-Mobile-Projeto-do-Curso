extends CharacterBody2D

# Variáveis
var velocidade = 200

# Atalhos
@onready var animacao = $AnimatedSprite2D

func _physics_process(delta):
	var direcao = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = direcao * velocidade
	
	move_and_slide()
	
	atualizarAnimacao(direcao)
	
func atualizarAnimacao(direcao):
	var novaAnimacao = "idle"
	
	if direcao != Vector2.ZERO:
		if direcao.y > 0:
			novaAnimacao = "walk_down"
		elif direcao.y < 0:
			novaAnimacao = "walk_up"
		elif direcao.x > 0:
			novaAnimacao = "walk_right"
		elif direcao.x < 0:
			novaAnimacao = "walk_left"
			
	if animacao.animation != novaAnimacao:
		animacao.play(novaAnimacao)
