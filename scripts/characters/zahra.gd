extends CharacterBody2D


@onready var animation: AnimatedSprite2D = $AnimatedSprite2D

var speed = 300

func _ready() -> void:
	add_to_group("player")
	print("Zahra groups: ", get_groups())

func _physics_process(delta):
	var direction_x = Input.get_axis("ui_left", "ui_right")  # -1 left, 1 right, 0 none
	var direction_y = Input.get_axis("ui_up", "ui_down")     # -1 up, 1 down, 0 none
	
	var direction = Vector2(direction_x, direction_y)
	
	#print("X: ", direction_x, "  Y: ", direction_y)
	#print("Left pressed: ", Input.is_action_pressed("ui_left"))
	
	if direction != Vector2.ZERO:
		velocity = direction.normalized() * speed
		update_anim(direction)
	else:
		velocity = Vector2.ZERO
		animation.play("idle")
	
	move_and_slide()

func update_anim(direction: Vector2) -> void:
	# Keep your existing animation logic
	if abs(direction.x) > abs(direction.y):
		if direction.x > 0:
			animation.play("right")
		else:
			animation.play("left")
	else:
		if direction.y > 0:
			animation.play("down")
		else:
			animation.play("top")
