/datum/map/nostromo

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod6/station,
		/area/shuttle/escape_pod7/station,
		/area/shuttle/escape_pod8/station,
		/area/shuttle/escape_pod9/station,
		/area/shuttle/escape_pod10/station,
		/area/shuttle/escape_pod12/station,
		/area/shuttle/escape_pod13/station,
		/area/shuttle/escape_pod14/station,
		/area/shuttle/escape_pod15/station,
		/area/shuttle/escape_pod16/station,
		/area/shuttle/escape_pod17/station,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

/* FIRST DECK (Z-3)
 * ================
 */

/area/maintenance/firstdeck
	name = "First Deck - Maintenance"
	icon_state = "maintcentral"

/area/maintenance/firstdeck/aftstarboard
	name = "First Deck - Maintenance - Aft-Starboard"
	icon_state = "asmaint"

/area/maintenance/firstdeck/aftport
	name = "First Deck - Maintenance - Aft-Port"
	icon_state = "apmaint"

/area/maintenance/firstdeck/forestarboard
	name = "First Deck - Maintenance - Fore-Starboard"
	icon_state = "fsmaint"

/area/maintenance/firstdeck/fore
	name = "First Deck - Maintenance - Fore-Port"
	icon_state = "fpmaint"

/area/maintenance/firstdeck/foreport
	name = "First Deck - Maintenance - Fore"
	icon_state = "fpmaint"

/area/maintenance/firstdeck/centralstarboard
	name = "First Deck - Maintenance - Starboard"
	icon_state = "smaint"

/area/maintenance/firstdeck/centralport
	name = "First Deck - Maintenance - Port"
	icon_state = "pmaint"

/area/hallway/primary/firstdeck/fore
	name = "First Deck - Hallway - Fore"
	icon_state = "hallF"

/area/hallway/primary/firstdeck/center
	name = "First Deck - Hallway - Central"
	icon_state = "hallC1"

/area/hallway/primary/firstdeck/aft
	name = "First Deck - Hallway - Aft"
	icon_state = "hallA"

/area/hallway/primary/firstdeck/central_stairwell
	name = "First Deck - Stairwell - Central"
	icon_state = "hallC2"

/area/hallway/primary/firstdeck/fore_stairwell
	name = "First Deck - Stairwell - Fore"
	icon_state = "hallC2"

/area/crew_quarters/safe_room/firstdeck
	name = "First Deck - Safe Room"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

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

/area/guppy_hangar/start
	name = "Shuttle - Guppy"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)

/* COMMAND AREAS
 * =============
 */

/area/command/bsa
	name = "Third Deck - Artillery - Obstruction Field Disperser"
	icon_state = "firingrange"
	req_access = list(access_gun)

/area/crew_quarters/heads
	icon_state = "heads"

/area/crew_quarters/heads/cobed
	name = "Second Deck - Command - Captain's Quarters"
	sound_env = MEDIUM_SOFTFLOOR
	icon_state = "captain"
	req_access = list(access_captain)

/area/crew_quarters/heads/office/captain
	name = "Second Deck - Command - Captain's Office"
	icon_state = "heads_cap"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/captain
	req_access = list(access_captain)
	icon_state = "heads_cap"

/area/crew_quarters/heads/captain/office_anteroom
	name = "Second Deck - Command - Captain's Office Anteroom"
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/heads/captain/beach
	name = "Second Deck - Command - Captain's Recreation Facility"
	icon_state = "heads_cap"
	sound_env = PLAIN
	req_access = list()

/area/crew_quarters/heads/captain/secret_room/level_one
	name = "Second Deck - Captain's restroon"

/area/crew_quarters/heads/captain/secret_room/level_two
	name = "Second Deck - Captain's bathroom" //wrong deck, BUT it's secret

/area/crew_quarters/heads/office/hop
	name = "First Deck - Command - HoP's Office"
	icon_state = "heads_hop"
	req_access = list(access_hop)

/area/crew_quarters/heads/office/hop/cobed
	name = "First Deck - Command - HoP's Quarters"

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "First Deck - Command - RD's Office"
	req_access = list(access_rd)

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "First Deck - Command - CMO's Office"
	req_access = list(access_cmo)

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "Second Deck - Command - CE's Office"
	req_access = list(access_ce)

/area/crew_quarters/heads/office/hos
	icon_state = "heads_hos"
	name = "First Deck - Command - HoS' Office"
	req_access = list(access_hos)

/area/bridge
	name = "Second Deck - Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)
	ambience = list('infinity/sound/SS2/ambience/ambbridge.wav')

/area/bridge/nano
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "bridge_room"  // Yes, this is exactly what no one has ever done, probably.

