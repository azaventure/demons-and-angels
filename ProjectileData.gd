class_name ProjectileData
extends Resource

enum MovementPattern {
	STRAIGHT,
	SINUSOIDAL, 
	SPIRAL,
	SLINGSHOT
}

@export var speed: float
@export var size: float
@export var direction: Vector2 # normalized vector
@export var movement_pattern: MovementPattern
