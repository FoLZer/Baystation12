#include "xeno_planet_areas.dm"

/obj/effect/overmap/visitable/sector/xeno_planet
	name = "Strange Planetoid"
	desc = "Sensor array detects an arctic planet with a small vessle on the planet's surface. Scans further indicate strange energy levels below the planet's surface."
	in_space = 0
	icon_state = "globe"
	initial_generic_waypoints = list(
		"nav_xenoplanet_1"
	)

/obj/effect/shuttle_landmark/nav_xeno_planet/nav1
	name = "Arctic Planet Landing Point #1"
	landmark_tag = "nav_xenoplanet_1"

/obj/effect/overmap/visitable/sector/arcticplanet/New(nloc, max_x, max_y)
	name = "[generate_planet_name()], \a [name]"
	..()

/datum/map_template/ruin/away_site/xeno_planet
	name = "Alien Planet"
	id = "awaysite_xeno"
	description = "One z-level map with an arctic planet"
	cost = 0.5
	prefix = "maps/away_inf/"
	suffixes = list("xeno_planet/xeno_planet.dmm")
	area_usage_test_exempted_root_areas = list(/area/xeno_planet)
	apc_test_exempt_areas = list(
		/area/xeno_planet = NO_SCRUBBER|NO_VENT|NO_APC
	)
