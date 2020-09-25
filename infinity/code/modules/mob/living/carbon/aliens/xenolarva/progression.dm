/mob/living/carbon/alien/xenolarva/Stat()
	. = ..()
	if(. && statpanel("Status"))
		stat("Growth", "[round(amount_grown)]/[max_grown]")

/mob/living/carbon/alien/xenolarva/verb/evolve()

	set name = "Moult"
	set desc = "Moult your skin and become an adult."
	set category = "Abilities"

	if(stat != CONSCIOUS)
		return

	if(!adult_form)
		verbs -= /mob/living/carbon/alien/xenolarva/verb/evolve
		return

	if(handcuffed)
		to_chat(src, SPAN_ALIEN("�� �� ������ ����������������, ���� ������� �������."))
		return

	if(amount_grown < max_grown)
		to_chat(src, SPAN_ALIEN("�� ������������ ������� ��� �����."))
		return

	// confirm_evolution() handles choices and other specific requirements.
	var/new_species = confirm_evolution()
	if(!new_species || !adult_form )
		return

	var/mob/living/carbon/human/adult = new adult_form(get_turf(src))
	adult.set_species(new_species)

	transfer_languages(src, adult)

	if(mind)
		mind.transfer_to(adult)
		if (can_namepick_as_adult)
			var/newname = sanitize(input(adult, "You have become an adult. Choose a name for yourself.", "Adult Name") as null|text, MAX_NAME_LEN)

			if(!newname)
				adult.fully_replace_character_name("[src.adult_name] ([instance_num])")
			else
				adult.fully_replace_character_name(newname)
	else
		adult.key = src.key

	for (var/obj/item/W in src.contents)
		src.drop_from_inventory(W)

	for(var/datum/language/L in languages)
		adult.add_language(L.name)
	qdel(src)

/mob/living/carbon/alien/xenolarva/proc/confirm_evolution()

	to_chat(src, SPAN_ALIEN("�� ������ � ����������� ����� � ����, ����� ����� ����� �� ����������, ��� � ���� ������!"))
	to_chat(src, SPAN_ALIEN("������ ����� ������� ���� �����. ���� ������� ������� ������ �� ���. �������� �� ����� �������� �� ��, ��� �� ������ ����������������."))
	to_chat(src, SPAN_ALIEN("<B>�������� (Hunters)</B> - ����� ������� � �������. ��� ����� ��������� �� �������� ����� ����� �� ����� � ����. ������ ��� ������ � ����� �� ���������, � ������� ������ ���. ����� ����� ��� ������� �� ���� ����������� ������������ ����� ��������� ������� � ����������� � �����(Warrior)."))
	to_chat(src, SPAN_ALIEN("<B>������ (Sentinels)</B> - ��, ��� �������� ������� ���������� �������� � �������� � �� ����������. ��� ������, �� ��������� ���������. ����� ��������� ���� ����� ��� ������� �������� � ����� ��������(Spitter)."))
	to_chat(src, SPAN_ALIEN("<B>����� (Drones)</B> - ������� ���� ����. ��������� ���� � ��, ��� ����� ������ �����, �� ��������� � �������� ����. ����� ��� ����� ������� � ����� ����(Hivelord). ������ ����� ���� ����� ���������������� � ��������(Queen)."))
	to_chat(src, SPAN_ALIEN("���� �� - ��������� (��� ������) �������, �� ������� ������, � ����� ���������."))
	var/alien_caste = alert(src, "Please choose which alien caste you shall belong to.",,"Hunter","Sentinel","Drone")
	return alien_caste ? "Xenomorph [alien_caste]" : null

