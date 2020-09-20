/proc/xenomorph_queen_exists(var/ignore_self,var/mob/living/carbon/human/self)
	for(var/mob/living/carbon/human/Q in GLOB.living_mob_list_)
		if(self && ignore_self && self == Q)
			continue
		if(Q.species.name != "Xenomorph Queen")
			continue
		if(!Q.key || !Q.client || Q.stat)
			continue
		return 1
	return 0

/mob/living/carbon/human/proc/gain_plasma_xeno(var/amount)

	var/obj/item/organ/internal/xeno/plasmavessel/I = internal_organs_by_name[BP_PLASMA]
	if(!istype(I)) return

	if(amount)
		I.stored_plasma += amount
	I.stored_plasma = max(0,min(I.stored_plasma,I.max_plasma))

// Free abilities.
/mob/living/carbon/human/proc/transfer_plasma_xeno(mob/living/carbon/human/M as mob in oview(1))
	set name = "Transfer Plasma"
	set desc = "Transfer Plasma to another alien"
	set category = "Abilities"

	if (get_dist(src,M) > 1)
		to_chat(src, "<span class='alium'>You need to be closer.</span>")
		return

	var/obj/item/organ/internal/xeno/plasmavessel/I = M.internal_organs_by_name[BP_PLASMA]
	if(!istype(I))
		to_chat(src, "<span class='alium'>Their plasma vessel is missing.</span>")
		return

	var/amount = input("Amount:", "Transfer Plasma to [M]") as num
	if (amount)
		amount = abs(round(amount))
		if(check_alien_ability(amount,0,BP_PLASMA) && !is_ventcrawling)
			M.gain_plasma(amount)
			to_chat(M, "<span class='alium'>[src] has transfered [amount] plasma to you.</span>")
			to_chat(src, "<span class='alium'>You have transferred [amount] plasma to [M].</span>")
	return

// Queen verbs.
/mob/living/carbon/human/proc/lay_egg_xeno()

	set name = "Lay Egg (500)"
	set desc = "Lay an egg to produce huggers to impregnate prey with."
	set category = "Abilities"

	if(!config.alien_eggs_allowed)
		to_chat(src, "You begin to lay an egg, but hesitate. You suspect it isn't allowed.")
		verbs -= /mob/living/carbon/human/proc/lay_egg_xeno
		return

	if(locate(/obj/structure/alien/egg/xeno) in get_turf(src))
		to_chat(src, "There's already an egg here.")
		return

	if(check_alien_ability(500,1,BP_EGG) && !is_ventcrawling)
		visible_message("<span class='alium'><B>[src] has laid an egg!</B></span>")
		new /obj/structure/alien/egg/xeno(loc)

	return

/mob/living/carbon/human/proc/plant_xeno()
	set name = "Plant Weeds (350)"
	set desc = "Plants some alien weeds"
	set category = "Abilities"

	var/obj/structure/alien/A = locate() in loc
	if(A)
		to_chat(src, "<span class='alium'>We can't plant here!</span>")
		return
	if(!do_mob(src, src, 100))
		return
	if(check_alien_ability(350,1,BP_RESIN) && !is_ventcrawling)
		visible_message("<span class='alium'><B>[src] has planted some alien weeds!</B></span>")
		new /obj/structure/alien/weeds/node(loc)
	return

/mob/living/carbon/human/proc/corrosive_acid_xeno(O as obj|turf in oview(1)) //If they right click to corrode, an error will flash if its an invalid target./N
	set name = "Corrosive Acid (75)"
	set desc = "Drench an object in acid, destroying it over time."
	set category = "Abilities"

	if(!(O in oview(1)))
		to_chat(src, "<span class='alium'>[O] is too far away.</span>")
		return

	// OBJ CHECK
	var/cannot_melt
	if(isobj(O))
		var/obj/I = O
		if(I.unacidable)
			cannot_melt = 1
	else
		if(istype(O, /turf/simulated/wall))
			var/turf/simulated/wall/W = O
			if(W.material.flags & MATERIAL_UNMELTABLE)
				cannot_melt = 1
		else if(istype(O, /turf/simulated/floor))
			var/turf/simulated/floor/F = O
			if(F.flooring?.flags & TURF_ACID_IMMUNE)
				cannot_melt = 1

	if(cannot_melt)
		to_chat(src, "<span class='alium'>You cannot dissolve this object.</span>")
		return

	if(check_alien_ability(75,0,BP_ACID) && !is_ventcrawling)
		new /obj/effect/acid(get_turf(O), O)
		visible_message("<span class='alium'><B>[src] vomits globs of vile stuff all over [O]. It begins to sizzle and melt under the bubbling mess of acid!</B></span>")

	return

