/*
 * Sierra Misc
 */

/decl/closet_appearance/secure_closet/nostromo/crew
	color = COLOR_GUNMETAL
	extra_decals = list(
		"stripe_vertical_mid_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/nostromo/corporate
	color = COLOR_GUNMETAL
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/nostromo/corporate/iaa
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_OFF_WHITE,
		"command" = COLOR_OFF_WHITE
	)

/decl/closet_appearance/crate/present
	color = COLOR_RED_GRAY
	extra_decals = list(
		"crate_bracing" = COLOR_RED_GRAY,
		"lid_stripes" = COLOR_GREEN_GRAY,
		"crate_stripe_left" = COLOR_GREEN_GRAY,
		"crate_stripe_right" = COLOR_GREEN_GRAY
	)

//equipment closets that everyone on the crew or in research can access, for storing things securely

/obj/structure/closet/secure_closet/crew
	name = "crew equipment locker"
	closet_appearance = /decl/closet_appearance/secure_closet/nostromo/crew

/obj/structure/closet/secure_closet/crew/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/box
	)

/obj/structure/closet/secure_closet/crew/research
	name = "research equipment locker"
	closet_appearance = /decl/closet_appearance/white

/obj/structure/closet/white_nostromo
	closet_appearance = /decl/closet_appearance/white

/obj/structure/closet/secure_closet/white_nostromo
	closet_appearance = /decl/closet_appearance/secure_closet/white

/obj/structure/closet/secure_closet/personal/patient
	closet_appearance = /decl/closet_appearance/secure_closet/patients

/obj/structure/closet/secure_closet/medical2
	closet_appearance = /decl/closet_appearance/secure_closet/white

/obj/structure/closet/crate/present
	name = "present crate"
	desc = "Wow, a present!"
	closet_appearance = /decl/closet_appearance/crate/present

