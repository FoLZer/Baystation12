#define MIN_ACTIVE_TIME 100 //time between being dropped and going idle
#define MAX_ACTIVE_TIME 200

/obj/item/clothing/mask/xenofacehugger
	name = "alien"
	desc = "A gross - looking alien. It is moving!"
	icon = 'infinity/icons/mob/alien.dmi'
	icon_state = "facehugger"
	item_state = "facehugger"
	tint = 7
	throw_range = 1
	w_class = ITEM_SIZE_SMALL
	body_parts_covered = FACE|HEAD

	var/stat = CONSCIOUS //UNCONSCIOUS is the idle state in this case
	var/sterile = 0
	var/strength = 5
	var/mob/living/carbon/target = null
	var/chase_time = 0

/obj/item/clothing/mask/xenofacehugger/New()
	START_PROCESSING(SSobj, src)
	. = ..()

/obj/item/clothing/mask/xenofacehugger/Destroy()
	target = null
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/clothing/mask/xenofacehugger/Process()
	if(stat)
		return
	if(isturf(loc))
		if(!target)
			for(var/mob/living/carbon/human/H in view(src,10))
				if(!istype(H))
					continue
				world.log << "distcheck"
				if(CanHug(H, 0))
					world.log << "canhug"
					chase_time = 28
					target = H
					chase()
					world.log << "chase"
					break
			if(prob(65))
				step(src, pick(GLOB.cardinal))

/obj/item/clothing/mask/xenofacehugger/proc/chase()
	while(target)
		if(!isturf(loc) || stat)
			target = null
			return

		for(var/mob/living/carbon/human/H in view(src,10))
			if(!istype(H))
				continue
			if(H != target)
				if(CanHug(H, TRUE))
					if(get_dist(src,H) < get_dist(src,target))
						target = H
						break

		if(!CanHug(target, FALSE))
			target = null
			return
		else if(get_dist(src,target) < 2)
			Attach(target)
			target = null
			return
		else if(target in view(src,7))
			step_to(src,target)
		else if(chase_time > 0)
			chase_time--
			step_towards(src,target)
		else
			target = null
			return
		sleep(3)

/obj/item/clothing/mask/xenofacehugger/examine()
	..()
	switch(stat)
		if(DEAD, UNCONSCIOUS)
			to_chat(usr, "<span class='danger'>[src] is not moving.</span>")
		if(CONSCIOUS)
			to_chat(usr, "<span class='danger'>[src] seems to be active.</span>")
	if (sterile)
		to_chat(usr, "<span class='danger'>It looks like the proboscis has been removed.</span>")

/obj/item/clothing/mask/xenofacehugger/attackby(obj/item/I, mob/user, params)
	if(I.force)
		Die()

/obj/item/clothing/mask/xenofacehugger/attack_hand(mob/user)
	if((stat == CONSCIOUS && !sterile) && !isxenomorph(user))
		if(Attach(user))
			return
	else
		if(stat == DEAD && isxenomorph(user))
			if(do_after(user, 20, target = src))
				to_chat(user, "You ate a facehugger.")
				qdel(src)
			return
		..()

/obj/item/clothing/mask/xenofacehugger/attack(mob/living/M, mob/user)
	..()
	user.unEquip(src)
	Attach(M)

/obj/item/clothing/mask/xenofacehugger/attack_alien(mob/user) //can be picked up by aliens
	attack_hand(user)
	return

/obj/item/clothing/mask/xenofacehugger/bullet_act(obj/item/projectile/P)
	if(P.damage)
		Die()
	return

/obj/item/clothing/mask/xenofacehugger/fire_act(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300)
		Die()
	return

/obj/item/clothing/mask/xenofacehugger/equipped(mob/living/carbon/human/C)
	Attach(C)

/obj/item/clothing/mask/xenofacehugger/Crossed(mob/living/carbon/human/H)
	..()
	return HasProximity(H)

/obj/item/clothing/mask/xenofacehugger/HasProximity(mob/living/carbon/human/H)
	return Attach(H)

/obj/item/clothing/mask/xenofacehugger/on_found(mob/finder)
	if(stat == CONSCIOUS)
		return HasProximity(finder)
	return FALSE

/obj/item/clothing/mask/xenofacehugger/throw_at(atom/target, range, speed, mob/thrower, spin, diagonals_first = FALSE, datum/callback/callback)
	if(!..())
		return
	if(stat == CONSCIOUS)
		icon_state = "[initial(icon_state)]_thrown"
		addtimer(CALLBACK(src, .proc/set_active_icon_state), 15)

/obj/item/clothing/mask/xenofacehugger/proc/set_active_icon_state()
	if(icon_state == "[initial(icon_state)]_thrown")
		icon_state = "[initial(icon_state)]"

