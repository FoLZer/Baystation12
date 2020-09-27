/*
 * Acid
 */
 #define ACID_STRONG     2
 #define ACID_MODERATE   1.5
 #define ACID_WEAK       1

/obj/effect/alien/acid
	name = "acid"
	desc = "Burbling corrossive stuff. I wouldn't want to touch it."
	icon = 'icons/mob/xenomorph.dmi'
	icon_state = "acid"

	density = 0
	opacity = 0
	anchored = 1

	var/atom/target
	var/ticks = 0
	var/target_strength = 0

/obj/effect/alien/acid/Initialize(target)
	..()
	if(isturf(target)) // Turf take twice as long to take down.
		target_strength = 8
	else if(istype(target, /obj/machinery/atmospherics/unary/vent_pump))
		target_strength = 2 //Its just welded, what??
	else
		target_strength = 4
	tick()

/obj/effect/alien/acid/proc/tick()
	if(!target)
		qdel(src)

	ticks += 1

	if(ticks >= target_strength)

		audible_message("<span class='notice'><B>[src.target] collapses under its own weight into a puddle of goop and undigested debris!</B></span>")

		if(istype(target, /turf/simulated/wall)) // I hate turf code.
			var/turf/simulated/wall/W = target
			W.dismantle_wall(1)
		else if(istype(target, /obj/machinery/atmospherics/unary/vent_pump))
			var/obj/machinery/atmospherics/unary/vent_pump/VP = target
			VP.welded = 0
			VP.update_icon()
		else
			qdel(target)
		qdel(src)
		return

	switch(target_strength - ticks)
		if(6)
			visible_message("<span class='notice'><B>[src.target] is holding up against the acid!</B></span>")
		if(4)
			visible_message("<span class='notice'><B>[src.target]\s structure is being melted by the acid!</B></span>")
		if(2)
			visible_message("<span class='notice'><B>[src.target] is struggling to withstand the acid!</B></span>")
		if(0 to 1)
			visible_message("<span class='notice'><B>[src.target] begins to crumble under the acid!</B></span>")
	spawn(rand(150, 200)) tick()

/obj/effect/alien/acid/moderate

/obj/effect/alien/acid/strong
