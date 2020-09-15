/datum/game_mode/spider
	name="Spider"
	config_tag = "spider"
	round_description = "На ИКН Сиерра были найдены клочки паутины, найдите в чём проблема."
	required_players = 4 //INF WAS 4
	required_enemies = 1
	auto_recall_shuttle = FALSE
	end_on_antag_death = TRUE
	shuttle_delay = 1
	antag_tags = list(MODE_SPIDER) //INF WAS list(MODE_REVOLUTIONARY, MODE_LOYALIST)
	require_all_templates = TRUE