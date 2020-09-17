/datum/species/spider
	name = SPECIES_SPIDER
	name_plural = "Spiders"

	unarmed_types = list(/datum/unarmed_attack/claws/strong/xeno, /datum/unarmed_attack/bite/strong/xeno)
	hud_type = /datum/hud_data/alien
	rarity_value = 3
	health_hud_intensity = 1

	slowdown = -0.4
	total_health = 100

	natural_armour_values = list(melee = 10, bullet = 10, laser = 10, energy = 0, bomb = 0, bio = 10, rad = 100)

	icon_template = 'icons/mob/simple_animal/spider.dmi'

	damage_overlays = null //no icons
	damage_mask =     null //no icons
	blood_mask =      null //no icons

	darksight_range = 8
	darksight_tint = DARKTINT_GREAT

	antaghud_offset_x = -16
	pixel_offset_x = -16
	has_fine_manipulation = 0
	siemens_coefficient = 0.25
	gluttonous = GLUT_ANYTHING
	stomach_capacity = MOB_MEDIUM

//	brute_mod =     0.75 // Hardened carapace.
//	burn_mod =      0.75 // ~~Weak to fire.~~ scratch that, we :original_character: now
	radiation_mod = 0    // No feasible way of curing radiation.
//	virus_immune = 1

	cold_level_1 = 250 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_EMBED | SPECIES_FLAG_NO_TANGLE | VIRUS_IMMUNE
	appearance_flags = HAS_EYE_COLOR

	spawn_flags = SPECIES_IS_RESTRICTED

	reagent_tag = IS_XENOS

	blood_color = "#05ee05"
	flesh_color = "#282846"
	base_color =  "#000000"

	gibbed_anim = "gibbed-a"
	dusted_anim = "dust-a"
	death_message = "lets out a waning guttural screech, green blood bubbling from its maw."
	death_sound = 'sound/voice/hiss6.ogg'

	speech_sounds = list('sound/voice/hiss1.ogg','sound/voice/hiss2.ogg','sound/voice/hiss3.ogg','sound/voice/hiss4.ogg')
	speech_chance = 100

	breath_type = null
	poison_types = null

	vision_flags = SEE_SELF

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		)

	move_intents = list(/decl/move_intent/walk, /decl/move_intent/run)

	has_limbs = list(
		"chest" =  list("path" = /obj/item/organ/external/chest/unbreakable/spider),
		"groin" =  list("path" = /obj/item/organ/external/groin/unbreakable/spider),
		"head" =   list("path" = /obj/item/organ/external/head/unbreakable/spider),
		"l_arm" =  list("path" = /obj/item/organ/external/arm/unbreakable/spider),
		"r_arm" =  list("path" = /obj/item/organ/external/arm/right/unbreakable/spider),
		"l_leg" =  list("path" = /obj/item/organ/external/leg/unbreakable/spider),
		"r_leg" =  list("path" = /obj/item/organ/external/leg/right/unbreakable/spider),
		"l_hand" = list("path" = /obj/item/organ/external/hand/unbreakable/spider),
		"r_hand" = list("path" = /obj/item/organ/external/hand/right/unbreakable/spider),
		"l_foot" = list("path" = /obj/item/organ/external/foot/unbreakable/spider),
		"r_foot" = list("path" = /obj/item/organ/external/foot/right/unbreakable/spider)
		)

	bump_flag = ALIEN
	swap_flags = ~HEAVY
	push_flags = (~HEAVY) ^ ROBOT

	genders = list(MALE)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

/mob/living/carbon/human/proc/spider_create_web()
	set name = "Create web"
	set desc = "Create web where you're standing"
	set category = "Abilities"

	if(incapacitated())
		return

	src.visible_message("<span class='notice'>\The [src] begins to secrete a sticky substance.</span>")

	if(!do_mob(src,src,40))
		return

	new /obj/effect/spider/stickyweb(src.loc)

/mob/living/carbon/human/proc/spider_lay_egg()
	set name = "Lay eggs"
	set desc = "Lay eggs"
	set category = "Abilities"

	var/obj/effect/spider/eggcluster/E = locate() in get_turf(src)
	if(!E && spider_fed > 0 && spider_max_eggs)
		src.visible_message("<span class='notice'>\The [src] begins to lay a cluster of eggs.</span>")
		if(!do_mob(src,src,50))
			return

		E = locate() in get_turf(src)
		if(!E)
			new /obj/effect/spider/eggcluster(loc, src)
			spider_max_eggs--
			spider_fed--

