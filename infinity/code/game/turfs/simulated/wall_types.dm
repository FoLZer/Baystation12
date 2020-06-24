//Adherents crystal walls (used to in away_inf/adherent_base.dm*)

/turf/simulated/wall/crystal/New(var/newloc)
	..(newloc,MATERIAL_CRYSTAL)

/turf/simulated/wall/crystal/attackby()
	return

/turf/simulated/wall/crystal/r_wall
	icon_state = "rgeneric"

/turf/simulated/wall/crystal/r_wall/New(var/newloc)
	..(newloc,MATERIAL_CRYSTAL, MATERIAL_CRYSTAL)


/turf/simulated/wall/concrete
	icon_state = "titanium"
	noblend_objects = list(/obj/machinery/door/window, /obj/machinery/door/blast/regular/evacshield)

/turf/simulated/wall/concrete/New(var/newloc)
	..(newloc,MATERIAL_CONCRETE)

/turf/simulated/wall/r_concrete
	icon_state = "r_titanium"
	noblend_objects = list(/obj/machinery/door/window, /obj/machinery/door/blast/regular/evacshield)

/turf/simulated/wall/r_concrete/New(var/newloc)
	..(newloc, MATERIAL_CONCRETE,MATERIAL_CONCRETE)

/turf/simulated/wall/r_titanium/ascent
	paint_color = COLOR_PURPLE

/turf/simulated/wall/titanium/ascent
	paint_color = COLOR_PURPLE

/turf/simulated/wall/invisible
	icon_state = "generic"

/turf/simulated/wall/invisible/New(var/newloc)
	..(newloc,MATERIAL_CRYSTAL, MATERIAL_CRYSTAL)

/turf/simulated/wall/invisible/attackby()
	return

/turf/simulated/wall/invisible/bullet_act(var/obj/item/projectile/Proj)
	return

/turf/simulated/wall/invisible/can_engrave()
	return 0

/turf/simulated/wall/invisible/ex_act(seaverity)
	return

/turf/simulated/wall/invisible/adjacent_fire_act(turf/simulated/floor/adj_turf, datum/gas_mixture/adj_air, adj_temp, adj_volume)
	return 0

/turf/simulated/wall/invisible/melt()
	return

/turf/simulated/wall/invisible/examine(mob/user)