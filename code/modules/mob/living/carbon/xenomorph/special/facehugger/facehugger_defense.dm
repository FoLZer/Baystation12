/mob/living/carbon/human/xenomorph/facehugger/get_unarmed_attack()
	var/retDam = 2
	var/retDamType = BRUTE
	var/retFlags = DAM_SHARP
	var/retVerb = "gnaw"
	var/retSound = 'sound/weapons/bite.ogg'
	var/retMissSound = 'sound/weapons/punchmiss.ogg'

	if(MUTATION_HULK in mutations)
		retDam += 4

	return list("damage" = retDam, "type" = retDamType, "flags" = retFlags, "verb" = retVerb, "sound" = retSound,
				"miss_sound" = retMissSound)