/area/bridge/meeting_room
	name = "Second Deck - Command - Meeting Room"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/bridge/hall/level_one
	name = "Bridge - Hall - Lower" //two merged decks,

/area/bridge/hall/level_two
	name = "Bridge - Hall - Upper"

/area/bridge/lobby
	name = "Bridge - Lobby"
	req_access = list()

/area/bridge/gun/energy
	name = "First Deck - Artillery - Lasers"
	icon = 'infinity/icons/turf/areas.dmi'
	icon_state = "bridge_gun"

/* ENGINEERING AREAS
 * =================
 */

/area/engineering
	req_access = list(access_engine)
	icon_state = "engineering"

/area/engineering/auxpower
	name = "First Deck - Engineering - Auxiliary Power Storage"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/hallway
	name = "Second Deck - Engineering - Hallway"
	icon_state = "engineering_workshop"

/area/engineering/hardstorage
	name = "Second Deck - Engineering - Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/engine_room
	name = "Second Deck - Engine - Supermatter"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_engine_equip)

/area/engineering/drone_fabrication
	name = "First Deck - Engineering - Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/engineering/engine_eva
	name = "Second Deck - Engineering - EVA"
	icon_state = "engine_eva"
	req_access = list(list(access_eva, access_external_airlocks), access_engine)

/area/engineering/engine_monitoring
	name = "Second Deck - Engine - Monitoring"
	icon_state = "engine_monitoring"

/area/engineering/engine_smes
	name = "Second Deck - Engine - SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/engineering_monitoring
	name = "Second Deck - Engineering - Monitoring"
	icon_state = "engine_monitoring"

/area/engineering/locker_room
	name = "Second Deck - Engineering - Locker Room"
	icon_state = "engineering_locker"

/area/engineering/materials_storage
	name = "Second Deck - Engineering - Materials Storage"
	icon_state = "engineering_storage"

/area/engineering/atmos
 	name = "Second Deck - Engineering - Atmospherics"
 	icon_state = "atmos"
 	sound_env = LARGE_ENCLOSED
 	req_access = list(access_atmospherics)

/area/engineering/bluespace
	name = "Second Deck - Engineering - Bluespace Drive"
	icon_state = "engine_monitoring"
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)
	sound_env = SMALL_ENCLOSED

/area/engineering/bluespace/chamber
	name = "Second Deck - Engineering - Bluespace Drive - Chamber"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

// Shield Rooms
/area/shield
	name = "Second Deck - Engineering - Shield Generator"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_atmospherics)

/area/shield/firstdeck
	name = "First Deck - Shield Generator"

/area/shield/seconddeck
	name = "Second Deck - Shield Generator"

/area/shield/thirddeck
	name = "Third Deck - Shield Generator"

/* VACANT AREAS
 * ============
 */

/area/vacant
	name = "Vacant Area"
	icon_state = "construction"
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_maint_tunnels)

/area/vacant/infirmary
	name = "Third Deck - Abandoned - Infirmary"
	icon_state = "medbay"

/area/vacant/monitoring
	name = "Third Deck - Abandoned - Monitoring"
	icon_state = "engine_monitoring"

/area/vacant/cargo
	name = "Third Deck - Abandoned - Requisition"
	icon_state = "quart"

/area/vacant/mess
	name = "Second Deck - Abandoned - Officer's Mess"
	icon_state = "bar"

/area/vacant/gambling
	name = "Second Deck - Gambling Room"
	icon_state = "restrooms"
	sound_env = MEDIUM_SOFTFLOOR

/* SUPPLY AREAS
 * ============
 */

/area/quartermaster
	req_access = list(access_cargo)

/area/quartermaster/office
	name = "Third Deck - Supply"
	icon_state = "quartoffice"
	req_access = list(access_mailsorting, access_cargo)

/area/quartermaster/storage
	name = "Third Deck - Supply - Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/deckofficer
	name = "Third Deck - Supply - Quartermaster"
	icon_state = "quart"
	req_access = list(access_qm)

/area/quartermaster/expedition
	name = "Third Deck - Exploration - Locker Room"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/quartermaster/expedition/eva
	name = "Third Deck - Exploration - EVA"
	icon_state = "mining"

/area/quartermaster/expedition/storage
	name = "Third Deck - Exploration - Storage"
	icon_state = "mining"

/area/quartermaster/shuttlefuel
	name = "Third Deck - Hangar - Fuel Bay"
	icon_state = "toxstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(list(access_cargo, access_guppy_helm))

/area/quartermaster/hangar
	name = "Third Deck - Hangar"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/hangar_atmos
	name = "Third Deck - Hangar - Atmospherics Storage"
	icon_state = "auxstorage"

