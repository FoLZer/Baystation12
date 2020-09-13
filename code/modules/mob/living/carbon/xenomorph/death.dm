/mob/living/carbon/human/xenomorph/facehugger/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD
	icon_state = "facehugger_dead"

	GLOB.living_mob_list_ -= src

	return ..(gibbed)

/mob/living/carbon/human/xenomorph/larva/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD
	icon_state = "larva_dead"

	GLOB.living_mob_list_ -= src

	return ..(gibbed)

/proc/xgibs(atom/location, list/viruses)
	new /obj/effect/gibspawner/xeno(get_turf(location), viruses)

/mob/living/carbon/human/xenomorph/humanoid/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD

	if(!gibbed)
		playsound(src, 'sound/voice/xenomorph/death_1.ogg', 100)
		visible_message("<B>[src]</B> lets out a waning guttural screech, green blood bubbling from its maw...")
		update_icons()

	return ..(gibbed)

/mob/living/carbon/human/xenomorph/humanoid/praetorian/death()
	..()
	praetorians = (praetorians+1)

/mob/living/carbon/human/xenomorph/gib()
	death(1)
	var/atom/movable/overlay/animation = null
	icon = null
	invisibility = 101

	animation = new(loc)
	animation.icon_state = "blank"
	animation.icon = 'icons/mob/mob.dmi'
	animation.master = src

	flick("gibbed-a", animation)
	xgibs(loc, viruses)
	GLOB.dead_mob_list_ -= src

	spawn(15)
		if(animation)	qdel(animation)
		if(src)			qdel(src)