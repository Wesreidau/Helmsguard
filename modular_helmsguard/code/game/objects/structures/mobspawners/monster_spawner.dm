///MOBS///
///DEL_ON_DEAGGRO SUBTYPES//

/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/female/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/female/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/wolf/poison/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/wolf/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/spider/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/mossback/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/bogtroll/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/cavetroll/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/mob/living/simple_animal/hostile/retaliate/rogue/mole/spawned
	faction = list("caves")
	del_on_deaggro = 1 MINUTES

/////////////////////////////////////////

///SPAWNER///

/obj/effect/mobspawner/monster_spawner_all
	name = "monster spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/spawned = 3,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/female/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/female/spawned = 3,
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/poison/spawned = 5,
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/spawned = 8,
	/mob/living/simple_animal/hostile/retaliate/rogue/spider/spawned = 6,
	/mob/living/simple_animal/hostile/retaliate/rogue/mossback/spawned = 6,
	/mob/living/simple_animal/hostile/retaliate/rogue/bogtroll/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/cavetroll/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/spawned = 7,
	/mob/living/simple_animal/hostile/retaliate/rogue/mole/spawned = 6
	)
	text_faction = "Some monsters"	//for spawning string		//for spawning string
	objfaction = list("caves")

/obj/effect/mobspawner/monster_spawner_minotaurs
	name = "minotaur spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/spawned = 5,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/spawned = 3,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/female/spawned = 5,
	/mob/living/simple_animal/hostile/retaliate/rogue/minotaur/axe/female/spawned = 3
	)
	text_faction = "Minotaurs"	//for spawning string		//for spawning string
	objfaction = list("caves")

/obj/effect/mobspawner/monster_spawner_animals
	name = "critter spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/poison/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/spawned = 5,
	/mob/living/simple_animal/hostile/retaliate/rogue/spider/spawned = 3,
	/mob/living/simple_animal/hostile/retaliate/rogue/mossback/spawned = 4,
	/mob/living/simple_animal/hostile/retaliate/rogue/bogtroll/spawned = 2,
	/mob/living/simple_animal/hostile/retaliate/rogue/cavetroll/spawned = 1,
	/mob/living/simple_animal/hostile/retaliate/rogue/bigrat/spawned = 6,
	/mob/living/simple_animal/hostile/retaliate/rogue/mole/spawned = 4
	)
	text_faction = "Some wild animals"	//for spawning string		//for spawning string
	objfaction = list("caves")

/obj/effect/mobspawner/monster_spawner_wolfs
	name = "volfs spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/poison/spawned = 1,
	/mob/living/simple_animal/hostile/retaliate/rogue/wolf/spawned = 3
	)
	text_faction = "Volfs"	//for spawning string
	objfaction = list("caves")

/obj/effect/mobspawner/monster_spawner_spider
	name = "spider spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/spider/spawned = 1
	)
	text_faction = "Beespiders"	//for spawning string
	objfaction = list("caves")

/obj/effect/mobspawner/monster_spawner_trolls
	name = "troll spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/retaliate/rogue/bogtroll/spawned = 1,
	/mob/living/simple_animal/hostile/retaliate/rogue/cavetroll/spawned = 1
	)
	text_faction = "Trolls"	//for spawning string
	objfaction = list("caves")