/mob/living/carbon/human/proc/create_cacoon(O as mob in oview(1))
	set name = "Create cacoon"
	set desc = "Create cacoon"
	set category = "Abilities"

	if(!(O in oview(1)))
		to_chat(src, "<span class='alium'>[O] is too far away.</span>")
		return
	if(!O.stat)
		to_chat(src, "<span class='alium'>[O] is moving too fast.</span>")
		return
	src.visible_message("<span class='notice'>\The [src] begins to secrete a sticky substance around \the [O].</span>")
	stop_automated_movement = 1
	walk(src,0)
	if(!do_mob(src,src,50))
		return
	if(O in oview(1) && istype(O.loc, /turf) && get_dist(src,O) <= 1)
		var/obj/effect/spider/cocoon/C = new(O.loc)
		var/large_cocoon = 0
		C.pixel_x = O.pixel_x
		C.pixel_y = O.pixel_y
		for(var/mob/living/M in C.loc)
			large_cocoon = 1
			fed++
			max_eggs++
			src.visible_message("<span class='warning'>\The [src] sticks a proboscis into \the [O] and sucks a viscous substance out.</span>")
			M.forceMove(C)
			C.pixel_x = M.pixel_x
			C.pixel_y = M.pixel_y
			break
		for(var/obj/item/I in C.loc)
			I.forceMove(C)
		for(var/obj/structure/S in C.loc)
			if(!S.anchored)
				S.forceMove(C)
		for(var/obj/machinery/M in C.loc)
			if(!M.anchored)
				M.forceMove(C)
		if(large_cocoon)
			C.icon_state = pick("cocoon_large1","cocoon_large2","cocoon_large3")

/datum/species/spider/drone
	name = "Spider Drone"

	brute_mod =     1.5
	burn_mod =      1.5

	slowdown = -0.8

	rarity_value = 2
	base_color = "#000d1a"

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_PLASMA =   /obj/item/organ/internal/xeno/plasmavessel
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/spider_create_web
		/mob/living/carbon/human/proc/pry_open,
		/mob/living/carbon/human/proc/psychic_whisper,
		/mob/living/carbon/human/proc/transfer_plasma,
		)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_D,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)

/datum/species/spider/can_shred(var/mob/living/carbon/human/H, var/ignore_intent, var/ignore_antag)
	return 1

/datum/species/spider/warrior
	name = "Spider Warrior"

	brute_mod =     0.6
	burn_mod =      0.6

	slowdown = 0.2

	rarity_value = 4
	base_color = "#000d1a"

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/pry_open,
		/mob/living/carbon/human/proc/psychic_whisper
		)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_W,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)
/*
/datum/species/xenos/drone/handle_post_spawn(var/mob/living/carbon/human/H)

	var/mob/living/carbon/human/A = H
	if(!istype(A))
		return ..()
	..()
*/
/datum/species/spider/hunter

	name = "Spider Hunter"
	total_health = 150
	base_color = "#3d0500"

	brute_mod =     0.8
	burn_mod =      0.8

	slowdown = -0.5

	natural_armour_values = list(melee = 35, bullet = 28, laser = 25, energy = 0, bomb = 0, bio = 100, rad = 100)

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		)

	inherent_verbs = list(
			/mob/living/carbon/human/proc/psychic_whisper
		)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_H,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)

/datum/species/spider/nurse
	name = "Spider Nurse"
	base_color = "#00284d"
	total_health = 220


	rarity_value = 8
	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/psychic_whisper,
		/mob/living/carbon/human/proc/lay_egg,
		)

	genders = list(FEMALE)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_N,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)

/datum/species/spider/guard

	name = "Spider Guard"
	total_health = 300
	rarity_value = 6

	slowdown = 0.2

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/pry_open,
		/mob/living/carbon/human/proc/psychic_whisper,
		/mob/living/carbon/human/proc/neurotoxin,
		)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_G,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)

/datum/species/spider/spitter
	name = "Spider Guard"
	total_health = 300
	rarity_value = 6

	slowdown = 0.2

	has_organ = list(
		BP_EYES =     /obj/item/organ/internal/eyes/spider,
		BP_HEART =    /obj/item/organ/internal/heart/open,
		BP_BRAIN =    /obj/item/organ/internal/brain/spider,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/pry_open,
		/mob/living/carbon/human/proc/psychic_whisper,
		/mob/living/carbon/human/proc/neurotoxin,
		)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_SPIDER_S,
		TAG_HOMEWORLD = HOME_SYSTEM_DEEP_SPACE,
		TAG_FACTION =   FACTION_SPIDER,
		TAG_RELIGION =  RELIGION_OTHER
	)
