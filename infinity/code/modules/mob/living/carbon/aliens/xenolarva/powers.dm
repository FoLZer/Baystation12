/mob/living/carbon/alien/xenolarva/proc/leave_host()
	if(!loc || !loc.loc)
		to_chat(src, SPAN_ALIEN("Вы сейчас не находитесь в ком-либо."))
		return
	var/mob/living/carbon/human/H = loc.loc
	if(!istype(H))
		to_chat(src, SPAN_ALIEN("Вы сейчас не находитесь в ком-либо."))
		return
	var/obj/item/weapon/holder/holder = loc
	var/obj/item/organ/external/affected
	if(istype(holder))
		for(var/obj/item/organ/external/organ in H.organs) //Grab the organ holding the implant.
			for(var/obj/item/O in organ.implants)
				if(O == holder)
					affected = organ
					H.remove_implant(holder, TRUE, affected)
					break
	else
		dropInto(loc)
	if(affected)
		to_chat(src, SPAN_ALIEN("You crawl out of \the [H]'s [affected.name] and plop to the ground."))
	else
		to_chat(src, SPAN_ALIEN("You plop to the ground."))
