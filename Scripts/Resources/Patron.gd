class_name Patron
extends Resource

# the name of this Patron
@export var patron_name: String = ""

# this Patron's type; Angel or Demon 
@export var patron_type: GameEnums.PatronType:
	set(value):
		patron_type = value
		notify_property_list_changed() 

# the type of Demon this Patron is
@export var demon_type: GameEnums.DemonType

# the type of Angel this Patron is
@export var angel_type: GameEnums.AngelType

func _validate_property(property : Dictionary) -> void:
	if property.name == "demon_type" and not patron_type == GameEnums.PatronType.DEMON:
		property.usage = PROPERTY_USAGE_NO_EDITOR
	elif property.name == "angel_type" and not patron_type == GameEnums.PatronType.ANGEL:
		property.usage = PROPERTY_USAGE_NO_EDITOR
