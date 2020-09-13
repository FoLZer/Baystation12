//Xeno Overlays Indexes//////////
#define X_HEAD_LAYER			1
#define X_SUIT_LAYER			2
#define X_L_HAND_LAYER			3
#define X_R_HAND_LAYER			4
#define TARGETED_LAYER			5
#define X_FIRE_LAYER			6
#define X_TOTAL_LAYERS			6
/////////////////////////////////

/mob/living/carbon/human/xenomorph/humanoid/update_icons()
	update_hud()		//TODO: remove the need for this to be here
	for(var/image/I in overlays_standing)
		add_overlay(I)

	if(stat == DEAD)
		//If we mostly took damage from fire
		if(getFireLoss() > 125)
			icon_state = "alien[caste]_husked"
		else
			icon_state = "alien[caste]_dead"
	else if((stat == UNCONSCIOUS && !sleeping) || weakened)
		icon_state = "alien[caste]_unconscious"
	else if(leap_on_click)
		icon_state = "alien[caste]_pounce"
	else if(stat == UNCONSCIOUS || lying || resting)
		icon_state = "alien[caste]_sleep"
	else if(move_intent.name == "Run")
		icon_state = "alien[caste]_running"
	else
		icon_state = "alien[caste]_s"

	if(leaping)
		if(alt_icon == initial(alt_icon))
			var/old_icon = icon
			icon = alt_icon
			alt_icon = old_icon
		icon_state = "alien[caste]_leap"
		pixel_x = -32
		pixel_y = -32
	else
		if(alt_icon != initial(alt_icon))
			var/old_icon = icon
			icon = alt_icon
			alt_icon = old_icon

		pixel_x = default_pixel_x
		pixel_y = default_pixel_y

/mob/living/carbon/human/xenomorph/humanoid/regenerate_icons()
	..()

	update_inv_head(0)
	update_inv_wear_suit(0)
	update_inv_r_hand(0)
	update_inv_l_hand(0)
	update_inv_pockets(0)
	update_hud()
//	update_icons() //Handled in update_transform(), leaving this here as a reminder

/mob/living/carbon/human/xenomorph/humanoid/update_hud()
	//TODO
	if (client)
//		if(other)	client.screen |= hud_used.other		//Not used
//		else		client.screen -= hud_used.other		//Not used
		client.screen |= contents



/mob/living/carbon/human/xenomorph/humanoid/update_inv_wear_suit(var/update_icons=1)
	if(wear_suit)
		var/t_state = wear_suit.item_state
		if(!t_state)	t_state = wear_suit.icon_state
		var/image/standing	= image("icon" = 'icons/mob/mob.dmi', "icon_state" = "[t_state]")

		if(wear_suit.blood_DNA)
			var/t_suit = "suit"
			if( istype(wear_suit, /obj/item/clothing/suit/armor) )
				t_suit = "armor"
			standing.overlays	+= image("icon" = 'icons/effects/blood.dmi', "icon_state" = "[t_suit]blood")

		//TODO
		wear_suit.screen_loc = ui_alien_oclothing
		if (istype(wear_suit, /obj/item/clothing/suit/straight_jacket))
			drop_from_inventory(handcuffed)
			drop_r_hand()
			drop_l_hand()

		overlays_standing[X_SUIT_LAYER]	= standing
	else
		overlays_standing[X_SUIT_LAYER]	= null
	if(update_icons)	queue_icon_update()


/mob/living/carbon/human/xenomorph/humanoid/update_inv_head(var/update_icons=1)
	if (head)
		var/t_state = head.item_state
		if(!t_state)	t_state = head.icon_state
		var/image/standing	= image("icon" = 'icons/mob/mob.dmi', "icon_state" = "[t_state]")
		if(head.blood_DNA)
			standing.overlays	+= image("icon" = 'icons/effects/blood.dmi', "icon_state" = "helmetblood")
		head.screen_loc = ui_alien_head
		overlays_standing[X_HEAD_LAYER]	= standing
	else
		overlays_standing[X_HEAD_LAYER]	= null
	if(update_icons)	queue_icon_update()


/mob/living/carbon/human/xenomorph/humanoid/update_inv_pockets(var/update_icons=1)
	if(l_store)		l_store.screen_loc = ui_storage1
	if(r_store)		r_store.screen_loc = ui_storage2
	if(update_icons)	queue_icon_update()

/mob/living/carbon/human/xenomorph/humanoid/update_fire()
	if(on_fire)
		overlays_standing[X_FIRE_LAYER]		= image("icon"='icons/mob/OnFire.dmi', "icon_state"="Standing")
		add_overlay(overlays_standing[X_FIRE_LAYER])
		return
	else
		overlays_standing[X_FIRE_LAYER]		= null

//Xeno Overlays Indexes//////////
#undef X_HEAD_LAYER
#undef X_SUIT_LAYER
#undef X_L_HAND_LAYER
#undef X_R_HAND_LAYER
#undef TARGETED_LAYER
#undef X_FIRE_LAYER
#undef X_TOTAL_LAYERS
