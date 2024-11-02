

//these mobs run away when attacked
/mob/living/simple_animal/hostile/retaliate/rogue
	turns_per_move = 5
	see_in_dark = 6
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes aside"
	response_disarm_simple = "gently push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	faction = list("rogueanimal")
	robust_searching = 1
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	attack_sound = PUNCHWOOSH
	health = 40
	maxHealth = 40
	move_to_delay = 5
	d_intent = INTENT_DODGE
	minbodytemp = 180
	lose_patience_timeout = 150
	vision_range = 5
	aggro_vision_range = 18
	harm_intent_damage = 5
	attack_same = 0
	environment_smash = ENVIRONMENT_SMASH_NONE
	blood_volume = BLOOD_VOLUME_NORMAL
	food_type = list(/obj/item/reagent_containers/food/snacks/grown)
	var/obj/item/udder/udder = null
	footstep_type = FOOTSTEP_MOB_SHOE
	var/milkies = FALSE
	stop_automated_movement_when_pulled = 0
	tame_chance = 0
	retreat_distance = 10
	minimum_distance = 10
	dodge_sound = 'sound/combat/dodge.ogg'
	dodge_prob = 0
	var/deaggroprob = 10
	var/eat_forever
	candodge = TRUE


/mob/living/simple_animal/hostile/retaliate/rogue/apply_damage(damage = 0,damagetype = BRUTE, def_zone = null, blocked = FALSE, forced = FALSE)
	..()
	if(damagetype == BRUTE)
		if(damage > 5 && prob(damage * 3))
			emote("pain")
		if(damage > 10)
			Immobilize(clamp(damage/2, 1, 30))
			shake_camera(src, 1, 1)
		if(damage < 10)
			flash_fullscreen("redflash1")
		else if(damage < 20)
			flash_fullscreen("redflash2")
		else if(damage >= 20)
			flash_fullscreen("redflash3")
	if(damagetype == BURN)
		if(damage > 10 && prob(damage))
			emote("pain")
			shake_camera(src, 1, 1)
		if(damage < 10)
			flash_fullscreen("redflash1")
		else if(damage < 20)
			flash_fullscreen("redflash2")
		else if(damage >= 20)
			flash_fullscreen("redflash3")

/mob/living/simple_animal/hostile/retaliate/rogue/death(gibbed)
	emote("death")
	..(gibbed)

/mob/living/simple_animal/hostile/retaliate/rogue/handle_automated_movement()
	set waitfor = FALSE
	if(!stop_automated_movement && wander && !doing)
		if(ssaddle && has_buckled_mobs())
			return 0
		if(find_food())
			return
		else
			..()

/mob/living/simple_animal/hostile/retaliate/rogue/proc/find_food()
	if(food > 50 && !eat_forever)
		return
	var/list/around = view(1, src)
	var/list/foundfood = list()
	if(stat)
		return
	for(var/obj/item/F in around)
		if(is_type_in_list(F, food_type))
			foundfood += F
			if(src.Adjacent(F))
				face_atom(F)
				playsound(src,'sound/misc/eat.ogg', rand(30,60), TRUE)
				qdel(F)
				food = max(food + 30, 100)
				return TRUE
	for(var/obj/item/F in foundfood)
		if(is_type_in_list(F, food_type))
			var/turf/T = get_turf(F)
			Goto(T,move_to_delay,0)
			return TRUE
	return FALSE

/mob/living/simple_animal/hostile/retaliate/rogue/proc/eat_bodies()
	var/mob/living/L
