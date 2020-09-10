/datum/species/zombie
	name = SPECIES_ZOMBIE
	name_plural = "Zombies"
	icobase = 'icons/mob/human_races/r_zombie.dmi'
	deform = 'icons/mob/human_races/r_zombie.dmi'
	preview_icon = 'icons/mob/human_races/r_zombie.dmi'
	default_h_style = "Bald"
	unarmed_types = list(/datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)

	darksight_range = 8

	min_age = 25
	max_age = 85

	hidden_from_codex = TRUE

	genders = list(MALE)

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_EMBED | VIRUS_IMMUNE
	spawn_flags = SPECIES_IS_RESTRICTED

	brute_mod = 2
	burn_mod = 1
	oxy_mod = 0
	slowdown = -0.2
	radiation_mod = 0
	stun_mod =      0.75
	paralysis_mod = 2

	speech_sounds = list('sound/voice/growl1.ogg', 'sound/voice/growl2.ogg', 'sound/voice/growl3.ogg')
	speech_chance = 100

	breath_type = null
	poison_types = null

	blood_color = "#3C0068"
	base_color =  "#000000"

	pulse_rate_mod = 0

/datum/species/zombie/handle_post_spawn(mob/living/carbon/human/H)
	return ..()

/datum/species/zombie/handle_pre_spawn(mob/living/carbon/human/H)
	H.drop_l_hand()
	H.drop_r_hand()

	H.equip_to_slot_or_del(new /obj/item/weapon/melee/zombie_hand, slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/melee/zombie_hand/right, slot_r_hand)

	add_zombie(H)

	return ..()

/datum/species/zombie/handle_death(mob/living/carbon/human/H)
	if(istype(H.l_hand, /obj/item/weapon/melee/zombie_hand))
		qdel(H.l_hand)

	if(istype(H.r_hand, /obj/item/weapon/melee/zombie_hand))
		qdel(H.r_hand)

	remove_zombie(H)

	return ..()


/datum/species/zombie/tajaran
	name = SPECIES_ZOMBIE_TAJARA

	icobase = 'icons/mob/human_races/r_zombie_tajaran.dmi'
	deform = 'icons/mob/human_races/r_zombie_tajaran.dmi'

	brute_mod = 2.2
	burn_mod = 1.2
	slowdown = -0.8

	tail = "tajaran_zombie"

	flesh_color = "#afa59e"
	base_color = "#000000"

	min_age = 25
	max_age = 85

	reagent_tag = IS_TAJARA

/datum/species/zombie/skrell
	name = SPECIES_ZOMBIE_SKRELL

	icobase = 'icons/mob/human_races/r_zombie_skrell.dmi'
	deform = 'icons/mob/human_races/r_zombie_skrell.dmi'

	flesh_color = "#8cd7a3"
	base_color = "#000000"

	min_age = 25
	max_age = 150

	reagent_tag = IS_SKRELL

/datum/species/zombie/unathi
	name = SPECIES_ZOMBIE_UNATHI

	icobase = 'icons/mob/human_races/r_zombie_lizard.dmi'
	deform = 'icons/mob/human_races/r_zombie_lizard.dmi'

	brute_mod = 1.80
	burn_mod = 0.90

	tail = "unathi_zombie"

	flesh_color = "#34af10"
	base_color = "#000000"

	min_age = 25
	max_age = 85

	reagent_tag = IS_UNATHI