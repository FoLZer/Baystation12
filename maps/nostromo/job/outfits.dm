///Job Outfits

/*
nostromo OUTFITS
Keeping them simple for now, just spawning with basic EC uniforms, and pretty much no gear. Gear instead goes in lockers. Keep this in mind if editing.
*/

/decl/hierarchy/outfit/job/nostromo
	name = OUTFIT_JOB_NAME("Nostromo Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
//	pda_type = /obj/item/modular_computer/pda
	pda_type = null //we are using PDAs from loadout
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/nostromo/crew
	name = OUTFIT_JOB_NAME("Nostromo Crew Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew
	uniform = /obj/item/clothing/under/solgov/utility
	shoes = /obj/item/clothing/shoes/dutyboots


	///////////
	//COMMAND//
	///////////

/decl/hierarchy/outfit/job/nostromo/crew/command
	name = OUTFIT_JOB_NAME("Nostromo Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com
//	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/nostromo/crew/command/captain
	name = OUTFIT_JOB_NAME("Captain - Nostromo")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/captain
	l_ear = /obj/item/device/radio/headset/heads/nostromo_captain
	shoes = /obj/item/clothing/shoes/brown
	head = /obj/item/clothing/head/caphat
	id_type = /obj/item/weapon/card/id/nostromo/gold
//	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/nostromo/crew/command/captain/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/nostromo/crew/command/cmo
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Nostromo")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/brown
	id_type = /obj/item/weapon/card/id/nostromo/crew/medical
//	pda_type = /obj/item/modular_computer/pda/heads/cmo
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/nostromo/crew/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/nostromo/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer - Nostromo")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	shoes = /obj/item/clothing/shoes/workboots/alt
	l_ear = /obj/item/device/radio/headset/heads/ce
	id_type = /obj/item/weapon/card/id/nostromo/crew/engineering
//	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/nostromo/crew/command/chief_engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/nostromo/crew/command/hos
	name = OUTFIT_JOB_NAME("Head of Security - Nostromo")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security/corp
	shoes = /obj/item/clothing/shoes/jackboots
	id_type = /obj/item/weapon/card/id/nostromo/crew/security
//	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/nostromo/crew/command/hos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

	///////////////
	//ENGINEERING//
	///////////////

/decl/hierarchy/outfit/job/nostromo/crew/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
//	pda_type = /obj/item/modular_computer/pda/engineering
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/nostromo/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/nostromo/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Nostromo")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots/alt
	id_type = /obj/item/weapon/card/id/nostromo/crew/engineering

/decl/hierarchy/outfit/job/nostromo/crew/engineering/engineer/atmos
	name = OUTFIT_JOB_NAME("Engineer (Atmos) - Nostromo")
	uniform = /obj/item/clothing/under/rank/atmospheric_technician

/decl/hierarchy/outfit/job/nostromo/crew/engineering/engineer/maints
	name = OUTFIT_JOB_NAME("Engineer (Maints) - Nostromo")
	uniform = /obj/item/clothing/under/hazard

	////////////
	//SECURITY//
	////////////

/decl/hierarchy/outfit/job/nostromo/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/security
	l_ear = /obj/item/device/radio/headset/headset_sec
//	pda_type = /obj/item/modular_computer/pda/security
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/nostromo/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/nostromo/crew/security/officer
	name = OUTFIT_JOB_NAME("Security Officer - Nostromo")
	uniform = /obj/item/clothing/under/rank/security/corp
	shoes = /obj/item/clothing/shoes/jackboots
	id_type = /obj/item/weapon/card/id/nostromo/crew/security

	///////////
	//MEDICAL//
	///////////

/decl/hierarchy/outfit/job/nostromo/crew/medical
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	shoes = /obj/item/clothing/shoes/white
//	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/nostromo/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor
	name = OUTFIT_JOB_NAME("Doctor")
	uniform = /obj/item/clothing/under/rank/medical
	id_type = /obj/item/weapon/card/id/nostromo/crew/medical

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor/orderly
	name = OUTFIT_JOB_NAME("Orderly")
	uniform = /obj/item/clothing/under/rank/orderly

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor/mortus
	name = OUTFIT_JOB_NAME("Mortician")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/black

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Nostromo")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	l_hand = /obj/item/weapon/storage/firstaid/adv
	belt = /obj/item/weapon/storage/belt/medical/emt
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor/nurse
	name = OUTFIT_JOB_NAME("Nurse - Nostromo")
	suit = null

/decl/hierarchy/outfit/job/nostromo/crew/medical/doctor/nurse/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		if(prob(50))
			uniform = /obj/item/clothing/under/rank/nursesuit
		else
			uniform = /obj/item/clothing/under/rank/nurse
		head = /obj/item/clothing/head/nursehat
	else
		uniform = /obj/item/clothing/under/rank/medical/scrubs/purple
		head = null


	/////////
	//CARGO//
	/////////

/decl/hierarchy/outfit/job/nostromo/crew/supply
	l_ear = /obj/item/device/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/brown
//	pda_type = /obj/item/modular_computer/pda/cargo
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/supply

/decl/hierarchy/outfit/job/nostromo/crew/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/nostromo/crew/supply/quartermaster
	name = OUTFIT_JOB_NAME("Quartermaster")
	l_ear = /obj/item/device/radio/headset/nostromo_quartermaster
	uniform = /obj/item/clothing/under/rank/cargo
	id_type = /obj/item/weapon/card/id/nostromo/crew/supply/quartermaster

/decl/hierarchy/outfit/job/nostromo/crew/supply/tech
	name = OUTFIT_JOB_NAME("Cargo Technician")
	uniform = /obj/item/clothing/under/rank/cargotech
	id_type = /obj/item/weapon/card/id/nostromo/crew/supply

	///////////
	//SERVICE//
	///////////

/decl/hierarchy/outfit/job/nostromo/crew/service
	l_ear = /obj/item/device/radio/headset/headset_service
	shoes = /obj/item/clothing/shoes/black
//	pda_type = /obj/item/modular_computer/pda
	hierarchy_type = /decl/hierarchy/outfit/job/nostromo/crew/service

/decl/hierarchy/outfit/job/nostromo/crew/service/janitor
	name = OUTFIT_JOB_NAME("Janitor - Nostromo")
	uniform = /obj/item/clothing/under/rank/janitor
	id_type = /obj/item/weapon/card/id/nostromo/crew/service/janitor

/decl/hierarchy/outfit/job/nostromo/crew/service/cook
	name = OUTFIT_JOB_NAME("Chef - Nostromo")
	uniform = /obj/item/clothing/under/rank/chef
	id_type = /obj/item/weapon/card/id/nostromo/crew/service/chef

/decl/hierarchy/outfit/job/nostromo/crew/service/bartender
	name = OUTFIT_JOB_NAME("Bartender - Nostromo")
	uniform = /obj/item/clothing/under/rank/bartender
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/nostromo/crew/service/bartender
	l_pocket = /obj/item/music_tape/custom

	/////////
	//OTHER//
	/////////
/decl/hierarchy/outfit/job/nostromo/ert
	name = OUTFIT_JOB_NAME("ERT - Nostromo")
	uniform = /obj/item/clothing/under/ert_outfit
	head = /obj/item/clothing/head/beret/centcom/officer
	gloves = /obj/item/clothing/gloves/thick/combat/marine
	id_type = /obj/item/weapon/card/id/centcom/ERT
//	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/combat/marine

/decl/hierarchy/outfit/job/nostromo/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Nostromo")
	head = /obj/item/clothing/head/beret/centcom/captain