//	var/list/around = view(aggro_vision_range, src)
	var/list/around = hearers(1, src)
	var/list/foundfood = list()
	if(stat)
		return
	for(var/mob/living/eattarg in around)
		if(!(eattarg in enemies)) //Makes a tamed rous not eat people on the floor unless instigated.
			return
		if(eattarg.stat != CONSCIOUS)
			foundfood += eattarg
			L = eattarg
			if(src.Adjacent(L))
				if(iscarbon(L))
					var/mob/living/carbon/C = L
					if(attack_sound)
						playsound(src, pick(attack_sound), 100, TRUE, -1)
					face_atom(C)
					src.visible_message(span_danger("[src] starts to rip apart [C]!"))
					if(do_after(src,100, target = L))
						var/obj/item/bodypart/limb
						var/list/limb_list = list(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)
						for(var/zone in limb_list)
							limb = C.get_bodypart(zone)
							if(limb)
								limb.dismember()
								return TRUE
						limb = C.get_bodypart(BODY_ZONE_HEAD)
						if(limb)
							limb.dismember()
							return TRUE
						limb = C.get_bodypart(BODY_ZONE_CHEST)
						if(limb)
							if(!limb.dismember())
								C.gib()
							return TRUE
				else
					if(attack_sound)
						playsound(src, pick(attack_sound), 100, TRUE, -1)
					src.visible_message(span_danger("[src] starts to rip apart [L]!"))
					if(do_after(src,100, target = L))
						L.gib()
						return TRUE
	for(var/mob/living/eattarg in foundfood)
		var/turf/T = get_turf(eattarg)
		Goto(T,move_to_delay,0)
		return TRUE
	return FALSE

/mob/living/simple_animal/hostile/retaliate/rogue/Initialize()
	..()
	if(milkies)
		udder = new()
	if(tame)
		tamed()
	ADD_TRAIT(src, TRAIT_SIMPLE_WOUNDS, TRAIT_GENERIC)

/mob/living/simple_animal/hostile/retaliate/rogue/LoseTarget()
	..()
	retreat_distance = initial(retreat_distance)
	minimum_distance = initial(minimum_distance)

/mob/living/simple_animal/hostile/retaliate/rogue/tamed()
	del_on_deaggro = 0
	aggressive = 0
	if(enemies.len)
		if(prob(23))
			enemies = list()
			src.visible_message(span_notice("[src] calms down."))
			LoseTarget()
		else
			return
	..()

/mob/living/simple_animal/hostile/retaliate/rogue/Destroy()
	qdel(udder)
	udder = null
	..()

/mob/living/simple_animal/hostile/retaliate/rogue/Life()
	. = ..()
	if(.)
		if(enemies.len)
			if(prob(5))
				emote("cidle")
			if(prob(deaggroprob))
				if(mob_timers["aggro_time"])
					if(world.time > mob_timers["aggro_time"] + 30 SECONDS)
						enemies = list()
						src.visible_message(span_info("[src] calms down."))
						LoseTarget()
				else
					mob_timers["aggro_time"] = world.time
		else
			if(prob(8))
				emote("idle")
//			for(var/direction in shuffle(list(1,2,4,8,5,6,9,10)))
//				var/step = get_step(src, direction)
//				if(step)
//					var/obj/item/reagent_containers/food/I = locate(/obj/item/reagent_containers/food) in step
//					if(is_type_in_list(I, food_type))
//						Move(step, get_dir(src, step))
			if(adult_growth)
				growth_prog += 0.5
				if(growth_prog >= 100)
					if(isturf(loc))
						var/mob/living/simple_animal/A = new adult_growth(loc)
						if(tame)
							A.tame = TRUE
						qdel(src)
						return
			else
				if(childtype)
					make_babies()
		if(udder)
			if(production > 0)
				production--
				udder.generateMilk()

/mob/living/simple_animal/hostile/retaliate/rogue/Retaliate()
//	if(!enemies.len && message)
//		src.visible_message(span_warning("[src] panics!"))
//	if(flee)
//		retreat_distance = 10
//		minimum_distance = 10
	mob_timers["aggro_time"] = world.time
	..()

/mob/living/simple_animal/hostile/retaliate/rogue/attackby(obj/item/O, mob/user, params)
	if(!stat && istype(O, /obj/item/reagent_containers/glass))
		if(udder && tame)
			udder.milkAnimal(O, user)
			return 1
	else
		return ..()

/mob/living/simple_animal/hostile/retaliate/rogue/proc/return_action()
	stop_automated_movement = FALSE
	walk(src,0)

