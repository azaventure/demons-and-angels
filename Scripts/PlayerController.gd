extends CharacterBody2D

@export var body_resource: Body

@onready var _animated_sprite = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.get_vector("move_left", "move_right", "move_up", "move_down") == Vector2.ZERO):
		_animated_sprite.play("idle")
	else:
		var direction = Input.get_axis("move_left", "move_right")
		if(direction > 0):
			_animated_sprite.flip_h = true
		elif(direction < 0):
			_animated_sprite.flip_h = false
		_animated_sprite.play("skip")
	pass

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")	
	velocity = input_direction * body_resource.dexterity * 50
	move_and_slide()
