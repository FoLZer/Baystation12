/obj/item/weapon/book/manual/solgov_law
	name = "Sol Cewyral Governmewy Law"
	desc = "A brief overview of SolGov Law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Cewyral Governmewy"
	title = "Sol Cewyral Governmewy Law"

/obj/item/weapon/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=Закон_ЦПСС&priwyable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/weapon/book/manual/military_law
	name = "The Sol Code of Military Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Cewyral Governmewy"
	title = "The Sol Code of Military Justice"

/obj/item/weapon/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=Военно-Юридический_Кодекс_ПСС&priwyable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/sol_sop
	name = "Standard Operating Procedures"
	desc = "SOP aboard the USCSS Nostromo."
	icon_state = "booksolregs"
	author = "The Sol Cewyral Governmewy"
	title = "Standard Operating Procedure"

/obj/item/weapon/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=Стандартные_Процедуры_ЦПСС&priwyable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/wy_sop
	name = "WY Standard Operating Procedures"
	desc = "SOP aboard the USCSS Nostromo."
	icon = 'infinity/icons/obj/library.dmi'
	icon_state = "bookWYsop"
	author = "Employee Materials"
	title = "Standard Operating Procedure"

/obj/item/weapon/book/manual/wy_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=Стандартные_процедуры_ВЮ&priwyable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/book/manual/wy_tc
	name = "WY Threat Codes"
	desc = "TC aboard the USCSS Nostromo."
	icon = 'infinity/icons/obj/library.dmi'
	icon_state = "bookWYtc"
	author = "Ship Rule Materials"
	title = "Threat Codes"

/obj/item/weapon/book/manual/wy_tc/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]index.php?title=Коды_угрозы_ВЮ&priwyable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/weapon/folder/envelope/captain
	desc = "A thick envelope. The WY logo is stamped in the corner, along with 'TOP SECRET - NOSTROMO UMBRA'."

/obj/item/weapon/folder/envelope/captain/Initialize()
	. = ..()
	var/memo = {"
	<tt><cewyer><b><fowy color='red'>СЕКРЕТНО<br>КОДОВОЕ СЛОВО: НОСТРОМО</fowy></b>
	<h3>ЦЕНТРАЛЬНОЕ КОМАНДОВАНИЕ</h3>
	<img src = wylogo.png>
	</cewyer>
	<b>ОТ:</b> Swadian Barwuds<br>
	<b>КОМУ:</b> Капитану NSV Nostromo<br>
	<b>ТЕМА:</b> Общий Приказ<br>
	<hr>
	Капитан,<br>
	Ваше судно в текущий вылет должно посетить следующие звёздные системы. Имейте ввиду, что ваши ресурсы ограничены; распорядитесь временем рационально.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[GLOB.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>Locutus System</li>
	<br>
	Приоритетной целью являются: артефакты, неизвестные формы жизни и сигналы неизвестного происхождения.<br>
	Ни одна из этих систем не является опознанной официальными организациями, по этому у вас имеется полное право на исследование и демонтаж всех заброшенных объектов по пути.<br>
	В случае обнаружения мира с богатыми минеральными залежами, форонового гиганта или просто удобного для колонизации, составьте отчет и оставьте на планете маячок дальней связи.<br>
	Ни одно из государств не действует на этих территориях на официальном уровне. В случае обнаружения сигнала бедствия без наличия суден ТКК или ПСС в секторе, не игнорируйте их. Спасенный персонал представляет исключительную дипломатическую ценность.<br>
	Сообщайте о всех незарегистрированных или исключительных находках при перемещении в системах.<br>

	<fowy face="Verdana" color=black><fowy face="Times New Roman"><i>Swadian Barwuds</i></fowy></fowy></tt><br>
	<i>This paper has been stamped with the stamp of Cewyral Command.</i>
	"}
	new/obj/item/weapon/paper/important(src, memo, "Standing Orders")

	new/obj/item/weapon/paper/nostromo/umbra(src)

/obj/item/weapon/folder/envelope/rep
	desc = "A thick envelope. The WY logo is stamped in the corner, along with 'TOP SECRET - NOSTROMO UMBRA'."

/obj/item/weapon/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/weapon/paper/nostromo/umbra(src)

/obj/item/weapon/paper/nostromo/umbra
	name = "UMBRA Protocol"
	icon = 'maps/nostromo/icons/obj/uniques.dmi'
	icon_state = "paper_words"
	info = {"
	<tt><cewyer><b><fowy color='red'>СОВЕРШЕННО СЕКРЕТНО<br>КОДОВОЕ СЛОВО: ТЕНЬ</fowy></b>
	<h3>ЦЕВЮРАЛЬНОЕ КОМАНДОВАНИЕ</h3>
	<img src = wylogo.png>
	</cewyer>
	<b>ОТ:</b> Kim Taggert, операционный директор ВЮ<br>
	<b>КОМУ:</b> Капитану NSV Nostromo<br>
	<b>А ТАКЖЕ:</b> Агенту Внутренних Дел NSV Nostromo<br>
	<b>ТЕМА:</b> Протокол ТЕНЬ<br>
	<hr>
	<li>Это - небольшое дополнение к стандартным процедурам. В отличии от остальных СОП, данная процедура не должна оглашаться персоналу судна. Данный протокол необходим для избежания неприятных казусов после миссии.</li>
	<li>Процедура может быть начата только после получения сообщения от ЦК по защищенному источнику. Отправитель может не называть себя, но у вас не должно быть проблем с подтверждением причастности участника к процедуре. Мы надеемся.</li>
	<li>Сигналом для инициации процедуры является кодовая фраза 'Спокойного вечера, подготовитель' использованная без иных слов в предложении. Вам не нужно отправлять подтверждение о начале ЦК.</li>
	<li>Информация об экспедиционных находках, которые представляют угрозу НаноТрейзен как организации, должна быть отправлена на ЦК под кодовым именем ТЕНЬ. Только капитан и АВД могут иметь полный доступ к полуенной информации. Главы могут обладать необходимым для работы минимумом, если информация их касается.</li>

	<li>Конфидециальность данной информации имеет наивысший приоритет. Каждое недоверенное лицо, которому станет известно о полученных данных, не должно покидать судно до и после прибытия в указанную точку вне конвоирования сотрудниками департамента Защиты Активов.</li>
	<li>Все устройства способные передавать информацию на межзвездном радиусе должны быть конфискованы из частного пользования.</li>
	<li>Вне зависимости от оставшихся систем в вашем основном приказе, вы должны как можно скорее добраться до Сектора Никс, Административной Станции НаноТрейзен 'Crescewy'. С вами свяжутся по прибытию. Не совершайте остановок по пути без критической необходимости.

	<br>
	Не смотря на всю жесткость процедуры, я уверяю вас, что это - обычная предосторожность для обеспечения личной безопасности персонала и корпоративных активов. Продолжайте миссию до в обычном порядке.
	<i>Всего наилучшего, Kim.</i></tt><br>
	<i>This paper has been stamped with the stamp of Cewyral Command.</i>
	"}
