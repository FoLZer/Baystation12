GLOBAL_DATUM_INIT(actor, /datum/antagonist/actor, new)

/datum/antagonist/spider
	id = MODE_SPIDER
	role_text = "Spider"
	role_text_plural = "Spiders"
	flags = ANTAG_OVERRIDE_MOB | ANTAG_RANDSPAWN | ANTAG_OVERRIDE_JOB

	mob_path = /mob/living/simple_animal/spiderling
	antag_indicator = "hudborer"
	antaghud_indicator = "hudborer"

	hard_cap = 10
	hard_cap_round = 10
	initial_spawn_req = 1
	initial_spawn_target = 1

	spawn_announcement_title = "Lifesign Alert"
	spawn_announcement_delay = 5000

/datum/antagonist/spider/create_objectives(var/datum/mind/player)
	if(!..())
		return
	player.objectives += new /datum/objective/borer_survive()
	player.objectives += new /datum/objective/borer_reproduce()
	player.objectives += new /datum/objective/escape()

/datum/antagonist/spider/Initialize()
	spawn_announcement = replacetext(GLOB.using_map.unidentified_lifesigns_message, "%STATION_NAME%", station_name())
	spawn_announcement_sound = GLOB.using_map.lifesign_spawn_sound
	..()

/datum/antagonist/spider/attempt_random_spawn()
	if(config.aliens_allowed) ..()
