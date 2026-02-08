extends Button

signal custom_action(action_name)

func _on_pressed() -> void:
	custom_action.emit(text)
