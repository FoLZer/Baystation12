/datum/map/nostromo/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/nostromo/map_info(victim)
	to_chat(victim, "<h2>Информация о карте</h2>")
	to_chat(victim, "Вы находитесь на борту <b>[station_name]</b>, межзвёздного буксира компании Вейланд-Ютани. Основная миссия вашего объекта - доставка назначенного груза от одной солнечной системы в другую. Как известно, один такой перелёт может стоит до двух миллиардов таллеров и проводиться около нескольких лет.")
	to_chat(victim, "Одной из главных особенностей бусировщиков Вейланд-Ютани является наличие бортового искуственного интеллекта. К примеру, бортовым ИИ на Ностромо являлась \"Мать\". \"Мать\" имеет полный контроль над буксиром, потому экипажу корабля не приходится волноваться за схождение с курса назначения или за утечку кислорода.")
	to_chat(victim, "<br><span class='danger'>Внимание!</span> На данный момент существует баг, из-за которого слоты с персонажами могут не загрузиться. Если он произошел - зайдите во вкладку OOC и нажмите 'Fix characters load'.")

/datum/map/nostromo/send_welcome()
	var/welcome_text = "<center><img src = wylogo.png /><br /><font size = 3><b>USCSS Nostromo</b> Показания Сенсоров:</font><hr />"
	welcome_text += "Отчет сгенерирован [stationdate2text()] в [stationtime2text()]</center><br /><br />"
	welcome_text += "Текущая система: <b>[system_name()]</b><br />"
	welcome_text += "Дней до Солнечной Системы: <b>[rand(15,45)]</b><br />"
	welcome_text += "Дней с последнего визита в порт: <b>[rand(60,180)]</b><br />"
	welcome_text += "Результаты сканирования показали следующие потенциальные объекты для исследования:<br />"

	var/list/space_things = list()
	var/obj/effect/overmap/nostromo = map_sectors["1"]

	var/obj/effect/overmap/visitable/O = map_sectors["1"]
	if(O.name != nostromo.name && (!istype(O, /obj/effect/overmap/visitable/ship/landable) || istype(O,/obj/effect/overmap/visitable/sector/arcticplanet)) && !O.hide_from_reports)
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " на текущем квадрате."
		if(O.loc != nostromo.loc)
			var/bearing = round(90 - Atan2(O.x - nostromo.x, O.y - nostromo.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", по азимуту [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Обнаружены сигналы бедствия:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>Сигналов бедствия не обнаружено.<br />"
	welcome_text += "<hr>"

	post_comm_message("USCSS Nostromo Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "Сканирование сектора завершено. Информация передана в базу данных консолей связи.")
