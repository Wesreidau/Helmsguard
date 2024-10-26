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

//Church floors

/turf/open/floor/rogue/churchmarble
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'	// Flipped so highlights are from NW

/turf/open/floor/rogue/churchbrick
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'	// Flipped so highlights are from NW

// Rooftops

/turf/open/floor/rogue/rooftop
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'	// Previously tiles did not slope correctly.

/*	icon_state = "roof-arw"
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/rogue/rooftop/Initialize()
	. = ..()
	icon_state = "roof"

/turf/open/floor/rogue/rooftop/green
	icon_state = "roofg-arw"

/turf/open/floor/rogue/rooftop/green/Initialize()
	. = ..()
	icon_state = "roofg"

/turf/open/floor/rogue/rooftop/green/corner1
	icon_state = "roofgc1-arw"

/turf/open/floor/rogue/rooftop/green/corner1/Initialize()
	. = ..()
	icon_state = "roofgc1"

All this might be redundant or might not, if it works, remove contents of this comment. Or never do.
*/