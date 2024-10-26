// This file is to modularize alternative turf icons for existing turfs.
// If you wish to change a turf's icon, direct it to its version in either \modular_helmsguard\icons\turf\roguefloor.dmi.
// If you are making a new turf, make a new .dm to define it and make a new .dmi file exclusively for what you need.
//
// This will free future contributors to make turf changes and minimize merge conflicts.

/obj/effect/decal/stone/blockedge
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "blocks_edges"
	mouse_opacity = 0

/obj/effect/decal/stone/blockedge/blockedgeinvert
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "blocks_edgesinv"
	mouse_opacity = 0

/obj/effect/decal/stone/mossy
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "mossyedge"
	mouse_opacity = 0

/obj/effect/decal/stone/mossy/big
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "mossystone_edges"
	mouse_opacity = 0

/obj/effect/decal/stone/chess
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "chessedge"
	mouse_opacity = 0

/obj/effect/decal/stone/chess/inv
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "chessedgeinv"
	mouse_opacity = 0

/obj/effect/decal/stone/hex
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "hexstoneedge"
	mouse_opacity = 0

/obj/effect/decal/herringbone
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "herringedge"
	mouse_opacity = 0


/obj/effect/decal/dirt
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "dirtedge"
	mouse_opacity = 0

/obj/effect/decal/dirt/road
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "roadedge"
	mouse_opacity = 0

/obj/effect/decal/dirt/grass
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "grassedge"
	mouse_opacity = 0

/obj/effect/decal/dirt/grass/hell
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "hellgrassedge"
	mouse_opacity = 0

/obj/effect/decal/wood/herringbone
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "herringbonewoodedge"
	mouse_opacity = 0

/obj/effect/decal/wood/herringbone2
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "herringbonewood2edge"
	mouse_opacity = 0

/obj/effect/decal/wood/
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "wooden_floor2edge"

/obj/effect/decal/wood/turnd
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "wooden_floor2tedge"

/obj/effect/decal/wood/ruinedwood
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "wooden_flooredge"

/obj/effect/decal/wood/ruinedwood/turned
	icon = 'modular_helmsguard/icons/turf/roguefloor.dmi'
	icon_state = "wooden_floortedge"

/obj/effect/decal/border
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "woodenborder"
	mouse_opacity = 0

/obj/effect/decal/border/ruinedwood
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "woodenborder"
	mouse_opacity = 0

/obj/effect/decal/border/ruinedwood/inverted
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "woodenborderinv"
	mouse_opacity = 0

/obj/effect/decal/border/wood
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "woodenborder2"
	mouse_opacity = 0

/obj/effect/decal/border/wood/inverted
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "woodenborder2inv"
	mouse_opacity = 0

/obj/effect/decal/border/stone
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stoneborder"
	mouse_opacity = 0

/obj/effect/decal/border/stone/inverted
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stoneborderinv"
	mouse_opacity = 0

/obj/effect/decal/border/stone/stonepattern1
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stone1edge"
	mouse_opacity = 0

/obj/effect/decal/border/stone/stonepattern2
	name = ""
	desc = ""
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stone2edge"
	mouse_opacity = 0

//floors

/turf/open/floor/rogue/ruinedwood/herringbone
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE
	landsound = 'sound/foley/jumpland/woodland.wav'
	icon_state = "herringbonewood"

/turf/open/floor/rogue/wood/herringbone
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE
	landsound = 'sound/foley/jumpland/woodland.wav'
	icon_state = "herringbonewood2"

/turf/open/floor/rogue/grass/hell
	icon_state = "hellgrass"

/turf/open/floor/rogue/blocks/stone
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stone1"
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/tileland.wav'
	footstepstealth = TRUE

/turf/open/floor/rogue/blocks/stone/stonepattern2
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stone2"

/turf/open/floor/rogue/blocks/stone/stonepattern3
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "stone3"

/// End of my adds