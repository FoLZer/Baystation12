proc/create_new_xenos(var/alien_caste,var/target)

	target = get_turf(target)
	if(!target || !alien_caste) return

	var/mob/living/carbon/human/new_alien = new(target)
	new_alien.set_species("Xenomorph [alien_caste]")
	return new_alien

/mob/living/carbon/human/xenomorph/xdrone/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Drone")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)

/mob/living/carbon/human/xenomorph/xsentinel/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Sentinel")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)

/mob/living/carbon/human/xenomorph/xhunter/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Hunter")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)

/mob/living/carbon/human/xenomorph/xwarrior/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Warrior")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)


/mob/living/carbon/human/xenomorph/xqueen/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Queen")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)

/mob/living/carbon/human/xenomorph/xspitter/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Spitter")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)

/mob/living/carbon/human/xenomorph/xlord/New(var/new_loc)
	h_style = "Bald"
	. = ..(new_loc, "Xenomorph Hivelord")
	GLOB.xenomorphs.add_antagonist(src.mind, 1)
