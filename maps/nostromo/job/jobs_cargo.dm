/datum/job/qm
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "Главой Персонала"
	economic_power = 8
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/supply/quartermaster
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/nt)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC)

	skill_points = 14

	access = list(		access_maint_tunnels, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/cargo_tech
	title = "Cargo Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 40
	spawn_positions = 40
	supervisors = "Завхозом и Главой Персонала"
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/sierra/crew/supply/tech
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm, access_commissary,
						access_cargo_bot, access_mining_office, access_mailsorting, access_expedition_shuttle, access_guppy, access_hangar)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