/mob/living/carbon/human/proc/strong_corrosive_acid_xeno(O as obj|turf in oview(1)) //If they right click to corrode, an error will flash if its an invalid target./N
	set name = "Corrosive Acid (75)"
	set desc = "Drench an object in acid, destroying it over time."
	set category = "Abilities"

	if(!(O in oview(1)))
		to_chat(src, "<span class='alium'>[O] is too far away.</span>")
		return

	// OBJ CHECK
	var/cannot_melt
	if(isobj(O))
		var/obj/I = O
		if(I.unacidable)
			cannot_melt = 1
	else
		if(istype(O, /turf/simulated/wall))
			var/turf/simulated/wall/W = O
			if(W.material.flags & MATERIAL_UNMELTABLE)
				cannot_melt = 1
		else if(istype(O, /turf/simulated/floor))
			var/turf/simulated/floor/F = O
			if(F.flooring?.flags & TURF_ACID_IMMUNE)
				cannot_melt = 1

	if(cannot_melt)
		to_chat(src, "<span class='alium'>You cannot dissolve this object.</span>")
		return

	if(check_alien_ability(75,0,BP_ACID) && !is_ventcrawling)
		new /obj/effect/acid/strong(get_turf(O), O)
		visible_message("<span class='alium'><B>[src] vomits globs of vile stuff all over [O]. It begins to sizzle and melt under the bubbling mess of acid!</B></span>")

	return

/mob/living/carbon/human/proc/moderate_corrosive_acid_xeno(O as obj|turf in oview(1)) //If they right click to corrode, an error will flash if its an invalid target./N
	set name = "Corrosive Acid (75)"
	set desc = "Drench an object in acid, destroying it over time."
	set category = "Abilities"

	if(!(O in oview(1)))
		to_chat(src, "<span class='alium'>[O] is too far away.</span>")
		return

	// OBJ CHECK
	var/cannot_melt
	if(isobj(O))
		var/obj/I = O
		if(I.unacidable)
			cannot_melt = 1
	else
		if(istype(O, /turf/simulated/wall))
			var/turf/simulated/wall/W = O
			if(W.material.flags & MATERIAL_UNMELTABLE)
				cannot_melt = 1
		else if(istype(O, /turf/simulated/floor))
			var/turf/simulated/floor/F = O
			if(F.flooring?.flags & TURF_ACID_IMMUNE)
				cannot_melt = 1

	if(cannot_melt)
		to_chat(src, "<span class='alium'>You cannot dissolve this object.</span>")
		return

	if(check_alien_ability(75,0,BP_ACID) && !is_ventcrawling)
		new /obj/effect/acid/moderate(get_turf(O), O)
		visible_message("<span class='alium'><B>[src] vomits globs of vile stuff all over [O]. It begins to sizzle and melt under the bubbling mess of acid!</B></span>")

	return

/mob/living/carbon/human/proc/neurotoxin_xeno(mob/target as mob in oview())
	set name = "Spit Neurotoxin (50)"
	set desc = "Spits neurotoxin at someone, paralyzing them for a short time if they are not wearing protective gear."
	set category = "Abilities"


	if(stat || paralysis || stunned || weakened || lying || restrained() || buckled)
		to_chat(src, "You cannot spit neurotoxin in your current state.")
		return

	if(!(isxenomorph(target) || isalien(target)))
		visible_message("<span class='warning'>[src] spits neurotoxin at [target]!</span>", "<span class='alium'>You spit neurotoxin at [target].</span>")
		if(!check_alien_ability(50,0,BP_ACID) && !is_ventcrawling)
			return

		var/obj/item/projectile/energy/neurotoxin/A = new /obj/item/projectile/energy/neurotoxin(usr.loc)
		A.launch(target,get_organ_target())

/mob/living/carbon/human/proc/spit_acid_xeno(mob/target as mob in oview())
	set name = "Spit Acid (50)"
	set desc = "Spits some acid at someone, dealing some damage to them if they are not wearing protective gear."
	set category = "Abilities"


	if(stat || paralysis || stunned || weakened || lying || restrained() || buckled)
		to_chat(src, "You cannot spit acid in your current state.")
		return

	if(!(isxenomorph(target) || isalien(target)))
		visible_message("<span class='warning'>[src] spits some acid at [target]!</span>", "<span class='alium'>You spit acid at [target].</span>")
		if(!check_alien_ability(50,0,BP_ACID) && !is_ventcrawling)
			return

		var/obj/item/projectile/energy/alien_acid/A = new /obj/item/projectile/energy/alien_acid(usr.loc)
		A.launch(target,get_organ_target())

