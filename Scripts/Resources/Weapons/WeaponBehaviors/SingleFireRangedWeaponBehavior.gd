class_name SingleFireRangedWeaponBehavior
extends WeaponBehavior

@export var projectile: PackedScene

func execute(weapon_node: Node, player_node: Node, context: Dictionary = {}) -> void:
	var new_projectile = projectile.instantiate()
	player_node.get_tree().current_scene.add_child(new_projectile)
	new_projectile.global_transform = weapon_node.global_transform
