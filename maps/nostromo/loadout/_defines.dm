//The following is a list of defs and blacklist to be used (or not) for the Sierra loadout.
/datum/map/sierra
	loadout_blacklist = list(/datum/gear/union_card, /datum/gear/eyes/security/aviators, \
	/datum/gear/suit/labcoat_corp, /datum/gear/suit/labcoat_corp_rd, \
	/datum/gear/uniform/corp_guard, /datum/gear/uniform/corp_exec, /datum/gear/uniform/corp_overalls, /datum/gear/uniform/corp_flight,
	/datum/gear/uniform/corp_exec_jacket, /datum/gear/uniform/corporate)

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/bartender)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/bartender)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/bartender)

//For roles with no uniform or formal clothing requirements
#define RESTRICTED_ROLES list(/datum/job/bartender)

//For members of the command department
#define COMMAND_ROLES list(/datum/job/captain)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/doctor)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/doctor)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/engineer)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(\
	/datum/job/engineer, /datum/job/qm,\
	/datum/job/cargo_tech)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/officer)

//For members of the supply department
#define SUPPLY_ROLES list(\
	/datum/job/qm, /datum/job/cargo_tech)

//For members of the service department
#define SERVICE_ROLES list(\
	/datum/job/janitor, /datum/job/chef, /datum/job/bartender)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(\
	/datum/job/captain, \
	/datum/job/officer)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(\
	/datum/job/captain,\
	/datum/job/qm,\
	/datum/job/officer)

#define CIVILIAN_ROLES list(\
	/datum/job/janitor, /datum/job/chef, /datum/job/bartender)
