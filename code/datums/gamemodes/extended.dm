/datum/game_mode/extended
	name = "Extended"
	config_tag = "extended"
	regular = FALSE
	do_antag_random_spawns = 0
	latejoin_antag_compatible = 0

/datum/game_mode/extended/pre_setup()
	. = ..()
#ifdef LIVE_SERVER
	if (!global.game_force_started && global.ticker.roundstart_player_count(FALSE) < 20)
		return FALSE
#endif
	for(var/datum/random_event/event in random_events.major_events)
		if(istype(event, /datum/random_event/major/law_rack_corruption))
			event.disabled = TRUE
	return TRUE

/datum/game_mode/extended/announce()
	boutput(world, "<B>The current game mode is - Extended!</B>")
	boutput(world, "<B>Just have fun!</B>")
