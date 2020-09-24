/obj/structure/bookcase/manuals/security
	name = "Law Manuals bookcase"

	New()
		..()
		new /obj/item/weapon/book/manual/detective(src)
		new /obj/item/weapon/book/manual/solgov_law(src)
		new /obj/item/weapon/book/manual/wy_sop(src)
		new /obj/item/weapon/book/manual/wy_tc(src)
		new /obj/item/weapon/book/manual/military_law(src)
		update_icon()

/obj/machinery/keycard_auth/nostromo //remove in further map changes