/* CREW AREAS
 * ==========
 */

/area/hydroponics
	name = "Second Deck - Service - Hydroponics"
	icon_state = "hydro"

/area/hydroponics/storage
	name = "Second Deck - Service - Hydroponics Storage"

/area/janitor
	name = "Third Deck - Service - Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/crew_quarters
	icon_state = "crew_quarters"

/area/crew_quarters/bar
	name = "Second Deck - Service - Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

/area/crew_quarters/sauna
	name = "Second Deck - Living - Sauna"
	icon_state = "sauna"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/head
	name = "Second Deck - Living - Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/showers
	name = "Second Deck - Living - Private Showers"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/gym
	name = "Second Deck - Living - Gym"
	icon_state = "fitness"

/area/crew_quarters/mess
	name = "Second Deck - Living - Canteen"
	icon_state = "cafeteria"
	sound_env = LARGE_SOFTFLOOR

/area/crew_quarters/cafe
	name = "Second Deck - Living - Cafe"
	icon_state = "cafeteria"

/area/crew_quarters/galley
	name = "Second Deck - Service - Galley"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/galley/backroom
	name = "Second Deck - Service - Galley Cold Storage"
	icon_state = "kitchen"

/area/crew_quarters/dungeon_master_lounge
	name = "First Deck - Living Room"
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/lounge
	name = "Second Deck - Living - Lounge"
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/lounge/upper
	name = "First Deck - Living - Library" //at first deck, but merged

/area/crew_quarters/sleep/bunk
	name = "Second Deck - Living - Dormitory"
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

/area/crew_quarters/adherent
	name = "Second Deck - Living - Adherent Maintenence"
	icon_state = "robotics"

/* SECURITY AREAS
 *
 */
/area/security/nostromo/
	icon_state = "security"

/area/security/nostromo/hallway
	name = "First Deck - Security - Hallway - Fore"
	sound_env = LARGE_ENCLOSED

/area/security/nostromo/hallway/aft
	name = "First Deck - Security - Hallway - Aft"

/area/security/nostromo/hallway/port
	name = "First Deck - Security - Hallway - Port"

/area/security/nostromo/armory
	name = "First Deck - Security - Armory"
	icon_state = "armory"
	req_access = list(access_armory)

/area/security/nostromo/armory/lobby
	name = "First Deck - Security - Armory Lobby"

/area/security/nostromo/suits
	name = "First Deck - Security - Suits Storage"
	req_access = list(access_seceva)

/area/security/nostromo/breakroom
	name = "First Deck - Security - Break Room"

/area/security/nostromo/hosbed
	name = "First Deck - Security - HOS Bedroom"
	icon_state = "sec_hos"
	req_access = list(access_hos)

/area/security/nostromo/forensic
	name = "First Deck - Security - Forensic"
	icon_state = "detective"
	req_access = list(access_forensics_lockers)

/area/security/nostromo/forensic/lab
	name = "First Deck - Security - Forensic Laboratory"

/area/security/nostromo/equipment
	name = "First Deck - Security - Equipment"
	req_access = list(access_security)

/area/security/nostromo/interrogation
	name = "First Deck - Security - Interrogation"
	icon_state = "detective"
	req_access = list(list(access_forensics_lockers, access_security))

/area/security/nostromo/evidence
	name = "First Deck - Security - Evidence Storage"
	icon_state = "detective"
	req_access = list(list(access_forensics_lockers, access_security))

/area/security/range
	name = "First Deck - Security - Cadets"
	icon_state = "security"

/area/security/nuke_storage
	name = "First Deck - Vault"
	icon_state = "nuke_storage"
	req_access = list(access_heads_vault)

/area/security/nostromo/dockcheck
	name = "Third Deck - Security - Fore Docks Checkpoint"
	icon_state = "checkpoint1"
	req_access = list(list(access_security, access_forensics_lockers))

/* MEDBAY AREAS
 * ============
 */

/area/medical/equipstorage
	name = "First Deck - Infirmary - Storage"
	icon_state = "medbay4"

/area/medical/maintenance_equipstorage
	name = "First Deck - Infirmary - Lower Storage"
	icon_state = "medbay4"
	req_access = list(access_medical_equip)

/area/medical/infirmary
	name = "First Deck - Infirmary - Hallway"
	icon_state = "medbay"

/area/medical/starboard_hallway
	name = "First Deck - Infirmary - Hallway - Starboard"
	icon_state = "medbay2"

/area/medical/infirmreception
	name = "First Deck - Infirmary - Reception"
	icon_state = "medbay2"

