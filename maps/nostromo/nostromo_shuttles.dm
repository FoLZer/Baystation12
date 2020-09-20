//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/nostromopod
	category = /datum/shuttle/autodock/ferry/escape_pod/nostromopod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	var/number
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/nostromo
	warmup_time = 2

/datum/shuttle/autodock/ferry/escape_pod/nostromopod/New()
	name = "Escape Pod [number]"
	dock_target = "escape_pod_[number]"
	arming_controller = "escape_pod_[number]_berth"
	waypoint_station = "escape_pod_[number]_start"
	landmark_transition = "escape_pod_[number]_internim"
	waypoint_offsite = "escape_pod_[number]_out"
	..()

/obj/effect/shuttle_landmark/escape_pod/
	var/number

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"

/obj/effect/shuttle_landmark/escape_pod/start/New()
	landmark_tag = "escape_pod_[number]_start"
	docking_controller = "escape_pod_[number]_berth"
	..()

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/transit/New()
	landmark_tag = "escape_pod_[number]_internim"
	..()

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

/obj/effect/shuttle_landmark/escape_pod/out/New()
	landmark_tag = "escape_pod_[number]_out"
	..()

//Pods

/datum/shuttle/autodock/ferry/escape_pod/nostromopod/escape_pod6
	shuttle_area = /area/shuttle/escape_pod6/station
	number = 6
/obj/effect/shuttle_landmark/escape_pod/start/pod6
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 6
/obj/effect/shuttle_landmark/escape_pod/out/pod6
	number = 6
/obj/effect/shuttle_landmark/escape_pod/transit/pod6
	number = 6
//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 7

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock"

//Transport

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	shuttle_area = /area/shuttle/transport1/centcom
	dock_target = "centcom_shuttle"
	waypoint_offsite = "nav_ferry_start"
	waypoint_station = "nav_ferry_out"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 7

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/ferry/out
	name = "Docking Bay"
	landmark_tag = "nav_ferry_out"
	docking_controller = "centcom_shuttle_dock"
//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	destination_tags = list(
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_ert_deck4",
		"nav_ert_deck5",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		"nav_mining_antag"
		)


/obj/effect/shuttle_landmark/ert/deck1
	name =  "Southwest of Fourth deck"
	landmark_tag = "nav_ert_deck1"

/obj/effect/shuttle_landmark/ert/deck2
	name = "Northwest of Third deck"
	landmark_tag = "nav_ert_deck2"

/obj/effect/shuttle_landmark/ert/deck3
	name = "Northwest of Second deck"
	landmark_tag = "nav_ert_deck3"

/obj/effect/shuttle_landmark/ert/deck4
	name = "Southwest of First Deck"
	landmark_tag = "nav_ert_deck4"

/obj/effect/shuttle_landmark/ert/deck5
	name = "West of Bridge"
	landmark_tag = "nav_ert_deck5"

//SCGMC Assault Pod

/datum/shuttle/autodock/ferry/specops/scg
	name = "Special Operations"
	location = 1
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_out"
	waypoint_offsite = "nav_specops_start"
	current_location = "nav_specops_start"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 7

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_cent"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "specops_dock"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 7

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/datum/shuttle/autodock/overmap/narcissus
	name = "Narcissus"
	move_time = 30
	shuttle_area = /area/narcissus_hangar/start
	dock_target ="narcissus_shuttle"
	current_location = "nav_hangar_narcissus"
	landmark_transition = "nav_transit_narcissus"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_narcissus"
	logging_access = access_narcissus_helm
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/nostromo
	warmup_time = 5

/obj/effect/shuttle_landmark/nostromo/hangar/narcissus
	name = "Narcissus Hangar"
	landmark_tag = "nav_hangar_narcissus"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/nostromo/deck1/narcissus
	name = "Space near Fourth Deck"
	landmark_tag = "nav_deck1_narcissus"

/obj/effect/shuttle_landmark/nostromo/deck2/narcissus
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_narcissus"

/obj/effect/shuttle_landmark/nostromo/deck3/narcissus
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_narcissus"

/obj/effect/shuttle_landmark/nostromo/deck4/narcissus
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_narcissus"

/obj/effect/shuttle_landmark/nostromo/deck5/narcissus
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_narcissus"

/obj/effect/shuttle_landmark/nostromo/transit/narcissus
	name = "In transit"
	landmark_tag = "nav_transit_narcissus"

//Makes the deck management program use hangar access
/datum/nano_module/deck_management
	default_access = list(access_hangar, access_cargo, access_heads)

// away transit

/obj/effect/shuttle_landmark/nostromo/deck3/patrol
	name = "Third Deck Starboard Dock"
	landmark_tag = "nav_deck3_patrol"
	docking_controller = "admin_shuttle_dock"
