/datum/map/nostromo
	branch_types = list(
		/datum/mil_branch/employee,
		/datum/mil_branch/alien
	)

	spawn_branch_types = list(
		/datum/mil_branch/employee,
		/datum/mil_branch/alien
	)

/*
 * Species restricts
 * =================
 */

	species_to_branch_blacklist = list(
		/datum/species/human    = list(
			/datum/mil_branch/alien),
		/datum/species/machine  = list(
			/datum/mil_branch/alien),
		/datum/species/adherent = list(
			/datum/mil_branch/alien),
		/datum/species/unathi   = list(
			/datum/mil_branch/alien),
		/datum/species/skrell   = list(
			/datum/mil_branch/alien),
		/datum/species/nabber   = list(
			/datum/mil_branch/employee,
			/datum/mil_branch/alien),
		/datum/species/diona    = list(
			/datum/mil_branch/alien),
		/datum/species/tajaran  = list(
			/datum/mil_branch/alien),
		/datum/species/resomi   = list(
			/datum/mil_branch/alien),
		/datum/species/vox      = list(
			/datum/mil_branch/employee
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona      = list(/datum/mil_branch/employee),
		/datum/species/nabber     = list(/datum/mil_branch/alien),
		/datum/species/skrell     = list(/datum/mil_branch/employee),
		/datum/species/unathi     = list(/datum/mil_branch/employee),
		/datum/species/adherent   = list(/datum/mil_branch/employee),
		/datum/species/vox        = list(/datum/mil_branch/alien)
	)

	species_to_rank_whitelist = list(
		/datum/species/vox = list(
			/datum/mil_branch/alien = list(
				/datum/mil_rank/alien
			)
		)
	)


/*
 *  Branches
 *  ========
 */

/datum/mil_branch/employee
	name = "Employee"
	name_short = "empl"
	email_domain = "mail.yutani.net"

	rank_types = list(
		/datum/mil_rank/civ/wy
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/wy
	)


/datum/mil_rank/grade() //useless, for sure
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/wy
	name = "Weyland-Yutani Employee"

/*
 * Vox/foreign alien branch
 * ========================
 */

/datum/mil_branch/alien
	name = "Alien"
	name_short = "Alien"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Alien"
