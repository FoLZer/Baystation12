/datum/admin_secret_item/fun_secret/clear_virus
	name = "Clear All Existing Viruses"

/datum/admin_secret_item/fun_secret/clear_virus/execute(var/mob/user)
	. = ..()
	if(.)
		message_admins("[key_name_admin(usr)] has cured all diseases.")
		for(var/mob/living/carbon/M in SSmobs.mob_list)
			if(M.virus2.len)
				for(var/ID in M.virus2)
					var/datum/disease2/disease/V = M.virus2[ID]
					V.cure(M)