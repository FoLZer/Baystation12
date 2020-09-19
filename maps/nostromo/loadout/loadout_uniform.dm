/datum/gear/uniform/utility
	display_name = "utility uniform"
	path = /obj/item/clothing/under/solgov/utility

/datum/gear/uniform/roboticist_skirt
	allowed_roles = list(/datum/job/roboticist)

/datum/gear/uniform/sterile
	allowed_roles = STERILE_ROLES

/datum/gear/uniform/hazard
	allowed_roles = TECHNICAL_ROLES

/datum/gear/uniform/si_guard
	display_name = "NanoTrasen guard uniform"
	path = /obj/item/clothing/under/rank/guard/nanotrasen
	allowed_roles = list(/datum/job/officer)

/datum/gear/uniform/si_overalls
	display_name = "corporate coveralls"
	path = /obj/item/clothing/under/rank/ntwork
	allowed_branches = list(/datum/mil_branch/employee)

/datum/gear/uniform/si_overalls/New()
	..()
	var/overalls = list()
	overalls["NT beige and red coveralls"]			= /obj/item/clothing/under/rank/ntwork/nanotrasen
	overalls["Hephaestus grey and cyan coveralls"]	= /obj/item/clothing/under/rank/ntwork/heph
	gear_tweaks += new/datum/gear_tweak/path(overalls)

/datum/gear/uniform/si_flight
	display_name = "corporate pilot suit"
	path = /obj/item/clothing/under/rank/ntpilot
	allowed_branches = list(/datum/mil_branch/employee)

/datum/gear/uniform/si_flight/New()
	..()
	var/flight = list()
	flight["NT red flight suit"]			= /obj/item/clothing/under/rank/ntpilot/nanotrasen
	flight["Hephaestus cyan flight suit"]	= /obj/item/clothing/under/rank/ntpilot/heph
	gear_tweaks += new/datum/gear_tweak/path(flight)
