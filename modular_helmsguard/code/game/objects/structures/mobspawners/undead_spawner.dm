///MOBS///
///DEL_ON_DEAGGRO SUBTYPES//

///CARBON SKELETONS
/mob/living/carbon/human/species/skeleton/npc/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/skeleton/npc/dungeon/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/skeleton/npc/dungeon/boss/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/skeleton/dwarf/npc/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/skeleton/dwarf/npc/dungeon/spawned
	del_on_deaggro = 1 MINUTES

///SIMPLE SKELETONS

/mob/living/simple_animal/hostile/rogue/skeleton/axe/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/spear/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/spear/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/shield/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/bow/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard_spear/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/gravelord/spawned
	del_on_deaggro = 1 MINUTES


///GHOSTS
/mob/living/simple_animal/hostile/rogue/ghost/wraith/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith2/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith3/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/ghost/cursed/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/rogue/ghost/cursed/cursed2/spawned
	del_on_deaggro = 1 MINUTES

///SPAWNER///


/obj/effect/mobspawner/undead_all
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/carbon/human/species/skeleton/npc/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow/spawned = 3,
	/mob/living/carbon/human/species/skeleton/dwarf/npc/spawned = 2,
	/mob/living/carbon/human/species/skeleton/npc/dungeon/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow/spawned = 2,
	/mob/living/carbon/human/species/skeleton/dwarf/npc/dungeon/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/axe/spawned = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow/spawned = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/spear/spawned = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/spawned = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/spear/spawned = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/shield/spawned = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard_spear/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/gravelord/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith2/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith3/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/cursed2/spawned = 3
	)
	text_faction = "Skeletons"	//for spawning string
	objfaction = list("undead")

/obj/effect/mobspawner/skeleton_spawner_hard
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/carbon/human/species/skeleton/npc/spawned = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow/spawned = 4,
	/mob/living/carbon/human/species/skeleton/dwarf/npc/spawned = 4,
	/mob/living/carbon/human/species/skeleton/npc/dungeon/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow/spawned = 3,
	/mob/living/carbon/human/species/skeleton/dwarf/npc/dungeon/spawned = 2)
	text_faction = "Skeletons"	//for spawning string		//for spawning string
	objfaction = list("undead")

/obj/effect/mobspawner/skeleton_spawner_simple
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/skeleton/axe/spawned = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/spear/spawned = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/spawned = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/spear/spawned = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/shield/spawned = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow/spawned = 3,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow/spawned = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard_spear/spawned = 2,
	/mob/living/simple_animal/hostile/rogue/gravelord/spawned = 1
	)
	text_faction = "Skeletons"	//for spawning string		//for spawning string
	objfaction = list("undead")


/obj/effect/mobspawner/ghosts_all
	name = "wraith spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith2/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith3/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/cursed2/spawned = 1
		)
	text_faction = "Wraiths"	//for spawning string		//for spawning string
	objfaction = list("undead")


/obj/effect/mobspawner/ghosts_wraiths
	name = "wraith spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith2/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith/wraith3/spawned = 1
		)
	text_faction = "Wraiths"	//for spawning string		//for spawning string
	objfaction = list("undead")

/obj/effect/mobspawner/ghosts_cursedsouls
	name = "cursed soul spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/spawned = 1,
	/mob/living/simple_animal/hostile/rogue/ghost/cursed/cursed2/spawned = 1
		)
	text_faction = "Cursed souls"	//for spawning string		//for spawning string
	objfaction = list("undead")