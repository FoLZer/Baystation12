#ifndef PSI_IMPLANT_AUTOMATIC
#define PSI_IMPLANT_AUTOMATIC "Security Level Derived"
#endif
#ifndef PSI_IMPLANT_SHOCK
#define PSI_IMPLANT_SHOCK     "Issue Neural Shock"
#endif
#ifndef PSI_IMPLANT_WARN
#define PSI_IMPLANT_WARN      "Issue Reprimand"
#endif
#ifndef PSI_IMPLANT_LOG
#define PSI_IMPLANT_LOG       "Log Incident"
#endif
#ifndef PSI_IMPLANT_DISABLED
#define PSI_IMPLANT_DISABLED  "Disabled"
#endif

/datum/map/nostromo // setting the map to use this list
	security_state = /decl/security_state/default/nostromodept

//nostromo map alert levels. Refer to security_state.dm.
/decl/security_state/default/nostromodept
	all_security_levels = list(/decl/security_level/default/nostromodept/code_green, /decl/security_level/default/nostromodept/code_violet, /decl/security_level/default/nostromodept/code_orange, /decl/security_level/default/nostromodept/code_blue, /decl/security_level/default/nostromodept/code_red, /decl/security_level/default/nostromodept/code_delta)

/decl/security_level/default/nostromodept
	icon = 'maps/nostromo/icons/security_state.dmi'

/decl/security_level/default/nostromodept/code_green
	name = "code green"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.25
	light_inner_range = 0.1
	light_outer_range = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/notice2.ogg'))

/decl/security_level/default/nostromodept/code_green/switching_down_to()
	security_announcement_green.Announce("Все угрозы для судна и его экипажа были устранены. \
	Экипажу следует вернуться к выполнению рабочих обязанностей в штатном режиме.", \
	"Внимание! Зелёный код")
	notify_station()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.unlock_high_secure_areas()

/decl/security_level/default/nostromodept/code_violet
	name = "code violet"

	light_max_bright = 0.25
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_VIOLET
	light_color_status_display = COLOR_VIOLET

	psionic_control_level = PSI_IMPLANT_LOG

	overlay_alarm = "alarm_violet"
	overlay_status_display = "status_display_violet"

/decl/security_level/default/nostromodept/code_violet/switching_up_to()
	security_announcement_up.Announce("На судне находятся нелокализованные вредоносные патогены. \
	Ответственному за медецинский отсек, следует продиагностировать экипаж на наличие вредоносных патогенов в крови. \
	Не-медицинскому персоналу следует выполнять инструкции ответственного за медецинский отсек.", "Внимание! Фиолетовый код")
	notify_station()
	GLOB.using_map.toggle_crew_sensors(2)

/decl/security_level/default/nostromodept/code_violet/switching_down_to()
	security_announcement_down.Announce("На судне находятся нелокализованные вредоносные патогены. \
	Ответственному за медецинский отсек, следует продиагностировать экипаж на наличие вредоносных патогенов в крови. \
	Не-медицинскому персоналу следует выполнять инструкции ответственного за медецинский отсек.", "Внимание! Код угрозы понижен до Фиолетового")
	notify_station()
	GLOB.using_map.unlock_high_secure_areas()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.toggle_crew_sensors(2)

/decl/security_level/default/nostromodept/code_orange
	name = "code orange"

	light_max_bright = 0.25
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"
	airlock_override = 1
	psionic_control_level = PSI_IMPLANT_LOG

/decl/security_level/default/nostromodept/code_orange/switching_up_to()
	security_announcement_up.Announce("Тяжелые нарушения в работе оборудования и повреждение переборок. \
	Всему инженерному персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Весь не-инженерный персонал должен покинуть затронутые повреждениями отсеки. Рекомендуется ношение скафандров и \
	следование указаниям инженерного персонала.", "Внимание! Оранжевый код")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(1)

