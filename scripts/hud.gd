extends CanvasLayer

@onready var pontos = $containerPontos2/pontos

func _ready() -> void:
	pontos.text = str(Global.moedas)

func _process(delta):
	pontos.text = str(Global.moedas)
