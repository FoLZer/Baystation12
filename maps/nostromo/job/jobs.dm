/datum/map/nostromo

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hos
	species_to_job_whitelist = list(
		/datum/species/unathi  		 = list(),
		/datum/species/unathi/yeosa  = list(),
		/datum/species/unathi/erosan = list(),
		/datum/species/skrell  		 = list(),
		/datum/species/tajaran 		 = list(),
		/datum/species/resomi  		 = list(),
		/datum/species/diona   		 = list(),
		/datum/species/adherent      = list(),
		/datum/species/nabber        = list(),
		/datum/species/vox           = list()
	)
#undef HUMAN_ONLY_JOBS

	allowed_jobs = list(/datum/job/captain, /datum/job/hos,
						/datum/job/engineer,
						/datum/job/officer,
						/datum/job/doctor,
						/datum/job/qm, /datum/job/cargo_tech,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_hos, access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_cmo, access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_rd, access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_ce, access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_hop, access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_qm, access_change_ids),
	)

/datum/job
	allowed_branches = list(
		/datum/mil_branch/employee
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/wy
	)
	required_language = LANGUAGE_HUMAN_EURO
	psi_latency_chance = 8

/datum/map/nostromo
	default_assistant_title = "Crewman"
