/*----------------------------------------
This is emryo growth procs
----------------------------------------*/

var/const/ALIEN_AFK_BRACKET = 450 // 45 seconds

/obj/item/alien_embryo
	name = "alien embryo"
	desc = "All slimy and yuck."
	icon = 'icons/mob/alien.dmi'
	icon_state = "larva0_dead"
	var/mob/living/affected_mob
	var/mob/living/baby
	var/controlled_by_ai = TRUE
	var/stage_counter = 0
	var/stage = 0

/obj/item/alien_embryo/Initialize()
	..()
	if(istype(loc, /mob/living/carbon))
		affected_mob = loc
		START_PROCESSING(SSobj, src)
		AddInfectionImages(affected_mob)
	else
		qdel(src)

/obj/item/alien_embryo/Destroy()
	if(affected_mob)
		affected_mob.status_flags &= ~(XENO_HOST)
		STOP_PROCESSING(SSobj, src)
		RemoveInfectionImages(affected_mob)
	affected_mob = null
	baby = null
	return ..()

/obj/item/alien_embryo/Process()
	if(!affected_mob) // The mob we were gestating in is straight up gone, we shouldn't be here
		STOP_PROCESSING(SSobj, src)
		qdel(src)
		return FALSE
	if(!controlled_by_ai)
		if(istype(loc, /turf) || !(contents.len))
			if(baby)
				var/atom/movable/mob_container
				mob_container = baby
				mob_container.forceMove(get_turf(affected_mob))
				baby.reset_view()
			qdel(src)
			return FALSE
	if(loc != affected_mob)
		affected_mob.status_flags &= ~(XENO_HOST)
		STOP_PROCESSING(SSobj, src)
		RemoveInfectionImages(affected_mob)
		affected_mob = null
		return FALSE

	if(stage < 5)
		if(affected_mob.stat == DEAD)
			if(stage < 4)
				if(!controlled_by_ai)
					to_chat(baby, "<span class='userdanger'> Your host died, so and you.</span>")
					baby.death()
					if(baby.key)
						baby.ghostize(can_reenter_corpse = FALSE, bancheck = TRUE)
				qdel(src)
				return
		if(stage_counter > 60)
			stage++
			stage_counter = 0
			spawn(0)
				RefreshInfectionImage()
	stage_counter++

	switch(stage)
		if(2)
			if(prob(2))
				var/choice = pick("Your chest hurts a little bit", "Your stomach hurts")
				to_chat(affected_mob, "<span class='warning'>[choice].</span>")
		if(3)
			if(prob(2))
				var/choice = pick("Your throat feels sore", "Mucous runs down the back of your throat")
				to_chat(affected_mob, "<span class='warning'>[choice].</span>")
			else if(prob(1))
				to_chat(affected_mob, "<span class='warning'>Your muscles ache.</span>")
			else if(prob(2))
				affected_mob.emote(pick("sneeze", "cough"))
		if(4)
			if(prob(1))
				if(!affected_mob.stat)
					affected_mob.visible_message("<span class='danger'>\The [affected_mob] starts shaking uncontrollably!</span>", \
                                                 "<span class='danger'>You start shaking uncontrollably!</span>")
					affected_mob.Paralyse(10)
					affected_mob.make_jittery(110)
			if(prob(2))
				var/choice = pick("Your chest hurts badly", "It becomes difficult to breathe", "Your heart starts beating rapidly, and each beat is painful")
				to_chat(affected_mob, "<span class='warning'>[choice].</span>")
			if(prob(33))
				affected_mob.adjustToxLoss(2)
		if(5)
			to_chat(affected_mob, "<span class='danger'>You feel something tearing its way out of your stomach...</span>")
			affected_mob.updatehealth()
			if(controlled_by_ai)
				if(prob(70))
					if(ishuman(affected_mob))
						var/mob/living/carbon/human/H = affected_mob
						H.apply_damage(rand(20, 30), BRUTE, BP_CHEST)
						H.emote("scream")
					else
						affected_mob.adjustBruteLoss(15)
			AttemptGrow()

/obj/item/alien_embryo/proc/AttemptGrow()
	if(!affected_mob)
		return

	// To stop clientless larva, we will check that our host has a client
	// if we find no ghosts to become the alien. If the host has a client
	// he will become the alien but if he doesn't then we will set the stage
	// to 4, so we don't do a process heavy check everytime.
	var/list/candidates = list()
	candidates = get_active_candidates()
	var/client/larva_candidate
	if(candidates.len)
		larva_candidate = pick(candidates)
	else if(affected_mob.client)
		larva_candidate = affected_mob.key

	if(!larva_candidate)
		stage = 4 // mission failed we'll get em next time
		stage_counter = 0
		return

	affected_mob.death()
	if(ishuman(affected_mob)) // we're fucked. no chance to revive a person
		var/mob/living/carbon/human/H = affected_mob
		H.apply_damage(rand(150, 250), BRUTE, BP_CHEST)
		H.adjustToxLoss(rand(180, 200)) // Bad but effective solution.
		H.internal_organs_by_name[BP_HEART].damage = rand(50, 100)
		H.rupture_lung()
	var/mob/living/carbon/alien/xenolarva/new_xeno = new(get_turf(affected_mob))
	new_xeno.key = larva_candidate
	new_xeno.update_icons()
	new_xeno.playsound_local(null, 'sound/voice/xenomorph/big_hiss.ogg', 100) // To get the player's attention

	affected_mob.visible_message("<span class='userdanger'>[new_xeno] crawls out of [affected_mob]!</span>")
	affected_mob.add_overlay(image('icons/mob/alien.dmi', loc = affected_mob, icon_state = "bursted_stand"))
	STOP_PROCESSING(SSobj, src)
	qdel(src)

/*----------------------------------------
Proc: RefreshInfectionImage()
Des: Removes all infection images from aliens and places an infection image on all infected mobs for aliens.
----------------------------------------*/
/obj/item/alien_embryo/proc/RefreshInfectionImage()
	for(var/mob/living/carbon/human/H in GLOB.player_list)
		if(isxenomorph(H))
			if(H.client)
				for(var/image/I in H.client.images)
					if(dd_hasprefix_case(I.icon_state, "infected"))
						qdel(I)
				for(var/mob/living/L in GLOB.living_mob_list_)
					if(iscorgi(L) || iscarbon(L))
						if(L.status_flags & XENO_HOST)
							var/I = image('icons/mob/alien.dmi', loc = L, icon_state = "infected[stage]")
							H.client.images += I

/*----------------------------------------
Proc: AddInfectionImages(C)
Des: Checks if the passed mob (C) is infected with the alien egg, then gives each alien client an infected image at C.
----------------------------------------*/
/obj/item/alien_embryo/proc/AddInfectionImages(mob/living/C)
	if(C)
		for(var/mob/living/carbon/human/H in GLOB.alien_list)
			if(isxenomorph(H))
				if(H.client)
					if(C.status_flags & XENO_HOST)
						var/I = image('icons/mob/alien.dmi', loc = C, icon_state = "infected[stage]")
						H.client.images += I

/*----------------------------------------
Proc: RemoveInfectionImage(C)
Des: Removes the alien infection image from all aliens in the world located in passed mob (C).
----------------------------------------*/

/obj/item/alien_embryo/proc/RemoveInfectionImages(mob/living/C)
	if(C)
		for(var/mob/living/carbon/human/H in GLOB.alien_list)
			if(isxenomorph(H))
				if(H.client)
					for(var/image/I in H.client.images)
						if(I.loc == C)
							if(dd_hasprefix_case(I.icon_state, "infected"))
								qdel(I)
