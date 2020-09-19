//nostromo ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/weapon/card/id/nostromo
	name = "identification card"
	desc = "An identification card issued to personnel aboard the USCSS Nostromo."
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/nostromo/gold
	desc = "A golden identification card belonging to the Captain."
	item_state = "gold_id"
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

/obj/item/weapon/card/id/nostromo/crew
	desc = "An identification card issued to NanoTrasen crewmembers aboard the USCSS Nostromo."
	job_access_type = /datum/job/assistant
	color = "#ccecff"

/obj/item/weapon/card/id/nostromo/crew/medical
	desc = "An identification card issued to medical crewmembers aboard the USCSS Nostromo."
	job_access_type = /datum/job/cmo
	detail_color = COLOR_PALE_BLUE_GRAY

//Security

/obj/item/weapon/card/id/nostromo/crew/security
	desc = "An identification card issued to asset protection depatment's personnel aboard the USCSS Nostromo."
	job_access_type = /datum/job/hos
	detail_color = "#e00000"
	extra_details = list("onegoldstripe")

//Engineering

/obj/item/weapon/card/id/nostromo/crew/engineering
	desc = "An identification card issued to engineering personnel aboard the USCSS Nostromo."
	job_access_type = /datum/job/chief_engineer
	detail_color = COLOR_SUN
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/nostromo/crew/supply/quartermaster
	job_access_type = /datum/job/qm
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/weapon/card/id/nostromo/crew/supply
	job_access_type = /datum/job/cargo_tech
	detail_color = COLOR_BROWN


/obj/item/weapon/card/id/nostromo/crew/service //unused
	desc = "An identification card issued to service personnel aboard the USCSS Nostromo."
	detail_color = COLOR_CIVIE_GREEN

/obj/item/weapon/card/id/nostromo/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/weapon/card/id/nostromo/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/weapon/card/id/nostromo/crew/service/bartender
	job_access_type = /datum/job/bartender