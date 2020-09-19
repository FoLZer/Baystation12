// Unathi clothing

// Skrell clothing

/datum/gear/head/skrell_helmet
	allowed_roles = ARMORED_ROLES

/datum/gear/head/skrell_helmet/New()
	..()
	var/list/helmets = list()
	helmets["black skrellian helmet"] = /obj/item/clothing/head/helmet/skrell
	helmets["navy skrellian helmet"] = /obj/item/clothing/head/helmet/skrell/navy
	helmets["green skrellian helmet"] = /obj/item/clothing/head/helmet/skrell/green
	helmets["tan skrellian helmet"] = /obj/item/clothing/head/helmet/skrell/tan
	gear_tweaks += new/datum/gear_tweak/path(helmets)

// Resomi clothing

/datum/gear/uniform/resomi/eng
	allowed_roles = ENGINEERING_ROLES

/datum/gear/uniform/resomi/sec
	allowed_roles = SECURITY_ROLES

/datum/gear/uniform/resomi/med
	allowed_roles = MEDICAL_ROLES

/datum/gear/eyes/resomi/lenses_sec
	allowed_roles = SECURITY_ROLES

/datum/gear/eyes/resomi/lenses_med
	allowed_roles = MEDICAL_ROLES

// IPC clothing

// Misc clothing

// Tajaran clothing

// Pre-modified gloves

/datum/gear/gloves/dress/modified
	display_name = "modified gloves, dress"
	path = /obj/item/clothing/gloves/color/white/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_TAJARA, SPECIES_UNATHI, SPECIES_YEOSA, SPECIES_EROSAN)