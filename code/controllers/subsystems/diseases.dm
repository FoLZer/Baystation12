SUBSYSTEM_DEF(disease)
	name = "Disease"
	flags = SS_NO_INIT | SS_KEEP_TIMING
	wait = 1

	var/list/currentrun
	var/list/processing = list()

/datum/controller/subsystem/disease/stat_entry(msg)
	..("P:[processing.len]")

/datum/controller/subsystem/disease/fire(resumed = 0)
	if (!resumed)
		src.currentrun = processing.Copy()

	//cache for sanic speed (lists are references anyways)
	var/list/currentrun = src.currentrun

	while (length(currentrun))
		var/datum/thing = currentrun[currentrun.len]
		currentrun.len--

		if(QDELETED(thing))
			processing -= thing
			if (MC_TICK_CHECK)
				return
			continue

		thing.Process()

		if (MC_TICK_CHECK)
			return

	currentrun = null