/datum/gear/suit/medcoat
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/poncho
	display_name = "poncho selection"
	path = /obj/item/clothing/suit/poncho/colored

/datum/gear/suit/security_poncho
	allowed_roles = list(/datum/job/officer)

/datum/gear/suit/medical_poncho
	allowed_roles = list(/datum/job/doctor)

/datum/gear/suit/engineering_poncho
	allowed_roles = list(/datum/job/engineer)

/datum/gear/suit/cargo_poncho
	allowed_roles = list(/datum/job/qm, /datum/job/cargo_tech)

/datum/gear/suit/wintercoat/engineering
	display_name = "engineering winter coat"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/suit/wintercoat/cargo
	display_name = "cargo winter coat"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/suit/wintercoat/medical
	display_name = "medical winter coat"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/wintercoat/security
	display_name = "security winter coat"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/security
	allowed_roles = SECURITY_ROLES

/datum/gear/suit/labcoat
	allowed_roles = STERILE_ROLES

/datum/gear/suit/militaryjacket
	display_name = "military jacket"
	path = /obj/item/clothing/suit/storage/tgbomber/militaryjacket

/datum/gear/suit/sec_jacket
	allowed_roles = list(/datum/job/officer)
