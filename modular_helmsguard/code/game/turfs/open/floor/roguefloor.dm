// This file is to modularize alternative turf icons for existing turfs.
// If you wish to change a turf's icon, direct it to its version in either \modular_helmsguard\icons\turf\roguefloor.dmi.
// If you are making a new turf, make a new .dm to define it and make a new .dmi file exclusively for what you need.
//
// This will free future contributors to make turf changes and minimize merge conflicts.

/obj/effect/decal/wood/
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "wooden_floor2edge"	Keeping this noted for reference.

/obj/effect/decal/wood/turnd
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "wooden_floor2tedge"

/obj/effect/decal/wood/ruinedwood
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "wooden_flooredge"

/obj/effect/decal/wood/ruinedwood/turned
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "wooden_floortedge"



//floors

/turf/open/floor/rogue/cobble
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "cobblestone1"

// These use otherwise unused icons. Rotated to NW highlights.

/turf/open/floor/rogue/cobble2
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "cobblestone2"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.wav'
	neighborlay = "cobbleedge"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/open/floor/rogue/dirt, /turf/open/floor/rogue/grass)

/turf/open/floor/rogue/cobble3
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "cobblestone3"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.wav'
	neighborlay = "cobbleedge"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/open/floor/rogue/dirt, /turf/open/floor/rogue/grass)

/turf/open/floor/rogue/cobble/mossy
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
//	icon_state = "mossystone1"

/turf/open/floor/rogue/cobble/mossy2
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "mossystone2"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.wav'
	neighborlay = "cobbleedge"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/open/floor/rogue/dirt, /turf/open/floor/rogue/grass)

/turf/open/floor/rogue/cobble/mossy3
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "mossystone3"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.wav'
	neighborlay = "cobbleedge"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/turf/open/floor/rogue/dirt, /turf/open/floor/rogue/grass)