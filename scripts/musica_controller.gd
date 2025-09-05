extends Node2D

@onready var musica = $AudioStreamPlayer

func musicaPlay():
	musica.play()
