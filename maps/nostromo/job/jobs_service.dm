/datum/job/janitor
	title = "Janitor"
	department = "Service"
	department_flag = SRV

	total_positions = 1
	spawn_positions = 1
	supervisors = "Капитаном"
	ideal_character_age = 20
	alt_titles = list(
		"Sanitation Technician")
	outfit_type = /decl/hierarchy/outfit/job/nostromo/crew/service/janitor
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/wy)
	min_skill = list(	SKILL_HAULING = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor)

	minimal_access = list()

/datum/job/chef
	title = "Chef"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "Капитаном"
	alt_titles = list(
		"Cook",
		"Culinary Specialist"
		)
	outfit_type = /decl/hierarchy/outfit/job/nostromo/crew/service/cook
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/wy)
	min_skill = list(	SKILL_COOKING   = SKILL_ADEPT,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)

	access = list(access_hydroponics, access_kitchen)

	minimal_access = list()

/datum/job/bartender
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "Капитаном"
	ideal_character_age = 30
	selection_color = "#515151"
	outfit_type = /decl/hierarchy/outfit/job/nostromo/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_ranks = list(/datum/mil_rank/civ/wy)

	access = list(access_hydroponics, access_bar)

	minimal_access = list()
	min_skill = list(	SKILL_COOKING   = SKILL_BASIC,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)