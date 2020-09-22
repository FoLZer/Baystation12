//base type, generic 'worker' type spider with no defining gimmick
/mob/living/simple_animal/hostile/zombie
	name = "Zombie"
	desc = "Uh oh. RUN!!"
	icon = 'icons/mob/simple_animal/zombie.dmi'
	icon_state = "zombie"
	icon_living = "zombie"
	icon_dead = "zombie_dead"
	speak_emote = list("growls")
	emote_hear = list("growls")
	emote_see = list("growls")
	speak_chance = 0
	turns_per_move = 5
	see_in_dark = 8
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	maxHealth = 100
	health = 100
	melee_damage_lower = 9
	melee_damage_upper = 13
	heat_damage_per_tick = 20
	cold_damage_per_tick = 20
	faction = "zombies"
	pass_flags = PASS_FLAG_TABLE
	move_to_delay = 3
	speed = 2.5
	max_gas = list(GAS_PHORON = 1, GAS_CO2 = 5, GAS_METHYL_BROMIDE = 1)
	break_stuff_probability = 25
	pry_time = 8 SECONDS
	pry_desc = "clawing"

	var/busy = 0
	var/hunt_chance = 1 //percentage chance the mob will run to a random nearby tile

//General spider procs
/mob/living/simple_animal/hostile/zombie/Initialize(var/mapload, var/atom/parent)
	get_light_and_color(parent)
	update_icon()
	. = ..()

/mob/living/simple_animal/hostile/zombie/on_update_icon()
	if(stat == DEAD)
		overlays.Cut()
	else
		overlays.Cut()
		var/image/I = image(icon = icon, icon_state = "zombie_eyes")
		overlays += I

/mob/living/simple_animal/hostile/zombie/AttackingTarget()
	. = ..()
	if(isliving(.))
		if(health < maxHealth)
			health = min(health+(0.2 * rand(melee_damage_lower, melee_damage_upper)),maxHealth) //heal a bit on hit
		if(ishuman(.))
			var/mob/living/carbon/human/H = .

			var/target_zone = pick(BP_ALL_LIMBS)
			if((target_zone == BP_HEAD || target_zone == BP_CHEST) && prob(40))
				target_zone = pick(BP_L_ARM, BP_R_ARM)
			if(target_zone == BP_GROIN && prob(40))
				target_zone = pick(BP_L_LEG, BP_R_LEG)

			if(!H.is_infected_with_zombie_virus())
				if(H.wear_suit && istype(H.wear_suit, /obj/item/clothing/suit/armor))
					var/obj/item/clothing/suit/armor/A = H
					if(A.armor["melee"]>=ARMOR_MELEE_KNIVES)
						if(prob(H.zombie_bites*2+2))
							H.infect_zombie_virus(target_zone)
						return
				switch(H.zombie_bites)
					if(0)
						if(prob(20))
							H.infect_zombie_virus(target_zone)
					if(1)
						if(prob(30))
							H.infect_zombie_virus(target_zone)
					if(2)
						if(prob(40))
							H.infect_zombie_virus(target_zone)
					if(3)
						if(prob(60))
							H.infect_zombie_virus(target_zone)
					if(4)
						if(prob(80))
							H.infect_zombie_virus(target_zone)
					if(5)
						H.infect_zombie_virus(target_zone)

			var/obj/item/clothing/suit/space/S = H.get_covering_equipped_item_by_zone(BP_CHEST)
			if(istype(S) && !length(S.breaches))
				return