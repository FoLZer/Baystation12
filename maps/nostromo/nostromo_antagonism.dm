//Makes sure we don't get any merchant antags as a balance concern. Can also be used for future nostromo specific antag restrictions.
/datum/antagonist/changeling
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/officer)

/datum/antagonist/godcultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/officer)

/datum/antagonist/cultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/officer)

/datum/antagonist/loyalists
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)

/datum/antagonist/revolutionary
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)

/datum/antagonist/traitor
	blacklisted_jobs = list(/datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/officer)

/datum/antagonist/ert/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0
	player.char_branch = mil_branches.get_branch("Employee")
	player.char_rank = mil_branches.get_rank("Employee", "Weyland-Yutani Employee")

	var/decl/hierarchy/outfit/ert_outfit = outfit_by_type((player.mind == leader) ? /decl/hierarchy/outfit/job/nostromo/ert/leader : /decl/hierarchy/outfit/job/nostromo/ert)
	ert_outfit.equip(player)

	return 1
