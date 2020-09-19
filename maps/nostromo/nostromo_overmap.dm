/obj/effect/overmap/visitable/ship/nostromo
	name = "USCSS Nostromo"
	desc = "A space object with wide of 121.2 meters, length of 214.5 meters and high near 14.3 meters. A Self Indentification Signal classifices \
	the target as NanoTrasen Science Vessel, a property of NanoTrasen Corporation."
	fore_dir = WEST
	vessel_mass = 63000
	base = TRUE
	color = LIGHT_COLOR_PURPLE
	icon = 'icons/obj/overmap_inf.dmi'

	initial_restricted_waypoints = list(
		"Guppy" = list("nav_hangar_guppy"),
	)

	initial_generic_waypoints = list(
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_ert_deck4",
		"nav_ert_deck5",
		"nav_deck1_guppy",
		"nav_deck2_guppy",
		"nav_deck3_guppy",
		"nav_deck4_guppy",
		"nav_bridge_guppy",
	)

/obj/effect/overmap/visitable/ship/landable/guppy
	name = "Guppy"
	shuttle = "Guppy"
	max_speed = 1/(4 SECONDS) //was 1/(10 SECONDS)
	burn_delay = 0.5 SECONDS //was 2 SECONDS, just try to not burn all the fuel
	vessel_mass = 500 //was 2200, yes, it's 500 tonnes
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	skill_needed = SKILL_BASIC //was trained

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = list(access_guppy_helm)