/obj/item/clothing/mask/xenofacehugger/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	..()
	if(stat == CONSCIOUS)
		icon_state = "[initial(icon_state)]"
		Attach(hit_atom)

/obj/item/clothing/mask/xenofacehugger/proc/CanHug(mob/living/carbon/human/C, check = 1)
	if(stat || istype(C.wear_mask, src) || loc == C || C.status_flags & XENO_HOST)
		return FALSE
	if(check)
		if(isturf(src.loc))
			if(!(C in view(src,1)))
				return FALSE
	return TRUE

/mob/living/carbon/human/proc/mouth_is_protected()
	if(head && (istype(head, /obj/item/clothing/head/bio_hood) || istype(head, /obj/item/clothing/head/helmet/riot) || istype(head, /obj/item/clothing/head/helmet/space) || istype(head, /obj/item/clothing/head/welding)))
		return head
	return FALSE

/obj/item/clothing/mask/xenofacehugger/proc/Attach(mob/living/carbon/human/H)
	if(!CanHug(H, FALSE))
		return

	H.visible_message("<span class='danger'>[src] leaps at [H]'s face!</span>", "<span class='userdanger'>[src] leaps at [H]'s face!</span>")

	var/headgear = H.wear_mask
	if(!H.equip_to_slot_if_possible(src, slot_wear_mask))
		if(prob(40))
			H.visible_message("<span class='danger'>[src] smashes against [H]'s [headgear], and rips it off in the process!</span>", "<span class='userdanger'>[src] smashes against yours [headgear], and rips it off in the process!</span>")
			H.unEquip(headgear)
		else
			H.visible_message("<span class='danger'>[src] smashes against [H]'s [headgear], and fails to rip it off!</span>", "<span class='userdanger'>[src] smashes against yours's [headgear], and fails to rip it off!</span>")
		if(prob(33))
			H.visible_message("<span class='danger'>[H]'s [headgear] melts from the acid!</span>", "<span class='userdanger'>Your [headgear] melts from the acid!</span>")
			qdel(headgear)
		if(prob(66))
			Die()
		else
			H.visible_message("<span class='danger'>[src] bounces off of the [headgear]!</span>", "<span class='userdanger'>[src] bounces off of the [headgear]!</span>")
			GoIdle()
		return FALSE
	STOP_PROCESSING(SSobj, src)

	if(!sterile)
		H.Paralyse(MAX_IMPREGNATION_TIME / 8) //something like 30 seconds

	GoIdle() //so it doesn't jump the people that tear it off
	//if(!sterile)
	//	src.flags |= NODROP
	addtimer(CALLBACK(src, .proc/Impregnate, H), rand(MIN_IMPREGNATION_TIME, MAX_IMPREGNATION_TIME))

	return TRUE

/obj/item/clothing/mask/xenofacehugger/proc/Impregnate(mob/living/carbon/human/target, mob/living/carbon/xenomorph/facehugger/FH)
	if(!target || target.stat == DEAD) //was taken off or something
		return

	if(iscarbon(target))
		var/mob/living/carbon/C = target
		if(C.wear_mask != src)
			return

	if(!sterile)
		target.visible_message("<span class='danger'>[src] falls limp after violating [target]'s face!</span>")
		target.unEquip(src)
		Die()
		icon_state = "[initial(icon_state)]_impregnated"
		new /obj/item/alien_embryo(target)
		target.status_flags |= XENO_HOST

	else
		target.visible_message("<span class='danger'>[src] violates [target]'s face!</span>", "<span class='userdanger'>[src] violates your face!</span>")

/obj/item/clothing/mask/xenofacehugger/proc/GoActive()
	if(stat == DEAD || stat == CONSCIOUS)
		return

	stat = CONSCIOUS
	icon_state = "[initial(icon_state)]"

/obj/item/clothing/mask/xenofacehugger/proc/GoIdle()
	if(stat == DEAD || stat == UNCONSCIOUS)
		return

	stat = UNCONSCIOUS
	icon_state = "[initial(icon_state)]_inactive"

	addtimer(CALLBACK(src, .proc/GoActive), rand(MIN_ACTIVE_TIME, MAX_ACTIVE_TIME))

/obj/item/clothing/mask/xenofacehugger/proc/Die()
	if(stat == DEAD)
		return

	icon_state = "[initial(icon_state)]_dead"
	stat = DEAD
	STOP_PROCESSING(SSobj, src)

	visible_message("<span class='warning'>[src] curls up into a ball!</span>")

	return

#undef MIN_ACTIVE_TIME
#undef MAX_ACTIVE_TIME
