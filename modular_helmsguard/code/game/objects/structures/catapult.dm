/obj/structure/catapult
	name = "Siege Catapult"
	desc = "An ancient siege engine for hurling projectiles over long distances."
	icon = 'modular_helmsguard/icons/obj/structure/catapult.dmi'
	icon_state = "catapult_ready"
	anchored = 1
	density = 1
	var/xinput = 0
	var/yinput = 0
	var/xdial
	var/ydial
	var/xoffset = 0
	var/yoffset = 0
	var/offset_per_turfs = 20 //Number of turfs to offset from target by 1
	var/fixed = 0
	var/travel_time = 50
	//var/obj/item/boulder/current_projectile = null
	var/packed = 0
	var/busy = 0
	var/ready = 1
	var/loaded = 0

/*/obj/structure/catapult/examine(mob/user)
	. = ..()
	. += "It is set to [angle] degrees facing [dir2text(dir)]"*/

/obj/structure/catapult/update_icon()
	cut_overlays()
	if(ready)
		icon_state = "catapult_ready"
	else
		icon_state = "catapult_launch"
	if(loaded && ready)
		add_overlay("boulder", HIGH_OBJ_LAYER)
	else



/obj/structure/catapult/proc/check_obstruction(mob/living/carbon/user)
	var/turf/T = get_turf(src)
	if(istype(T, /turf/open/floor) && T.z > src.z)
		to_chat(user, "<span class='warning'>The catapult is obstructed by something directly above it.</span>")
		return 1
	return 0

/obj/structure/catapult/attack_hand(mob/living/carbon/user)
    // Check if the catapult is loaded
	if (packed) // Check if the catapult is packed
        // Provide a message indicating it cannot be used
		user.visible_message("<span class='notice'>The catapult is currently packed and cannot be used.</span>")
		return // Exit the proc early since no further action can be taken

	if(busy)
		to_chat(user, "<span class='warning'>Someone else is currently using this mortar.</span>")
		return
    // Provide choices to the user
	if(!ready)
		user.visible_message("<span class='notice'>[user] cranks the catapult's arm back into position.</span>")
		playsound(src, "modular_helmsguard/sound/catapult/adjusting.ogg", 100)
		if(do_after(user, 30, src))
			ready = 1
			update_icon()
			user.visible_message("<span class='notice'>The catapult is ready to fire again.</span>")
			to_chat(user, "<span class='warning'>The catapult is already loaded with a projectile.</span>")
		return

	var/choice_unpacked = alert(user, "What would you like to do with the catapult?", "Catapult Actions", "Fire!", "Target", "Pack Up")


	if(ready && !packed)
		switch(choice_unpacked)
			if ("Fire!")
				if (check_obstruction(src))  // Check for obstruction
					return // Don't proceed if obstructed
				if (!loaded)
					to_chat(user, "<span class='warning'>The catapult is not loaded yet.</span>")
					return
				if(xinput == 0 && yinput == 0) //Mortar wasn't set
					to_chat(user, "<span class='warning'>[src] needs to be aimed first.</span>")
					return
				else
					fire_catapult(user) // Pass the distance to fire_catapult
			if ("Target")
				var/temp_targ_x = input("Set longitude of strike.") as num
				if(temp_targ_x > world.maxx || temp_targ_x < 0)
					to_chat(user, "<span class='warning'>You cannot aim at this coordinate, it is outside of the area of operations.</span>")
					return
				var/temp_targ_y = input("Set latitude of strike.") as num
				if(temp_targ_y > world.maxy || temp_targ_y < 0)
					to_chat(user, "<span class='warning'>You cannot aim at this coordinate, it is outside of the area of operations.</span>")
					return
				var/turf/T = locate(temp_targ_x, temp_targ_y, src.z)
				if(get_dist(loc, T) < 10)
					to_chat(user, "<span class='warning'>You cannot aim at this coordinate, it is too close to your mortar.</span>")
					return
				if(busy)
					to_chat(user, "<span class='warning'>Someone else is currently using this mortar.</span>")
					return
				playsound(src, pick("modular_helmsguard/sound/catapult/aim.ogg", "modular_helmsguard/sound/catapult/aim2.ogg"),  100)
				user.visible_message("<span class='notice'>([user] starts adjusting [src]'s firing angle and distance.</span>",
			"<span class='notice'>You start adjusting [src]'s firing angle and distance to match the new coordinates.</span>")
				busy = 1
				if(do_after(user, 30, src))
					dir = get_dir(src, T)
					user.visible_message("<span class='notice'>([user] finishes adjusting [src]'s firing angle and distance.</span>",
					"<span class='notice'>You finish adjusting [src]'s firing angle and distance to match the new coordinates.</span>")
					busy = 0
					xinput = temp_targ_x
					yinput = temp_targ_y
				else
					busy = 0
			if ("Pack Up")
				user.visible_message("<span class='notice'>[user] begins to pack the catapult up.</span>")
				busy = 1
				playsound(src, "modular_helmsguard/sound/catapult/adjusting.ogg", 100)
				if(do_after(user, 10 SECONDS, target = src))
					user.visible_message("<span class='notice'>[user] have packed the catapult up for moving.</span>")
					anchored = 0
					packed = 1
					xinput = 0
					yinput = 0
					busy = 0
	else
		return