/area/medical/locker
	name = "First Deck - Infirmary - Locker Room"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/medical/subacute
	name = "First Deck - Infirmary - Sub-Acute Ward"
	icon_state = "patients"

/area/medical/mentalhealth
	name = "First Deck - Infirmary - Mental Health"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)

/area/medical/coffins
	name = "First Deck - Infirmary - Coffins Storage"
	icon_state = "patients" //:^)
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_chapel_office)

/area/medical/chemistry
	name = "First Deck - Infirmary - Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/medical/morgue
	name = "First Deck - Infirmary - Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/medical/sleeper
	name = "First Deck - Infirmary - Emergency Treatment Center"
	icon_state = "exam_room"
	req_access = list(access_medical_equip)

/area/medical/surgery
	name = "First Deck - Infirmary - Operating Theatre"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/medical/crematorium
	name = "First Deck - Infirmary - Crematorium"
	icon_state = "chapel"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_crematorium)

/area/medical/virology
	name = "Second Deck - Abandoned - Virology"
	req_access = list()

/area/medical/virologyaccess
	name = "Second Deck - Abandoned - Virology Access"
	req_access = list()

// Misc
/area/deity_spawn
	name = "Deity Spawn"
	icon_state = "yellow"
	requires_power = 0
	dynamic_lighting = 0

/area/teleporter
	name = "Second Deck - Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/maintenance/substation
	name = "Substation"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/maintenance/exterior
	name = "Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	sound_env = SPACE

/area/alien
	name = "Alien base"
	icon_state = "yellow"
	requires_power = 0

/area/shuttle/alien/base
	name = "Alien Shuttle Base"
	icon_state = "shuttle"
	requires_power = 1

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
	name = "First Deck - Solar - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine)

/area/maintenance/solar/starboard
	name = "First Deck - Solar - Starboard"
	icon_state = "SolarcontrolS"

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	sound_env = SPACE

/area/solar/starboard
	name = "First Deck - Solar - Starboard Array"
	icon_state = "panelsS"

/area/solar/port
	name = "First Deck - Solar - Port Array"
	icon_state = "panelsP"

// Storage
/area/storage/primary
	name = "Third Deck - Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Second Deck - Engineering - Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/auxillary/port
	name = "Third Deck - Supply - Auxillary Warehouse"
	icon_state = "auxstorage"
	req_access = list(access_cargo)

/area/storage/bridge
	name = "First Deck - Bridge - Storage"
	icon_state = "bridge"
	sound_env = SMALL_ENCLOSED

// Holodecks
/area/holodeck
	name = "Second Deck - Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holocontrol
	name = "Second Deck - Holodeck Control"
	icon_state = "Holodeck"

/area/holodeck/alphadeck
	name = "Holodeck Alpha"

/area/holodeck/source_plating
	name = "Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "Holodeck - Wildlife Simulation"

/area/holodeck/source_military
	name = "Holodeck - Military Parade Ground"
	sound_env = AUDITORIUM

/area/holodeck/source_meetinghall
	name = "Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "Holodeck - Volleyball"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "Holodeck - Temple"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "Holodeck - Plaza"
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
	name = "First Deck - Telecoms"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "First Deck - Telecoms - Monitoring"
	icon_state = "tcomsatcomp"

/area/tcommsat/storage
	name = "First Deck - Telecoms - Storage"
	icon_state = "tcomsatstore"

// AI
/area/maintenance/battle_data_servers
	name = "First Deck - Battle Data Servers"
	req_access = list(access_maint_tunnels)

/area/ai_monitored
	name = "AI Monitored Area"

/area/storage/eva
	name = "First Deck - EVA"
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
	name = "Second Deck - Cyborg Station"
	icon_state = "ai_cyborg"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/turret_protected/ai_upload
	name = "Second Deck - AI Upload"
	icon_state = "ai_upload"

/area/turret_protected/ai_upload_foyer
	name = "Second Deck - AI Upload Access"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED

/area/ai_abadoned
	name = "Abadoned Chamber"

// Merchant
/area/merchant_station
	name = "Merchant Station"
	icon_state = "LP"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_merchant)

// Syndicate
/area/syndicate_mothership/raider_base
	name = "Raider Base"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_syndicate)
	turf_initializer = /decl/turf_initializer/maintenance/heavy

// ACTORS GUILD
/area/acting
	name = "Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "Backstage"

/area/acting/stage
	name = "Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome
/area/tdome
	name = "Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "Thunderdome (Observer.)"
	icon_state = "purple"

/area/tdome/testing
	name = "Thunderdome (TESTING AREA)"
	icon_state = "purple"

/area/tdome/testing/engineering
	requires_power = 0
	dynamic_lighting = 1

/area/tdome/testing/engineering/unpowered
	requires_power = 1
