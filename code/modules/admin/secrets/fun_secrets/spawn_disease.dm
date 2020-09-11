/datum/admin_secret_item/fun_secret/spawn_disease
	name = "Spawn Random Virus"

/datum/admin_secret_item/fun_secret/spawn_disease/execute(var/mob/user)
	. = ..()
	if(.)
		var/answer = alert("Do you want this to be a greater disease or a lesser one?",,"Greater","Lesser")
		if(answer=="Lesser")
			virus2_lesser_infection()
			message_admins("[key_name_admin(usr)] has triggered a lesser virus outbreak.")
		else
			virus2_greater_infection()
			message_admins("[key_name_admin(usr)] has triggered a greater virus outbreak.")
