/*
 * Sierra Service
 */

/obj/structure/closet/chefcloset_nostromo
	name = "chef's closet"
	desc = "It's a storage unit for foodservice equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/chefcloset_nostromo/WillContain()
	return list(
		/obj/item/clothing/head/soft/mime,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/weapon/storage/box/mousetraps = 2,
		/obj/item/clothing/under/rank/chef,
		/obj/item/clothing/gloves/latex,
		/obj/item/weapon/reagent_containers/spray/cleaner,
		/obj/item/clothing/head/chefhat,
		/obj/item/clothing/suit/chef/classic,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/beret/infinity
	)

/obj/structure/closet/jcloset/nostromo
	name = "custodial closet"
	desc = "It's a storage unit for janitorial equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/mixed

/obj/structure/closet/jcloset/nostromo/WillContain()
	return list(
		/obj/item/clothing/head/beret/purple,
		/obj/item/clothing/head/soft/purple,
		/obj/item/clothing/under/rank/janitor,
		/obj/item/clothing/head/soft/darkred,
		/obj/item/clothing/under/rank/janitor/white,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/suit/storage/janjacket,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight/upgraded,
		/obj/item/weapon/caution = 4,
		/obj/item/device/lightreplacer,
		/obj/item/weapon/storage/bag/trash,
		/obj/item/clothing/shoes/dutyboots,
		/obj/item/weapon/grenade/chem_grenade/cleaner = 2,
		/obj/item/weapon/reagent_containers/spray/cleaner,
		/obj/item/clothing/shoes/galoshes,
		/obj/item/weapon/storage/box/detergent,
		/obj/item/holosign_creator,
		/obj/item/clothing/glasses/hud/janitor,
		/obj/item/weapon/storage/belt/janitor,
		/obj/item/clothing/mask/plunger,
		/obj/item/weapon/soap,
		/obj/item/clothing/head/beret/infinity
	)

/obj/structure/closet/secure_closet/bar_nostromo
	name = "bar locker"
	desc = "It's a storage unit for bar equipment."
	req_access = list(access_bar)
	closet_appearance = /decl/closet_appearance/cabinet/secure

/obj/structure/closet/secure_closet/bar_nostromo/WillContain()
	return list(
		/obj/item/clothing/head/soft/black,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/weapon/reagent_containers/food/drinks/shaker,
		/obj/item/glass_jar,
		/obj/item/weapon/book/manual/barman_recipes,
		/obj/item/weapon/storage/box/ammo/flashshells,
		/obj/item/clothing/under/rank/bartender,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/white,
		/obj/item/weapon/storage/box/lights/bulbs/bar,
		/obj/item/clothing/shoes/laceup,
		/obj/item/weapon/storage/pill_bottle/dylovene,
		/obj/item/weapon/reagent_containers/spray/cleaner,
		/obj/item/weapon/reagent_containers/glass/rag,
		/obj/item/weapon/paper/nostromo/bar_permit,
		/obj/item/weapon/gun/projectile/shotgun/doublebarrel/empty,
		/obj/item/clothing/head/beret/infinity
	)

