/mob/living/carbon/alien/xenolarva/Process()
	. = ..()
	if(stat != DEAD && auto_progress)
		update_progression(FALSE)

/mob/living/carbon/alien/xenolarva/update_living_sight()
	set_sight(sight&(~(SEE_TURFS|SEE_MOBS|SEE_OBJS)))

//Larvae regenerate health and nutrition from plasma and alien weeds.
/mob/living/carbon/alien/larva/handle_environment(var/datum/gas_mixture/environment)

	if(!environment) return

	var/turf/T = get_turf(src)
	var/obj/structure/alien/weeds/plant = locate() in T
	if(environment.gas["phoron"] > 0 || plant)
		update_progression(FALSE) //it will boost them
		adjustBruteLoss(-1)
		adjustFireLoss(-1)
		adjustToxLoss(-1)
		adjustOxyLoss(-1)