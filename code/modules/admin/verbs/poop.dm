/mob/verb/poop()
	set category = "IC"
	set name = "Poop"

	if(do_after(src,50,src))
		if(locate(/obj/structure/hygiene/toilet) in get_turf(src))
			poop = world.time + rand(450,750) SECONDS
			playsound(loc,'sound/effects/snap.ogg',50,1)
		else
			poop = world.time + rand(450,750) SECONDS
			playsound(loc,'sound/effects/snap.ogg',50,1)
			new /obj/effect/decal/cleanable/blood/poopsplatter(get_turf(src))