/obj/structure/catapult/MouseDrop(over_object, src_location, over_location)
	if(over_object == usr && Adjacent(usr) && (in_range(src, usr) && (packed) || usr.contents.Find(src)))
		if(!ishuman(usr))
			return
		visible_message(span_notice("[usr] sets up the [src]."))
		if(do_after(usr, 10 SECONDS, target = src))
			anchored = 1
			packed = 0

/obj/structure/catapult/attackby(obj/item/boulder/O, mob/living/carbon/user)

	if(istype(O, /obj/item/boulder))
		if(!ready)
			to_chat(user, "<span class='warning'>The catapult's arm needs to be drawn back again.</span>")
			return
		if(loaded)
			to_chat(user, "<span class='warning'>The catapult is already loaded with a projectile.</span>")
			return
		update_icon(src)
		user.dropItemToGround(O, src)
		O.forceMove(src)
		loaded = 1
		user.visible_message("<span class='notice'>[user] loads \a [O.name] into the catapult.</span>")
		playsound(src, 'sound/foley/hit_rock.ogg', 100)
		// Optional: Remove the projectile from the world to show it's loaded
		O.loc = src // Keeps it "inside" the catapult
		return


/obj/structure/catapult/proc/fire_catapult(mob/living/carbon/user)
	var/launchsound = list("modular_helmsguard/sound/catapult/launch.ogg", "modular_helmsguard/sound/catapult/launch2.ogg", "modular_helmsguard/sound/catapult/launch3.ogg")
	xoffset = rand(-8, 8)
	yoffset = rand(-8, 8)
	var/turf/T = locate(xinput + xoffset, yinput + yoffset, src.z)

	if(!isturf(T))
		for(var/turf/O in range(5,T))
			T = O
			continue
/*
		to_chat(user, "<span class='warning'>You cannot fire [src] to this target.</span>")
		return*/
	if (ready)
		playsound(src, pick(launchsound), 100)
		spawn(10)
			var/obj/item/boulder/flying/P = /obj/item/boulder/flying
//			var/atom/target = get_edge_target_turf(src, dir)
			user.visible_message("<span class='notice'>You fire the catapult!</span>")
			loaded = 0
			ready = 0
			update_icon()
		// Adjust `distance_input` with a random variation
		//	var/random_distance = distance_input + rand(-5, 5)
			var/z_position = src.z + 1 // Start one level above the catapult
			// Apply random offsets to target position for x and y directions

/*			if (!isturf(locate(src.x, src.y, z_position)))
			z_position = src.z // If no z-level above, stay on the current z-level
			if (!target) // Confirm target validity
			to_chat(user, "<span class='warning'>No valid target found!</span>")
			return*/
			for(var/atom/movable/AM in src)
				qdel(AM)
			new P(locate(src.x, src.y, z_position))

			for(P in (locate(src.x, src.y, z_position)))
				P.launched = TRUE
				P.throw_at(get_turf(T), get_dist(src, T), 3)
				P.travel_time = get_dist(P, src)

			update_icon()