/decl/security_level/default/nostromodept/code_orange/switching_down_to()
	security_announcement_down.Announce("Тяжелые нарушения в работе оборудования и повреждение переборок. \
	Всему инженерному персоналу требуется обратиться к вышестоящим сотрудникам для получения инструкций. \
	Весь не-инженерный персонал должен покинуть затронутые повреждениями отсеки. Рекомендуется ношение скафандров и \
	следование указаниям инженерного персонала.", "Внимание! Код угрозы понижен до Оражевого")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.toggle_crew_sensors(1)

/decl/security_level/default/nostromodept/code_blue
	name = "code blue"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"
	psionic_control_level = PSI_IMPLANT_LOG

/decl/security_level/default/nostromodept/code_blue/switching_up_to()
	security_announcement_up.Announce("По новой информации на судне может присутствовать угроза для безопасности экипажа. \
	Всему экипажу требуется обратиться к вышестоящим сотрудникам для получения указаний; \
	разрешено обыскивать сотрудников и отсеки.", "Внимание! Синий код")
	notify_station()
	GLOB.using_map.lock_high_secure_areas()

/decl/security_level/default/nostromodept/code_blue/switching_down_to()
	security_announcement_down.Announce("Потенциальная угроза для экипажа. \
	Всему экипажу требуется обратиться к вышестоящим сотрудникам для получения указаний; \
	разрешено обыскивать сотрудников и отсеки.", "Внимание! Код угрозы понижен до Синего")
	notify_station()
	GLOB.using_map.unlock_secure_areas()

/decl/security_level/default/nostromodept/code_red
	name = "code red"
	icon = 'icons/misc/security_state.dmi'

	light_max_bright = 0.5
	light_inner_range = 1
	light_outer_range = 2
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"

	airlock_override = 1
	psionic_control_level = PSI_IMPLANT_DISABLED
	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/misc/redalert1.ogg'))

/decl/security_level/default/nostromodept/code_red/switching_up_to()
	security_announcement_red.Announce("На судно объявлено чрезвычайное положение. \
	Весь экипаж должен обратиться к главам для получения инструкций. \
	Экипажу разрешено воспользоваться резервным оружием из хранилища. Капитану судна необходимо предоставить безопасное место для экипажа. В случае ЧС необходимо следовать инструкциям в пунке Чрезвычайные Положения.", \
	"Внимание! Красный код")
	notify_station()
	GLOB.using_map.unbolt_saferooms()
	GLOB.using_map.lock_secure_areas()
	GLOB.using_map.lock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(3)

/decl/security_level/default/nostromodept/code_red/switching_down_to()
	security_announcement_red.Announce("Взрывное устройство было обезврежено. \
	Весь экипаж должен обратиться к главам для получения инструкций. \
	Экипажу разрешено воспользоваться резервным оружием из хранилища. Капитану судна необходимо предоставить безопасное место для экипажа.", \
	"Внимание! Код угрозы понижен до Красного")
	notify_station()
	GLOB.using_map.lock_secure_areas()
	GLOB.using_map.lock_high_secure_areas()

/decl/security_level/default/nostromodept/code_delta
	name = "code delta"

	light_max_bright = 0.7
	light_inner_range = 1
	light_outer_range = 3
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_NAVY_BLUE

	icon = 'icons/misc/security_state.dmi'
	overlay_alarm = "alarm_delta"
	overlay_status_display = "status_display_delta"

	psionic_control_level = PSI_IMPLANT_DISABLED
	var/static/datum/announcement/priority/security/security_announcement_delta = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/effects/siren.ogg'))

/decl/security_level/default/nostromodept/code_delta/switching_up_to()
	security_announcement_delta.Announce("Внимание всему персоналу! Инициирован модуль самоуничтожения судна! \
	Главам судна необходимо запустить процесс запуска спасательных капсул. \
	Это не учебная тревога.", "Внимание! Код Дельта")
	notify_station()
	GLOB.using_map.unlock_secure_areas()
	GLOB.using_map.unlock_high_secure_areas()
	GLOB.using_map.toggle_crew_sensors(3)

#undef PSI_IMPLANT_AUTOMATIC
#undef PSI_IMPLANT_SHOCK
#undef PSI_IMPLANT_WARN
#undef PSI_IMPLANT_LOG
#undef PSI_IMPLANT_DISABLED
