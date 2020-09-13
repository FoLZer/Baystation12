/mob/living/carbon/human/xenomorph/larva
	name = "alien larva"
	real_name = "alien larva"
	icon_state = "larva0"
	pass_flags = PASS_FLAG_TABLE

	maxHealth = 25
	health = 25
	storedPlasma = 50
	max_plasma = 50

	density = 0
	mob_size = MOB_SMALL
	var/amount_grown = 0
	var/max_grown = 200
	var/time_of_birth

//This is fine right now, if we're adding organ specific damage this needs to be updated
/mob/living/carbon/human/xenomorph/larva/Initialize()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien larva")
		name = "alien larva ([rand(1, 1000)])"
	real_name = name
	regenerate_icons()
	. = ..()

//This needs to be fixed
/mob/living/carbon/human/xenomorph/larva/Stat()
	..()
	if(statpanel("Status"))
		stat(null, "Progress: [amount_grown]/[max_grown]")

/mob/living/carbon/human/xenomorph/larva/toggle_throw_mode()
	return

/mob/living/carbon/human/xenomorph/larva/throw_mode_on()
	return

/mob/living/carbon/human/xenomorph/larva/throw_mode_off()
	return

/mob/living/carbon/human/xenomorph/larva/throw_item(atom/target)
	return

/mob/living/carbon/human/xenomorph/larva/start_pulling(atom/movable/AM)//Prevents mouse from pulling things
	to_chat(src, "<span class='warning'>You are too small to pull anything.</span>")
	return

/mob/living/carbon/human/xenomorph/larva/swap_hand()
	return

/mob/living/carbon/human/xenomorph/larva/movement_delay()
	return (move_delay_add + config.alien_delay - 1)