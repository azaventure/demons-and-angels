class_name WeaponData
extends Resource

enum WeaponType {
	RANGED,
	MELEE,
	AREA_OF_EFFECT
}

@export_category("Identifiers")
@export var weapon_name: String
@export var type: WeaponType

@export_category("Scene")
@export var weapon_scene: PackedScene

@export_category("Global Stats")
@export_range(1,5,1,"prefer_slider") var damage: int
@export_range(1,5,1,"prefer_slider") var speed: int
@export_range(1,5,1,"prefer_slider") var range: int

@export_category("Abilities")
@export var primary_fire: WeaponBehavior
@export var secondary_fire: WeaponBehavior

# to be executed every tick
@export var passive: WeaponBehavior
