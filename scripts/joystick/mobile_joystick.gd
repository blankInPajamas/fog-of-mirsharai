extends CanvasLayer

@onready var up_btn: Button = $btn_container/row1/up/up_btn
@onready var left_btn: Button = $btn_container/row1/left/left_btn
@onready var down_btn: Button = $btn_container/row2/down/down_btn
@onready var right_btn: Button = $btn_container/row2/right/right_btn
@onready var int_btn: Button = $interact/int_btn


var is_up: bool = false
var is_down: bool = false
var is_left: bool = false
var is_right: bool = false
var is_int: bool = false


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass


func _on_up_btn_button_down() -> void:
	Input.action_press("ui_up")


func _on_up_btn_button_up() -> void:
	Input.action_release("ui_up")


func _on_left_btn_button_down() -> void:
	Input.action_press("ui_left")


func _on_left_btn_button_up() -> void:
	Input.action_release("ui_left")
	

func _on_down_btn_button_down() -> void:
	Input.action_press("ui_down")


func _on_down_btn_button_up() -> void:
	Input.action_release("ui_down")


func _on_right_btn_button_down() -> void:
	Input.action_press("ui_right")


func _on_right_btn_button_up() -> void:
	Input.action_release("ui_right")
	
func _on_int_btn_button_down() -> void:
	Input.action_press("ui_accept")


func _on_int_btn_button_up() -> void:
	Input.action_release("ui_accept")