/obj/structure/catapult/attack_right(mob/user)
	. = ..()
	if(loaded)
		unload_projectile()
		playsound(loc, 'sound/foley/cartdump.ogg', 100, FALSE, -1)
		user.visible_message("<span class='notice'>[user] unloads the catapult.</span>")
		src.loaded = 0
		update_icon()

/obj/structure/catapult/proc/unload_projectile(mob/living/carbon/user)
    // Code to handle unloading logic

	var/atom/L = drop_location()
	var/atom/movable/AM
	for(AM in src)
		AM.forceMove(L)
	playsound(src, 'sound/foley/hit_rock.ogg', 100)
	src.loaded = 0
    // Additional unloading logic...

/obj/item/boulder
	name = "boulder"
	icon = 'modular_helmsguard/icons/obj/structure/cata_ammo.dmi'
	icon_state = "boulder"
	w_class = 5
	var/launched = FALSE
	var/travel_time = 0
	var/incoming = list('modular_helmsguard/sound/catapult/incoming.ogg', 'modular_helmsguard/sound/catapult/incoming2.ogg', 'modular_helmsguard/sound/catapult/incoming3.ogg')

/obj/item/boulder/flying
	icon = 'modular_helmsguard/icons/obj/structure/cata_ammo.dmi'
	icon_state = "boulder"


/obj/item/boulder/Bump(atom/A)
	if(launched)
		playsound(get_turf(src), pick(incoming), 100, FALSE)
		spawn(travel_time * 6)
			explosion(get_turf(src), 1, -1, 2, 0)
			do_shrapnel_effect(get_turf(src))
			qdel(src)

/obj/item/boulder/onZImpact(turf/T, levels)
	if(launched)
		playsound(get_turf(src), pick(incoming), 100, FALSE)
		spawn(travel_time * 6)
			explosion(get_turf(src), 1, -1, 2, 0)
			do_shrapnel_effect(get_turf(src))
			qdel(src)

/obj/item/boulder/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	if(launched)
		if(!istype(hit_atom, /turf/open/space))
			playsound(get_turf(src), pick(incoming), 100, FALSE)
			spawn(travel_time * 6)
				explosion(get_turf(src), 1, -1, 2, 0)
				do_shrapnel_effect(get_turf(src))
				qdel(src)

/obj/item/boulder/proc/do_shrapnel_effect(atom/target)
    // Create a shrapnel component for this instance of the boulder
	var/datum/component/shrapnel/shrapnel_effect = new /datum/component/shrapnel()
	var/turf/origin_turf = get_turf(src)
	var/boomchannel = SSsounds.random_available_channel()
	var/sound/far_explosion_sound = sound(pick('modular_helmsguard/sound/catapult/explosion_distant.ogg',
	'modular_helmsguard/sound/catapult/explosion_distant2.ogg','modular_helmsguard/sound/catapult/explosion_distant3.ogg', 'modular_helmsguard/sound/catapult/explosion_distant4.ogg'))
	shrapnel_effect.projectile_type = /obj/projectile/rock_shard // Define the type of shrapnel
	shrapnel_effect.radius = 3 // Define the explosion radius
	shrapnel_effect.override_projectile_range = 5 // Optional: specify the max range of each projectile
	shrapnel_effect.do_shrapnel(src, target) // Activate shrapnel
	for(var/mob/M in urange(20, src))
		if(!M.stat)
			shake_camera(M, 3, 1)
	for(var/mob/living/player in GLOB.player_list)
		var/distance = get_dist(player, origin_turf)
		if(player.stat == DEAD)
			continue
		if(isbrain(player))
			continue
		if(distance > 20)
			player.playsound_local(get_turf(player), far_explosion_sound, 100, FALSE, pressure_affected = FALSE, channel = boomchannel)

/obj/projectile/rock_shard
	name = "rock shard"
	icon_state = "bullet"
	damage = 10
	range = 8
	pass_flags = PASSTABLE | PASSGRILLE
	armor_penetration = 8
	damage_type = BRUTE
	nodamage = FALSE
	embedchance = 20
	woundclass = BCLASS_BLUNT
	flag = "bullet"
	hitsound_wall = "ricochet"
	speed = 2
	impact_effect_type = /obj/effect/temp_visual/impact_effect