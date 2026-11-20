class_name Body
extends Resource

# the name of this Body
@export var body_name: String

# affects physical power and damage
@export_range(0, 7, 1, "prefer_slider") var strength: int

# affects durability and health
@export_range(0, 7, 1, "prefer_slider") var vitality: int

# affects movement speed and use speed 
@export_range(0, 7, 1, "prefer_slider") var dexterity: int

# affects the strength of the patron's buffs
@export_range(0, 7, 1, "prefer_slider") var spirit: int

# this Body's Patron
@export var patron: Patron
 
