/obj/item/clothing/mask/reversebeartrap
	name = "Mechanical Trap"
	throw_speed = 2
	throw_range = 1
	gender = PLURAL
	icon = 'icons/obj/items.dmi'
	item_state = "ascent_mask"
	icon_state = "beartrap1"
	randpixel = 0
	desc = "A mechanically activated head trap. Low-tech, but reliable. Looks like it has some keyholes in it."
	throwforce = 0
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1)
	matter = list(MATERIAL_STEEL = 18750)
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = ITEM_SIZE_NORMAL
	var/key1 = 0
	var/key2 = 0
	var/key3 = 0
	var/numkeys = 4
	var/time
	var/on = 0
	var/timetodeath = 5 MINUTES
	var/last_tick

/obj/item/clothing/mask/reversebeartrap/attack_hand(mob/user as mob)
	if(!numkeys)
		var/mob/living/carbon/human/H = loc
		if(istype(H) && H.wear_mask == src)
			return 0
	..()

/obj/item/clothing/mask/reversebeartrap/attack_self(mob/user)
	if(numkeys==4)
		var/choice = input("Input number of keys","Keys") as null|anything in list("1","2","3")
		if(!choice)
			return
		switch(choice)
			if("1")
				numkeys = 1
			if("2")
				numkeys = 2
			if("3")
				numkeys = 3

/obj/item/clothing/mask/reversebeartrap/verb/setdeathtime()
	set name = "Set Time to Death"
	set category = "Object"

	if(usr.incapacitated())
		to_chat(usr,"<span class='warning'>You can't do this right now!</span>")
		return
	if(!numkeys)
		var/mob/living/carbon/human/H = src.loc
		if(istype(H) && H.wear_mask == src)
			return
	var/choice = input("Choose time to death(In seconds)", "DEATH!") as null|num
	if(!choice)
		return
	if(usr.incapacitated())
		to_chat(usr,"<span class='warning'>You can't do this right now!</span>")
		return
	timetodeath = choice*10
	to_chat(usr,"<span class='notice'>You set the timer on [src]</span>")


/obj/item/clothing/mask/reversebeartrap/attackby(obj/item/weapon/W, mob/user)
	if(numkeys==4)
		return
	if(istype(W,/obj/item/weapon/trapkey))
		if(istype(loc,/mob/living/carbon/human))
			var/obj/item/weapon/trapkey/K = W
			if(numkeys == 0)
				if(K.uid!=key1 && K.uid!=key2 && K.uid!=key3)
					to_chat(user, "It doesn't fit in there!")
					return
				if(K.uid == key1)
					to_chat(user,"You hear a click!")
					key1 = 0
					check_keys()
					return
				else if(K.uid == key2)
					to_chat(user,"You hear a click!")
					key2 = 0
					check_keys()
					return
				else if(K.uid == key3)
					to_chat(user,"You hear a click!")
					key3 = 0
					check_keys()
					return
			else
				if(!key1)
					key1 = K.uid
				else if(!key2)
					key2 = K.uid
				else if(!key3)
					key3 = K.uid
				to_chat(user, "You set the key on [src]")
				numkeys--

	return

/obj/item/clothing/mask/reversebeartrap/proc/check_keys()
	if(!key1 && !key2 && !key3)
		visible_message("[src] disappears!")
		spawn(1)
			qdel(src)

/obj/item/clothing/mask/reversebeartrap/Process()
	if(on)
		if(world.time > last_tick)
			var/mob/living/carbon/human/H = src.loc
			last_tick = world.time + 4 SECONDS
			playsound(H.loc, 'sound/items/tick.ogg', 25, 1)
		if(world.time > time)
			var/mob/living/carbon/human/H = src.loc
			var/obj/item/organ/external/head/O = H.organs_by_name[BP_HEAD]
			new /obj/effect/gibspawner/human(H.loc, H.viruses)
			H.visible_message("<span class='danger'>Капкан отрывает голову [H]!</src>")
			O.attempt_dismemberment(10, 0, 0, 1, null, 0, 1)
			qdel(src)

/obj/item/clothing/mask/reversebeartrap/equipped(mob/user)
	if(!numkeys)
		var/mob/living/carbon/human/H = loc
		if(istype(H) && H.wear_mask == src)
			time = world.time + timetodeath
			on = 1
			START_PROCESSING(SSobj, src)

/obj/item/weapon/trapkey
	name = "Trap Key"
	desc = "For what is it?"
	icon = 'icons/obj/items.dmi'
	icon_state = "keys"
	w_class = ITEM_SIZE_TINY
	item_flags = ITEM_FLAG_NO_BLUDGEON
	var/uid = 0

/obj/item/weapon/trapkey/New()
	..()
	uid = rand(0,100000000)
