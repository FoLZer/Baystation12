/datum/event/zombie_infestation
	announceWhen	= 90


/datum/event/spider_infestation/setup()
	announceWhen = rand(announceWhen, announceWhen + 60)

/datum/event/spider_infestation/announce()
	GLOB.using_map.level_x_biohazard_announcement(9)

/datum/event/spider_infestation/start()
	var/list/vents = list()
	for(var/obj/machinery/atmospherics/unary/vent_pump/temp_vent in world)
		if(!temp_vent.welded && temp_vent.network && (temp_vent.loc.z in affecting_z))
			if(temp_vent.network.normal_members.len > 50)
				vents += temp_vent

	var/obj/vent = pick(vents)
	new /mob/living/simple_animal/hostile/zombie(vent.loc)
	vents -= vent
