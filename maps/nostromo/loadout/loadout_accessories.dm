/datum/gear/accessory/tags
	display_name = "dog tags"
	path = /obj/item/clothing/accessory/badge/dog_tags

/datum/gear/accessory/pilot_pin
	display_name = "pilot's qualification pin"
	path = /obj/item/clothing/accessory/solgov/specialty/pilot
	allowed_roles = list(/datum/job/captain)

/datum/gear/accessory/armband_security
	allowed_roles = list(/datum/job/officer)

/datum/gear/accessory/armband_cargo
	allowed_roles = list(/datum/job/qm, /datum/job/cargo_tech)

/datum/gear/accessory/armband_medical
	allowed_roles = list(/datum/job/doctor)

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor)

/datum/gear/accessory/armband_engineering
	allowed_roles = list(/datum/job/engineer)

/datum/gear/accessory/ntaward
	allowed_branches = list(/datum/mil_branch/employee)

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/engineer, /datum/job/qm, /datum/job/cargo_tech, /datum/job/janitor)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/officer)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/doctor)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/engineer, /datum/job/qm, /datum/job/cargo_tech, /datum/job/janitor)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/officer)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/doctor)

/datum/gear/head/kittyears
	allowed_roles = RESTRICTED_ROLES
