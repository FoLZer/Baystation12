/datum/data
	var/name = "data"
	var/size = 1.0

/datum/data/record
	name = "record"
	size = 5.0
	var/list/fields = list(  )

/proc/find_record(field, value, list/L)
	for(var/datum/data/record/R in L)
		if(R.fields[field] == value)
			return R
