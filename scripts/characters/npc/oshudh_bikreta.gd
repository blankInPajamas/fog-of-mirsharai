extends CharacterBody2D

@onready var btn_sprite: Sprite2D = $btn_sprite

func _ready() -> void:
	btn_sprite.visible = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		btn_sprite.visible = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	btn_sprite.visible = false
