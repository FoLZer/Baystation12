/datum/map/nostromo

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod6/station,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

/* FIRST DECK (Z-3)
 * ================
 */

/area/maintenance
	name = "Maintenance"
	icon_state = "maintenance"
	area_flags = AREA_FLAG_RAD_SHIELDED
	requires_power = 0

/area/crew_quarters/safe_room
	name = "Safe Room"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/hallway/primary/maindeck
	name = "Main Deck - Hallway - Central"
	icon_state = "hallC3"

/area/hallway/primary/maindeck/up
	name = "Main Deck - Hallway - Up"
	icon_state = "hallF"

/area/hallway/primary/maindeck/down
	name = "Main Deck - Hallway - Down"
	icon_state = "hallA"

/area/hallway/primary/maindeck/emergency
	name = "Main Deck - Emergency Hallway"
	icon_state = "hallF"

/* SHUTTLES
 * ========
 */

/area/shuttle/transport1/centcom
	name = "Shuttle - Cargo"
	icon_state = "shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/* LARGE PODS
 * ==========
 */

/area/shuttle/escape_pod6/station
	name = "Shuttle - Escape - Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
	icon_state = "exit"

/* VESSEL'S SHUTTLES
 * =================
 */

/area/narcissus_hangar/start
	name = "Shuttle - Narcissus"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_narcissus)

/* COMMAND AREAS
 * =============
 */

/area/bridge
	name = "Second Deck - Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)
	ambience = list('infinity/sound/SS2/ambience/ambbridge.wav')

/* ENGINEERING AREAS
 * =================
 */

/area/engineering
	req_access = list(access_engine)
	icon_state = "engineering"

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "CE's Office"
	req_access = list(access_ce)

/area/engineering/engine_smes
	name = "Engineering - SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/materials_storage
	name = "Engineering - Materials Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/mainlobby
	name = "Engineering - Lobby"

/area/engineering/hardstorage
	name = "Engineering - Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/crafting
	name = "Engineering - Crafting Station"
	icon_state = "engineering_storage"

/* VACANT AREAS
 * ============
 */

/* SUPPLY AREAS
 * ============
 */

/area/quartermaster
	req_access = list(access_cargo)

/area/quartermaster/hangar
	name = "Hangar"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/office
	name = "Supply - Office"
	icon_state = "quartoffice"
	req_access = list(access_mailsorting, access_cargo)

/area/quartermaster/lobby
	name = "Supply - Lobby"
	icon_state = "quartoffice"
	req_access = list(access_cargo)

/area/quartermaster/workplace
	name = "Supply - Workplace"
	icon_state = "hangar"
	req_access = list(access_cargo)

/* CREW AREAS
 * ==========
 */

/area/crew_quarters
	icon_state = "crew_quarters"

/area/crew_quarters/canteen
	name = "Living - Canteen"
	icon_state = "cafeteria"
	sound_env = LARGE_SOFTFLOOR

/area/crew_quarters/cafe
	name = "Living - Cafe"
	icon_state = "cafeteria"

/area/crew_quarters/head
	name = "Living - Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/sleep/bunk
	name = "Living - Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/sleep/cryo1
	name = "Cryo Storage 1"
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "cryo"

/area/crew_quarters/sleep/cryo2
	name = "Cryo Storage 2"

/area/crew_quarters/sleep/cryo3
	name = "Cryo Storage 3"

/area/crew_quarters/sleep/cryo4
	name = "Cryo Storage 4"

/* SECURITY AREAS
 *
 */
/area/security/nostromo/
	icon_state = "security"

/area/security/nostromo/armory
	name = "Security - Armory"
	icon_state = "armory"
	req_access = list(access_armory)

/* MEDBAY AREAS
 * ============
 */

/area/medical/equipstorage
	name = "Medical - Storage"
	icon_state = "medbay4"

