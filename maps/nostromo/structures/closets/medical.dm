/*
 * Sierra Medical
 */

/obj/structure/closet/secure_closet/CMO_nostromo
	name = "chief medical officer's locker"
	req_access = list(access_cmo)
	closet_appearance = /decl/closet_appearance/secure_closet/cmo

/obj/structure/closet/secure_closet/CMO_nostromo/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/cmo,
		/obj/item/clothing/head/bio_hood/cmo,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
		/obj/item/device/radio/headset/heads/cmo,
		/obj/item/device/radio/headset/heads/cmo/alt,
		/obj/item/device/flash,
		/obj/item/clothing/suit/armor/pcarrier/light,
		/obj/item/device/megaphone,
		/obj/item/weapon/reagent_containers/hypospray/vial,
		/obj/item/device/flashlight/pen,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/device/remote_device/chief_medical_officer,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/weapon/storage/fancy/vials,
	)

/obj/structure/closet/secure_closet/medical_nostromosenior
	name = "surgeon's locker"
	req_access = list(access_medical)
	closet_appearance = /decl/closet_appearance/secure_closet/medical/alt

/obj/structure/closet/secure_closet/medical_nostromosenior/WillContain()
	return list(
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/device/flashlight/pen,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
	)

/obj/structure/closet/secure_closet/medical_nostromo
	name = "doctor's locker"
	req_access = list(access_medical_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/medical

/obj/structure/closet/secure_closet/medical_nostromo/WillContain()
	return list(
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/taperoll/medical,
		/obj/item/device/flashlight/pen,
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/weapon/storage/firstaid/adv,
	)

/obj/structure/closet/wardrobe/medic_nostromo
	name = "medical wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/medic_nostromo/WillContain()
	return list(
		/obj/item/clothing/shoes/white = 2,
		/obj/item/clothing/suit/storage/toggle/labcoat = 2,
		/obj/item/clothing/under/sterile = 2,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med))
	)

/obj/structure/closet/secure_closet/chemical_nostromo
	name = "chemical closet"
	desc = "Store dangerous chemicals in here."
	closet_appearance = /decl/closet_appearance/secure_closet/medical
	req_access = list(access_chemistry)

/obj/structure/closet/secure_closet/chemical_nostromo/WillContain()
	return list(
		/obj/item/weapon/storage/box/pillbottles = 2,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/weapon/storage/box/freezer,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/weapon/storage/box/beakers,
		/obj/item/weapon/storage/box/beakers/insulated,
		/obj/item/weapon/reagent_containers/glass/beaker/large,
		/obj/item/weapon/reagent_containers/glass/beaker/insulated/large
	)