/mob/living/carbon/human/proc/resin_xeno() // -- TLE
	set name = "Secrete Resin (75)"
	set desc = "Secrete tough, malleable resin."
	set category = "Abilities"

	var/obj/structure/alien/A = locate() in loc
	var/obj/structure/bed/nest/B = locate() in loc
	var/obj/machinery/door/unpowered/simple/resin/C = locate() in loc
	if((A && !istype(A, /obj/structure/alien/weeds)) || B || C)
		to_chat(src, "<span class='alium'>We can't secrete more resin here!</span>")
		return
	var/choice = input("Choose what you wish to shape.","Resin building") as null|anything in list("resin door","resin wall","resin membrane","resin nest") //would do it through typesof but then the player choice would have the type path and we don't want the internal workings to be exposed ICly - Urist
	if(!choice)
		return

	if(!check_alien_ability(75,1,BP_RESIN) && !is_ventcrawling)
		return

	visible_message("<span class='warning'><B>[src] vomits up a thick purple substance and begins to shape it!</B></span>", "<span class='alium'>You shape a [choice].</span>")
	switch(choice)
		if("resin door")
			new /obj/machinery/door/unpowered/simple/resin(loc)
		if("resin wall")
			new /obj/structure/alien/resin/wall(loc)
		if("resin membrane")
			new /obj/structure/alien/resin/membrane(loc)
		if("resin nest")
			new /obj/structure/bed/nest(loc)
	return

/mob/living/carbon/human/proc/evolve_hivelord_xeno()
	set name = "Evolve to queen (500)"
	set desc = "Produce an interal egg sac capable of spawning children. Only one queen can exist at a time."
	set category = "Abilities"

	if(alien_queen_exists())
		to_chat(src, "<span class='notice'>We already have an active queen.</span>")
		return

	if(check_alien_ability(500))
		visible_message("<span class='alium'><B>[src] begins to twist and contort!</B></span>", "<span class='alium'>You begin to evolve!</span>")
		src.set_species("Xenomorph Queen")

	return

/mob/living/carbon/human/proc/evolve_hunter_xeno()
	set name = "Evolve (300)"
	set desc = "Raise natural speed in cost of some armor. Also, your attacks will be stronger."
	set category = "Abilities"

	if(check_alien_ability(300))
		visible_message("<span class='alium'><B>[src] begins to twist and contort!</B></span>", "<span class='alium'>You begin to evolve!</span>")
		src.set_species("Xenomorph Warrior")

	return

/mob/living/carbon/human/proc/evolve_sentinel_xeno()
	set name = "Evolve (300)"
	set desc = "Evolve an additional acid gland, capable of shooting acid."
	set category = "Abilities"

	if(check_alien_ability(300))
		visible_message("<span class='alium'><B>[src] begins to twist and contort!</B></span>", "<span class='alium'>You begin to evolve!</span>")
		src.set_species("Xenomorph Spitter")

	return

/mob/living/carbon/human/proc/evolve_drone_xeno()
	set name = "Evolve (300)"
	set desc = "Produce a better armor and acid gland."
	set category = "Abilities"

	if(check_alien_ability(300))
		visible_message("<span class='alium'><B>[src] begins to twist and contort!</B></span>", "<span class='alium'>You begin to evolve!</span>")
		src.set_species("Xenomorph Hivelord")

	return

/mob/living/carbon/human/proc/mimic_xeno()
	set name = "Mimic"
	set desc = "Use your internal color sacs to mimic to your environment."
	set category = "Abilities"

	if(check_alien_ability(5))
		if(src.alpha < 235)
			src.alpha = 235
		else
			src.alpha = 0
	return

/mob/living/carbon/human/proc/create_hugger_xeno()
	set name = "Vomit Facehugger (100)"
	set desc = "Vomit a facehugger, capable of latching onto people and stunning them."
	set category = "Abilities"

	if(check_alien_ability(100))
		visible_message("<span class='alium'><B>[src] vomits a strange creature with legs and a tail!</B></span>", "<span class='alium'>You vomit a facehugger!</span>")
		var/obj/item/clothing/mask/facehugger/facehugger = new(get_turf(src))
		src.put_in_hands(facehugger)
	return
