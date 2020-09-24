/////////////////////////
//~~Bless this mess~~//
/////////////////////

/*
 * BASE TYPE
 */
/obj/item/weapon/rig/command
	name = "command HCM"
	suit_type = "command hardsuit"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	desc = "A specialized hardsuit rig control module issued to command staff of the Expeditionary Corps and their peers."
	icon_state = "command_rig"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	online_slowdown = 0.50
	offline_slowdown = 2
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/command
	helm_type = /obj/item/clothing/head/helmet/space/rig/command
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_heads) //bridge
	allowed = list(/obj/item/weapon/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/device/flashlight,
				   /obj/item/weapon/tank,
				   /obj/item/device/suit_cooling_unit,
				   /obj/item/weapon/storage/secure/briefcase)

/obj/item/clothing/head/helmet/space/rig/command
	light_overlay = "helmet_light_dual"
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	camera = /obj/machinery/camera/network/command
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC, SPECIES_TAJARA, SPECIES_RESOMI) //no available icons for aliens

/obj/item/clothing/suit/space/rig/command
	icon = 'maps/torch/icons/obj/obj_suit_solgov.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC, SPECIES_TAJARA, SPECIES_RESOMI)

/obj/item/clothing/shoes/magboots/rig/command
	icon = 'maps/torch/icons/obj/obj_feet_solgov.dmi'
	item_icons = list(slot_shoes_str = 'maps/torch/icons/mob/onmob_feet_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC, SPECIES_TAJARA, SPECIES_RESOMI)

/obj/item/clothing/gloves/rig/command
	icon = 'maps/torch/icons/obj/obj_hands_solgov.dmi'
	item_icons = list(slot_gloves_str = 'maps/torch/icons/mob/onmob_hands_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC, SPECIES_TAJARA, SPECIES_RESOMI)


/obj/item/weapon/rig/command/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/cooling_unit
		)

/*
 * COMMANDING OFFICER
 */
/obj/item/weapon/rig/command/captain
	name = "captain's HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to captains of the NanoTrasen."
	icon_state = "command_CO_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/captain
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/captain
	allowed = list(/obj/item/weapon/gun, /obj/item/ammo_magazine, /obj/item/device/flashlight, /obj/item/weapon/tank, /obj/item/device/suit_cooling_unit, /obj/item/weapon/storage/secure/briefcase)

	req_access = list(access_captain)

/obj/item/clothing/head/helmet/space/rig/command/captain
	icon_state = "command_CO_rig"
/obj/item/clothing/suit/space/rig/command/captain
	icon_state = "command_CO_rig"

/obj/item/weapon/rig/command/captain/equipped
	initial_modules = list(
//INF		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit)

/*
 * CHIEF MEDICAL OFFICER
 */
/obj/item/weapon/rig/command/cmo
	name = "CMO's HCM"
	suit_type = "medical command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking medical command staff of the NanoTrasen and their peers."

	sprite_sheets = list(
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_rig_back_resomi.dmi',
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/rig_back.dmi'
		)

	icon_state = "command_med_rig"


	chest_type = /obj/item/clothing/suit/space/rig/command/cmo
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/cmo

	allowed = list(/obj/item/weapon/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/device/flashlight,
				   /obj/item/weapon/tank,
			 	   /obj/item/device/suit_cooling_unit,
				   /obj/item/weapon/storage/firstaid,
				   /obj/item/device/scanner/health,
				   /obj/item/stack/medical,
				   /obj/item/roller)

	req_access = list(access_cmo)

/obj/item/clothing/head/helmet/space/rig/command/cmo
	icon_state = "command_med_rig"

/obj/item/clothing/suit/space/rig/command/cmo
	icon_state = "command_med_rig"


/obj/item/weapon/rig/command/cmo/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/defib,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/cooling_unit)

/*
* CHIEF OF SECURITY
*/
/obj/item/weapon/rig/command/hos
	name = "HoS' HCM"
	suit_type = "security command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking security command staff of the NanoTrasen and their peers."
	icon = 'infinity/icons/obj/rig_modules.dmi'
	icon_state = "hos_rig"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

	chest_type = /obj/item/clothing/suit/space/rig/command/hos
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/hos
	boot_type = /obj/item/clothing/shoes/magboots/rig/command/hos
	glove_type = /obj/item/clothing/gloves/rig/command/hos

	allowed = list(/obj/item/weapon/gun,
	 			  /obj/item/ammo_magazine,
	  			  /obj/item/weapon/handcuffs,
	   			  /obj/item/device/flashlight,
	    		  /obj/item/weapon/tank,
				  /obj/item/device/suit_cooling_unit,
				  /obj/item/weapon/melee/baton)

	req_access = list(access_hos)

/obj/item/clothing/head/helmet/space/rig/command/hos
	icon_state = "hos_rig"
	icon = 'infinity/icons/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'infinity/icons/mob/onmob/onmob_head.dmi')
	species_restricted = list(SPECIES_HUMAN) //no available icons for aliens

/obj/item/clothing/suit/space/rig/command/hos
	icon_state = "hos_rig"
	icon = 'infinity/icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'infinity/icons/mob/onmob/onmob_suit.dmi')
	species_restricted = list(SPECIES_HUMAN)

/obj/item/clothing/shoes/magboots/rig/command/hos
	icon_state = "hos_rig"
	icon = 'infinity/icons/obj/clothing/obj_feet.dmi'
	item_icons = list(slot_shoes_str = 'infinity/icons/mob/onmob/onmob_feet.dmi')
	species_restricted = list(SPECIES_HUMAN)

/obj/item/clothing/gloves/rig/command/hos
	icon_state = "hos_rig"
	icon = 'infinity/icons/obj/clothing/obj_hands.dmi'
	item_icons = list(slot_gloves_str = 'infinity/icons/mob/onmob/onmob_hands.dmi')
	species_restricted = list(SPECIES_HUMAN)


/obj/item/weapon/rig/command/hos/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/cooling_unit)

/obj/item/clothing/head/helmet/space/rig/industrial
	camera = /obj/machinery/camera/network/supply
