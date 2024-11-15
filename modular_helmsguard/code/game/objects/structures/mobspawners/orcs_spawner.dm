///MOBS///
///DEL_ON_DEAGGRO SUBTYPES//

/mob/living/carbon/human/species/goblin/npc/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/goblin/npc/hell/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/goblin/npc/cave/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/goblin/npc/sea/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/goblin/npc/moon/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/goblin/cave/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/goblin/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/halforc/orc_raider/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/carbon/human/species/halforc/orc_raider/savage_orc/spawned
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/orc/ranged/spawned
	del_on_deaggro = 1 MINUTES

///SPAWNER///

/obj/effect/mobspawner/goblin_spawner
	name = "gob spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/carbon/human/species/goblin/npc/spawned = 6,
	/mob/living/simple_animal/hostile/retaliate/rogue/goblin/cave/spawned = 3,		//archer
	/mob/living/simple_animal/hostile/retaliate/rogue/goblin/spawned = 3,		//archer
	/mob/living/carbon/human/species/goblin/npc/hell/spawned = 1,
	/mob/living/carbon/human/species/goblin/npc/cave/spawned = 4,
	/mob/living/carbon/human/species/goblin/npc/sea/spawned = 1,
	/mob/living/carbon/human/species/goblin/npc/moon/spawned = 1)
	text_faction = "Goblins"	//for spawning string		//for spawning string
	objfaction = list("orcs")

/obj/effect/mobspawner/orc_spawner
	name = "orc spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/carbon/human/species/halforc/orc_raider/savage_orc/spawned = 6,
	/mob/living/carbon/human/species/halforc/orc_raider/spawned = 5,		//archer
	/mob/living/simple_animal/hostile/retaliate/rogue/orc/ranged/spawned = 5		//archer
	)
	text_faction = "Orcs"	//for spawning string		//for spawning string
	objfaction = list("orcs")

/obj/effect/mobspawner/greenskin_spawner
	name = "greenskin spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 5
	mob_types = list(
	/mob/living/carbon/human/species/goblin/npc/spawned = 5,
	/mob/living/simple_animal/hostile/retaliate/rogue/goblin/cave/spawned = 4,		//archer
	/mob/living/simple_animal/hostile/retaliate/rogue/goblin/spawned = 4,	//archer
	/mob/living/carbon/human/species/halforc/orc_raider/savage_orc/spawned = 6,
	/mob/living/carbon/human/species/halforc/orc_raider/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/orc/ranged/spawned = 3		//archer
	)
	text_faction = "Greenskins"	//for spawning string		//for spawning string
	objfaction = list("orcs")