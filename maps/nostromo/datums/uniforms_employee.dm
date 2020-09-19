/* ENGINEERING
 * ===========
 */

/decl/hierarchy/mil_uniform/nt/eng
	name = "Employee Engineering"
	departments = ENG

	hat = list(\
		/obj/item/clothing/head/soft/yellow, /obj/item/clothing/head/hardhat)
	under = list(\
		/obj/item/clothing/under/rank/engineer, /obj/item/clothing/under/rank/atmospheric_technician, \
		/obj/item/clothing/under/hazard)
	shoes = list(\
		/obj/item/clothing/shoes/workboots, /obj/item/clothing/shoes/workboots/alt)

/decl/hierarchy/mil_uniform/nt/eng/head
	name = "Employee Engineering Head"
	departments = ENG|COM

	hat = list(\
		/obj/item/clothing/head/soft/yellow, /obj/item/clothing/head/hardhat/white, \
		/obj/item/clothing/head/beret/infinity/engineer_ce)
	under = list(\
		/obj/item/clothing/under/rank/chief_engineer)

/* SUPPLY
 * ======
 */

/decl/hierarchy/mil_uniform/nt/sup
	name = "Employee Supply"
	departments = SUP

	hat = list(\
		/obj/item/clothing/head/soft/yellow, /obj/item/clothing/head/beret/infinity/cargo)
	under = list(\
		/obj/item/clothing/under/rank/cargotech)
	shoes = list(\
		/obj/item/clothing/shoes/brown, /obj/item/clothing/shoes/dutyboots)

/decl/hierarchy/mil_uniform/nt/sup/head
	name = "Employee Supply Head"
	departments = SUP|COM

	hat = list(\
		/obj/item/clothing/head/soft/yellow, /obj/item/clothing/head/beret/infinity/cargo_qm)
	under = list(\
		/obj/item/clothing/under/rank/cargo)

/* SECURITY
 * ========
 */

/decl/hierarchy/mil_uniform/nt/sec
	name = "Employee Security"
	departments = SEC

	hat = list(\
		/obj/item/clothing/head/beret/sec/corporate/officer, /obj/item/clothing/head/beret/sec/navy/officer, \
		/obj/item/clothing/head/beret/sec, /obj/item/clothing/head/soft/sec, \
		/obj/item/clothing/head/soft/sec/corp, /obj/item/clothing/head/soft/sec/corp/guard, \
		/obj/item/clothing/head/beret/guard)
	under = list(\
		/obj/item/clothing/under/rank/security, /obj/item/clothing/under/rank/security/alt, \
		/obj/item/clothing/under/rank/security/corp, /obj/item/clothing/under/rank/security/corp/alt, \
		/obj/item/clothing/under/rank/security/navyblue, /obj/item/clothing/under/rank/security/navyblue/alt, \
		/obj/item/clothing/under/rank/security2)
	shoes = list(\
		/obj/item/clothing/shoes/jackboots)

/decl/hierarchy/mil_uniform/nt/sec/head
	name = "Employee Security Head"
	departments = SEC|COM

	hat = list(\
		/obj/item/clothing/head/beret/sec/corporate/hos, /obj/item/clothing/head/HoS, \
		/obj/item/clothing/head/beret/infinity/hos, /obj/item/clothing/head/beret/sec/navy/hos)
	under = list(\
		/obj/item/clothing/under/rank/head_of_security, /obj/item/clothing/under/rank/head_of_security/jensen, \
		/obj/item/clothing/under/rank/head_of_security/navyblue, /obj/item/clothing/under/rank/head_of_security/navyblue/alt, \
		/obj/item/clothing/under/rank/head_of_security/corp, /obj/item/clothing/under/rank/head_of_security/corp/alt, \
		/obj/item/clothing/under/hosformalfem, /obj/item/clothing/under/hosformalmale)

/* MEDICAL
 * =======
 */

/decl/hierarchy/mil_uniform/nt/med
	name = "Employee Medical"
	departments = MED

	hat = list(\
		/obj/item/clothing/head/soft/mime, /obj/item/clothing/head/nursehat, \
		/obj/item/clothing/head/surgery, /obj/item/clothing/head/surgery/purple, \
		/obj/item/clothing/head/surgery/blue, /obj/item/clothing/head/surgery/green, \
		/obj/item/clothing/head/surgery/black, /obj/item/clothing/head/surgery/navyblue, \
		/obj/item/clothing/head/surgery/lilac, /obj/item/clothing/head/surgery/teal, \
		/obj/item/clothing/head/surgery/heliodor, /obj/item/clothing/head/hardhat/EMS, \
		/obj/item/clothing/head/beret/infinity/medical)
	under = list(\
		/obj/item/clothing/under/rank/chemist, /obj/item/clothing/under/rank/chemist_new, \
		/obj/item/clothing/under/rank/medical, /obj/item/clothing/under/rank/medical/paramedic, \
		/obj/item/clothing/under/rank/nurse, /obj/item/clothing/under/rank/nursesuit, \
		/obj/item/clothing/under/rank/orderly, /obj/item/clothing/under/rank/virologist, \
		/obj/item/clothing/under/rank/virologist_new, /obj/item/clothing/under/sterile, \
		/obj/item/clothing/under/rank/medical/scrubs, /obj/item/clothing/under/rank/medical/scrubs/blue, \
		/obj/item/clothing/under/rank/medical/scrubs/green, /obj/item/clothing/under/rank/medical/scrubs/purple, \
		/obj/item/clothing/under/rank/medical/scrubs/black, /obj/item/clothing/under/rank/medical/scrubs/navyblue, \
		/obj/item/clothing/under/rank/medical/scrubs/lilac, /obj/item/clothing/under/rank/medical/scrubs/teal, \
		/obj/item/clothing/under/rank/medical/scrubs/heliodor)
	shoes = list(\
		/obj/item/clothing/shoes/white)

/decl/hierarchy/mil_uniform/nt/med/head
	name = "Employee Medical Head"
	departments = MED|COM

	hat = list(\
		/obj/item/clothing/head/surgery, /obj/item/clothing/head/surgery/purple, \
		/obj/item/clothing/head/surgery/blue, /obj/item/clothing/head/surgery/green, \
		/obj/item/clothing/head/surgery/black, /obj/item/clothing/head/surgery/navyblue, \
		/obj/item/clothing/head/surgery/lilac, /obj/item/clothing/head/surgery/teal, \
		/obj/item/clothing/head/surgery/heliodor, /obj/item/clothing/head/beret/infinity/medical, \
		/obj/item/clothing/head/beret/infinity/medical_cmo)
	under = list(\
		/obj/item/clothing/under/rank/chief_medical_officer, /obj/item/clothing/under/sterile, \
		/obj/item/clothing/under/rank/medical/scrubs, /obj/item/clothing/under/rank/medical/scrubs/blue, \
		/obj/item/clothing/under/rank/medical/scrubs/green, /obj/item/clothing/under/rank/medical/scrubs/purple, \
		/obj/item/clothing/under/rank/medical/scrubs/black, /obj/item/clothing/under/rank/medical/scrubs/navyblue, \
		/obj/item/clothing/under/rank/medical/scrubs/lilac, /obj/item/clothing/under/rank/medical/scrubs/teal, \
		/obj/item/clothing/under/rank/medical/scrubs/heliodor)

/* COMMAND
 * =======
 */

/decl/hierarchy/mil_uniform/nt/com
	name = "Employee Command"
	departments = COM
