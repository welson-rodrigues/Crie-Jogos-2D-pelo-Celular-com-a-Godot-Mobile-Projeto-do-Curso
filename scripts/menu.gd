extends Control

func _ready() -> void:
	MusicaController.musicaPlay()


func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/nivel_1.tscn")


func _on_sair_pressed() -> void:
	get_tree().quit()