/mob/living/simple_animal/hostile/retaliate/rogue/shood(mob/user)
	if(tame)
		Retaliate()

/mob/living/simple_animal/hostile/retaliate/rogue/onkick(mob/M)
	..()
	Retaliate()
	GiveTarget(M)

/mob/living/simple_animal/hostile/retaliate/rogue/beckoned(mob/user)
	if(tame && !stop_automated_movement)
		stop_automated_movement = TRUE
		Goto(user,move_to_delay)
		addtimer(CALLBACK(src, PROC_REF(return_action)), 3 SECONDS)

/mob/living/simple_animal/hostile/retaliate/rogue/food_tempted(obj/item/O, mob/user)
	testing("tempted")
	if(is_type_in_list(O, food_type) && !stop_automated_movement)
		testing("infoodtype")
		stop_automated_movement = TRUE
		Goto(user,move_to_delay)
		addtimer(CALLBACK(src, PROC_REF(return_action)), 3 SECONDS)




/mob/living/simple_animal/hostile/retaliate/rogue/MobBump(mob/living/M) //CHARGE AND TRAMPLE
	if(has_buckled_mobs())
		var/mob/living/carbon/H = buckled_mobs[1]
		var/obj/item/I = H.get_active_held_item()
		var/obj/item/U = M.get_active_held_item()
		var/charge_add = 0
		var/charge_power = STASTR + rand(5,12)
		if(H.m_intent == MOVE_INTENT_RUN && dir == get_dir(src, M))
			if(istype(I, /obj/item/rogueweapon/spear) && H.used_intent.type == SPEAR_THRUST && I.wielded)
				if(STACON + H.STACON + charge_add >= M.STACON)
					I.melee_attack_chain(H, M)
			if(HAS_TRAIT(H, TRAIT_CHARGER))
				charge_add = 3
			if(STACON + H.STACON + charge_add > M.STACON)
				if(STASTR + H.STASTR + charge_add > M.STASTR)
					M.throw_at(get_edge_target_turf(src, dir),rand(1,3),5,src,TRUE)
					M.emote("scream")
					M.Knockdown(rand(15,30))
					Immobilize(30)
					if(M.has_buckled_mobs())
						var/mob/living/carbon/J = M.buckled_mobs[1]
						M.unbuckle_all_mobs()
						J.throw_at(get_edge_target_turf(src, dir),rand(1,3),5,src,TRUE)
						J.emote("scream")
						J.Knockdown(rand(15,30))
				else
					unbuckle_all_mobs()
					Knockdown(1)
					H.Knockdown(rand(15,30))
					Immobilize(30)
					H.Immobilize(30)
			if(STACON + H.STACON + charge_add < M.STACON)
				unbuckle_all_mobs()
				Knockdown(1)
				H.Knockdown(rand(15,30))
				Immobilize(30)
				H.Immobilize(30)
			if(STACON + H.STACON + charge_add == M.STACON)
				H.emote("scream")
				M.emote("scream")
				M.Knockdown(rand(15,30))
				Knockdown(30)
			if(istype(U, /obj/item/rogueweapon/spear) && M.used_intent.type == SPEAR_THRUST && U.wielded)
				Immobilize(30)
				emote("pain")
				U.melee_attack_chain(M, H)
				H.Immobilize(30)
				if(STACON + H.STACON + charge_add <= M.STACON)
					unbuckle_all_mobs()
					H.throw_at(get_edge_target_turf(M, dir),1,5,src,TRUE)
					H.Knockdown(rand(15,30))
			Immobilize(30)
			var/playsound = FALSE
			if(M.apply_damage(charge_power, BRUTE, "chest", M.run_armor_check("chest", "blunt", damage = charge_power)))
				playsound = TRUE
			if(playsound)
				playsound(src, "genblunt", 100, TRUE)
			emote("aggro")
			visible_message(span_warning("[H] charges into [M] with [src]!"), span_warning("I charge into [M]!"))
			return TRUE

