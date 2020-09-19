/datum/map/nostromo
	species_to_job_whitelist = list(
		/datum/species/adherent = list(/datum/job/ai, /datum/job/cyborg, /datum/job/janitor,\
									   /datum/job/chef, \
									   /datum/job/bartender),
		/datum/species/nabber = list(/datum/job/ai, /datum/job/cyborg, /datum/job/janitor, \
									 /datum/job/chef,\
									 /datum/job/bartender),
		/datum/species/vox = list(/datum/job/ai, /datum/job/cyborg),
		/datum/species/human/mule	= list(/datum/job/ai, /datum/job/cyborg)
	)

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hos
	species_to_job_blacklist = list(
		/datum/species/unathi  		 = list(HUMAN_ONLY_JOBS),
		/datum/species/unathi/yeosa  = list(HUMAN_ONLY_JOBS),
		/datum/species/unathi/erosan = list(HUMAN_ONLY_JOBS),
		/datum/species/skrell  		 = list(HUMAN_ONLY_JOBS),
		/datum/species/tajaran 		 = list(HUMAN_ONLY_JOBS),
		/datum/species/machine 		 = list(HUMAN_ONLY_JOBS),
		/datum/species/resomi  		 = list(HUMAN_ONLY_JOBS),
		/datum/species/diona   		 = list(HUMAN_ONLY_JOBS),
		/datum/species/human/booster = list(HUMAN_ONLY_JOBS)
	)
#undef HUMAN_ONLY_JOBS

	allowed_jobs = list(/datum/job/captain, /datum/job/hos,
						/datum/job/engineer,
						/datum/job/officer,
						/datum/job/doctor,
						/datum/job/qm, /datum/job/cargo_tech,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/ai, /datum/job/cyborg
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_hos, access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_cmo, access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_ce, access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_hop, access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_qm, access_change_ids),
	)

/*
/datum/map/nostromo/setup_map()
	..()
	for(var/job_type in GLOB.using_map.allowed_jobs)
		var/datum/job/job = decls_repository.get_decl(job_type)
		// Most species are restricted from NT security and command roles
		if((job.department_flag & (COM)) && job.allowed_branches.len && !(/datum/mil_branch/civilian in job.allowed_branches))
			for(var/species_name in list(SPECIES_IPC, SPECIES_TAJARA, SPECIES_SKRELL, SPECIES_UNATHI))
				var/datum/species/S = all_species[species_name]
				var/species_blacklist = species_to_job_blacklist[S.type]
				if(!species_blacklist)
					species_blacklist = list()
					species_to_job_blacklist[S.type] = species_blacklist
				species_blacklist |= job.type
*/

// Some jobs for nabber grades defined here due to map-specific job datums.
/decl/cultural_info/culture/nabber/New()
	LAZYADD(valid_jobs, list())
	..()

/decl/cultural_info/culture/nabber/b/New()
	LAZYADD(valid_jobs, /datum/job/cargo_tech)
	..()

/decl/cultural_info/culture/nabber/a/New()
	LAZYADD(valid_jobs, /datum/job/engineer)
	..()

/decl/cultural_info/culture/nabber/a/plus/New()
	LAZYADD(valid_jobs, /datum/job/doctor)
	..()

/datum/species/nabber/check_background(var/datum/job/job, var/datum/preferences/prefs) //overrides
	. = TRUE

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