/area/medical/mainlobby
	name = "Medical - Lobby"
	icon_state = "medbay"

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "CMO's Office"
	req_access = list(access_cmo)

// Misc
/area/teleporter
	name = "Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

// CentCom
/area/centcom/control
	name = "Centcom Control"

/area/centcom/creed
	name = "Creed's Office"
	req_access = list(access_cent_creed)

/area/centcom/evac
	name = "Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "Centcom Transport Shuttle"

/area/centcom/living
	name = "Centcom Living Quarters"
	req_access = list(access_cent_living)

/area/centcom/suppy
	name = "Centcom Supply Shuttle"

/area/centcom/test
	name = "Centcom Testing Facility"

/area/admin_prison
	name = "Admin Prison"
	dynamic_lighting = 1
	requires_power = 0
	icon_state = "blue-red-d"

// Solars
/area/maintenance/solar
	name = "Solar - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/maintenance/solar/starboard
	name = "Solar - Starboard"
	icon_state = "SolarcontrolS"

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	sound_env = SPACE

/area/solar/starboard
	name = "Solar - Starboard Array"
	icon_state = "panelsS"

/area/solar/port
	name = "Solar - Port Array"
	icon_state = "panelsP"

// Storage
/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Engineering - Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/auxillary/port
	name = "Supply - Auxillary Warehouse"
	icon_state = "auxstorage"
	req_access = list(access_cargo)

/area/storage/bridge
	name = "Bridge - Storage"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED

// Shuttles
/area/shuttle/administration/centcom
	name = "Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Tcomm
/area/tcommsat/
	ambience = list(
			'sound/ambience/ambisin2.ogg',
			'sound/ambience/signal.ogg',
			'sound/ambience/ambigen10.ogg',
			'infinity/sound/SS2/ambience/ambservers.wav'
		)
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "Telecoms"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "Telecoms - Monitoring"
	icon_state = "tcomsatcomp"

/area/tcommsat/storage
	name = "Telecoms - Storage"
	icon_state = "tcomsatstore"

// AI
/area/maintenance/battle_data_servers
	name = "Battle Data Servers"
	req_access = list(access_maint_tunnels)

/area/ai_monitored
	name = "AI Monitored Area"

/area/storage/eva
	name = "EVA"
	icon_state = "eva"
	req_access = list(access_eva)

/area/turret_protected
	req_access = list(access_ai_upload)
	ambience = list(
		'sound/ambience/ambimalf.ogg',
		'infinity/sound/SS2/ambience/ambservers.wav'
		)
	forced_ambience = list('infinity/sound/SS2/ambience/ambxerxes_looped.wav', 'infinity/sound/ambience/ai_port_hum.ogg')

/area/turret_protected/ai
	name = "AI Chamber"
	icon_state = "ai_chamber"

/area/turret_protected/ai/airlock
	name = "AI Chamber Outer Maintance"
	icon_state = "ai_foyer"

/area/turret_protected/ai_cyborg_station
	name = "Cyborg Station"
	icon_state = "ai_cyborg"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/turret_protected/ai_upload
	name = "AI Upload"
	icon_state = "ai_upload"

/area/turret_protected/ai_upload_foyer
	name = "AI Upload Access"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED

/area/ai_abadoned
	name = "Abadoned Chamber"

/area/shield
	name = "Engineering - Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_atmospherics)

/area/maintenance/exterior
	name = "Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	sound_env = SPACE

/area/tcommsat/
	ambience = list(
			'sound/ambience/ambisin2.ogg',
			'sound/ambience/signal.ogg',
			'sound/ambience/ambigen10.ogg',
			'infinity/sound/SS2/ambience/ambservers.wav'
		)
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "First Deck - Telecoms"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "First Deck - Telecoms - Monitoring"
	icon_state = "tcomsatcomp"

/area/tcommsat/storage
	name = "First Deck - Telecoms - Storage"
	icon_state = "tcomsatstore"