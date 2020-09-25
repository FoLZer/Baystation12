/datum/job/qm
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP|COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "Капитаном"
	economic_power = 8
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/nostromo/crew/supply/quartermaster
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/wy)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC)

	skill_points = 14

	access = list(		access_maint_tunnels, access_emergency_storage, access_tech_storage,  access_cargo, access_narcissus_helm,
						access_cargo_bot, access_qm, access_narcissus, access_hangar, access_keycard_auth)

	minimal_access = list(		access_maint_tunnels, access_emergency_storage, access_tech_storage,  access_cargo, access_narcissus_helm,
						access_cargo_bot, access_qm, access_narcissus, access_hangar, access_keycard_auth)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/cargo_tech
	title = "Cargo Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 40
	spawn_positions = 40
	supervisors = "Завхозом и Капитаном"
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/nostromo/crew/supply/tech
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/wy)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_narcissus_helm,
						access_cargo_bot, access_narcissus, access_hangar)

	minimal_access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_narcissus_helm,
						access_cargo_bot, access_narcissus, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
