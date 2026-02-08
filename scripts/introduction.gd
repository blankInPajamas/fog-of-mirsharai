extends Control

@onready var bg: TextureRect = $bg
@onready var play_btn: Button = $btn_container/play
@onready var exit_btn: Button = $btn_container/exit

func _ready() -> void:
	bg.modulate.a = 0.7
	play_btn.pressed.connect(_on_btn_pressed.bind(play_btn.text.to_lower()))
	exit_btn.pressed.connect(_on_btn_pressed.bind(exit_btn.text.to_lower()))

func _process(delta: float) -> void:
	pass

func _on_btn_pressed(action_name: String) -> void:
	match action_name:
		'play':
			get_tree().change_scene_to_file("res://scenes/world.tscn")
		'exit':
			get_tree().quit()
