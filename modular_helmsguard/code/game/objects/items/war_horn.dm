//regardless of horn type only same faction gets information.
/obj/item/war_horn
	name = "war horn"
	desc = "Used to sound the alarm."
	icon = 'modular_helmsguard/icons/obj/items/warhorns.dmi'
	icon_state = "humanhorn"
	slot_flags = ITEM_SLOT_HIP|ITEM_SLOT_NECK
	w_class = WEIGHT_CLASS_NORMAL
	possible_item_intents = list(/datum/intent/war_horn/retreat, /datum/intent/war_horn/rally, /datum/intent/war_horn/hold, /datum/intent/war_horn/charge)
	var/retreatsound = 'modular_hearthstone/sound/items/bogguardhorn.ogg'
	var/rallysound = 'modular_hearthstone/sound/items/watchhorn.ogg'
	var/holdsound = 'modular_hearthstone/sound/items/rghorn.ogg'
	var/chargesound = 'modular_hearthstone/sound/items/signalhorn.ogg'
	var/hornchannel

/obj/item/war_horn/human
	name = "Demi-human war horn"
	icon_state = "humanhorn"

/obj/item/war_horn/orc
	name = "Orc war horn"
	icon_state = "orchorn"

/datum/intent/war_horn
	attack_verb = list("hit", "strike")
	item_d_type = "blunt"
	chargetime = 0
	swingdelay = 0

/datum/intent/war_horn/retreat
	name = "retreat"
	icon_state = "inretreat"

/datum/intent/war_horn/rally
	name = "rally"
	icon_state = "inrally"

/datum/intent/war_horn/hold
	name = "hold"
	icon_state = "inhold"

/datum/intent/war_horn/charge
	name = "charge"
	icon_state = "incharge"

/obj/item/war_horn/attack_self(mob/living/user)
	. = ..()
	user.visible_message(span_warning("[user] is about to sound the [src]!"))
	if(do_after(user, 15))
		sound_horn(user, user.a_intent)

/obj/item/war_horn/proc/sound_horn(mob/living/user, datum/intent)
	user.stop_sound_channel(hornchannel)
	hornchannel = SSsounds.random_available_channel()
	user.visible_message(span_warning("[user] sounds the horn!"))
	if(intent.type == /datum/intent/war_horn/retreat) //retreat
		playsound(src, retreatsound, 100, TRUE, channel = hornchannel)
	if(intent.type == /datum/intent/war_horn/rally) //rally here
		playsound(src, rallysound, 100, TRUE, channel = hornchannel)
	if(intent.type == /datum/intent/war_horn/hold) //hold
		playsound(src, holdsound, 100, TRUE, channel = hornchannel)
	if(intent.type == /datum/intent/war_horn/charge) //charge
		playsound(src, chargesound, 100, TRUE, channel = hornchannel)

	var/turf/origin_turf = get_turf(src)
	for(var/mob/living/player in GLOB.player_list)
		if(player.faction[1] in user.faction) //first is probably their primary.
			if(player.stat == DEAD)
				continue
			if(isbrain(player))
				continue

			var/distance = get_dist(player, origin_turf)
			if(distance <= 7)
				continue
			var/dirtext = " to the "
			var/direction = get_dir(player, origin_turf)
			switch(direction)
				if(NORTH)
					dirtext += "north"
				if(SOUTH)
					dirtext += "south"
				if(EAST)
					dirtext += "east"
				if(WEST)
					dirtext += "west"
				if(NORTHWEST)
					dirtext += "northwest"
				if(NORTHEAST)
					dirtext += "northeast"
				if(SOUTHWEST)
					dirtext += "southwest"
				if(SOUTHEAST)
					dirtext += "southeast"
				else //Where ARE you.
					dirtext = ", although I cannot make out a direction"
			var/disttext
			switch(distance)
				if(0 to 20)
					disttext = " very close"
				if(20 to 40)
					disttext = " close"
				if(40 to 80)
					disttext = ""
				if(80 to 160)
					disttext = " far"
				else
					disttext = " very far"
			//sound played for other players
			if(intent.type == /datum/intent/war_horn/retreat)
				player.playsound_local(get_turf(player), retreatsound, 35, FALSE, pressure_affected = FALSE)
				to_chat(player, span_warning("I hear the signal to retreat somewhere[disttext][dirtext]!"))
			if(intent.type == /datum/intent/war_horn/rally)
				player.playsound_local(get_turf(player), rallysound, 35, FALSE, pressure_affected = FALSE)
				to_chat(player, span_warning("I hear the signal to rally somewhere[disttext][dirtext]!"))
			if(intent.type == /datum/intent/war_horn/hold)
				player.playsound_local(get_turf(player), holdsound, 35, FALSE, pressure_affected = FALSE)
				to_chat(player, span_warning("I hear signal to hold somewhere[disttext][dirtext]!"))
			if(intent.type == /datum/intent/war_horn/charge)
				player.playsound_local(get_turf(player), chargesound, 35, FALSE, pressure_affected = FALSE)
				to_chat(player, span_warning("I hear the signal to charge somewhere[disttext][dirtext]!"))
