/obj/item/clothing/shoes/roguetown
	name = "shoes"
	icon = 'icons/roguetown/clothing/feet.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/feet.dmi'
	desc = ""
	gender = PLURAL
	slot_flags = ITEM_SLOT_SHOES
	body_parts_covered = FEET
	body_parts_inherent = FEET
	sleeved = 'icons/roguetown/clothing/onmob/feet.dmi'
	sleevetype = "leg"
	bloody_icon_state = "shoeblood"
	equip_delay_self = 30
	resistance_flags = FIRE_PROOF
	experimental_inhand = FALSE

/obj/item/clothing/shoes/roguetown/boots
	name = "dark boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	icon_state = "blackboots"
	item_state = "blackboots"
	sewrepair = TRUE
	var/atom/movable/holdingknife = null
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "piercing" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/attackby(obj/item/W, mob/living/carbon/user, params)
	if(istype(W, /obj/item/rogueweapon/huntingknife/throwingknife))
		if(holdingknife == null)
			for(var/obj/item/clothing/shoes/roguetown/boots/B in user.get_equipped_items(TRUE))
				to_chat(loc, span_warning("I quickly slot [W] into [B]!"))
				user.transferItemToLoc(W, holdingknife)
				holdingknife = W
				playsound(loc, 'sound/foley/equip/swordsmall1.ogg')
		else
			to_chat(loc, span_warning("My boot already holds a throwing knife."))
		return
	. = ..()

/obj/item/clothing/shoes/roguetown/boots/attack_right(mob/user)
	if(holdingknife != null)
		if(!user.get_active_held_item())
			user.put_in_active_hand(holdingknife, user.active_hand_index)
			holdingknife = null
			playsound(loc, 'sound/foley/equip/swordsmall1.ogg')
			return TRUE


/obj/item/clothing/shoes/roguetown/boots/psydonboots
	name = "psydonian boots"
	desc = "Blacksteel-heeled boots. The leather refuses to be worn down, no matter how far you march through these lands."
	icon_state = "psydonboots"
	item_state = "psydonboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "piercing" = 0, "fire" = 0, "acid" = 0)
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/boots/nobleboot
	name = "noble boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "Fine dark leather boots."
	gender = PLURAL
	icon_state = "nobleboots"
	item_state = "nobleboots"
	sewrepair = TRUE
	armor = list("blunt" = 35, "slash" = 15, "stab" = 25, "piercing" = 0, "fire" = 0, "acid" = 0)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/shortboots
	name = "shortboots"
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	icon_state = "shortboots"
	item_state = "shortboots"
	sewrepair = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/ridingboots
	name = "riding boots"
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	icon_state = "ridingboots"
	item_state = "ridingboots"
	sewrepair = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

///obj/item/clothing/shoes/roguetown/ridingboots/Initialize()
//	. = ..()
//	AddComponent(/datum/component/squeak, list('sound/foley/spurs (1).ogg'sound/blank.ogg'=1), 50)

/obj/item/clothing/shoes/roguetown/simpleshoes
	name = "shoes"
	desc = ""
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	sewrepair = TRUE
	resistance_flags = null
	color = "#473a30"
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/simpleshoes/white
	color = null


/obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	name = "shoes"
	icon_state = "buckleshoes"
	color = null

/obj/item/clothing/shoes/roguetown/simpleshoes/lord
	name = "shoes"
	desc = ""
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	resistance_flags = null
	color = "#cbcac9"

/obj/item/clothing/shoes/roguetown/gladiator
	name = "leather sandals"
	desc = ""
	gender = PLURAL
	icon_state = "gladiator"
	item_state = "gladiator"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/sandals
	name = "sandals"
	desc = ""
	gender = PLURAL
	icon_state = "sandals"
	item_state = "sandals"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/shalal
	name = "babouche"
	desc = "The latest in nonsensical foreign court fashion and target of the jester's mockery."
	gender = PLURAL
	icon_state = "shalal"
	item_state = "shalal"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/leather
	name = "leather boots"
	//dropshrink = 0.75
	desc = ""
	gender = PLURAL
	icon_state = "leatherboots"
	item_state = "leatherboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "piercing" = 0, "fire" = 0, "acid" = 0)
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/boots/armor
	name = "plated boots"
	desc = "Boots forged of a set of steel plates to protect your fragile toes."
	body_parts_covered = FEET
	icon_state = "armorboots"
	item_state = "armorboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	resistance_flags = FIRE_PROOF
	max_integrity = 300
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 50, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/*

/obj/item/clothing/shoes/roguetown/boots/armor/matthios
	max_integrity = 500
	name = "gilded boots"
	desc = "Gilded tombs do worm enfold."
	icon_state = "matthiosboots"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 80, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/armor/matthios/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/shoes/roguetown/boots/armor/matthios/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/shoes/roguetown/boots/armor/zizo
	max_integrity = 500
	name = "darksteel boots"
	desc = "Plate boots. Called forth from the edge of what should be known. In Her name."
	icon_state = "zizoboots"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 80, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/armor/zizo/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/shoes/roguetown/boots/armor/zizo/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

*/

/obj/item/clothing/shoes/roguetown/boots/deerskin
	name = "deerskin leather boots"
	desc = "Boots of tough yet supple deerskin, perfect for warding tooth and blade."
	body_parts_covered = FEET
	icon_state = "deerskinboots"
	item_state = "deerskinboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = SOFTHIT
	max_integrity = 200
	armor = list("blunt" = 60, "slash" = 50, "stab" = 40, "piercing" = 20, "fire" = 0, "acid" = 0)
	allowed_race = NON_DWARVEN_RACE_TYPES
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/armor/iron
	name = "iron plated boots"
	desc = "Boots with iron for added protection."
	body_parts_covered = FEET
	icon_state = "armorironboots"
	item_state = "armorironboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	max_integrity = 200
	armor = list("blunt" = 80, "slash" = 100, "stab" = 70, "piercing" = 35, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/shoes/roguetown/jester
	name = "funny shoes"
	icon_state = "jestershoes"
	resistance_flags = null
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/jester/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)

/obj/item/clothing/shoes/roguetown/freiboots
	name = "freitrupp boots"
	desc = "Tough boots for marching and fighting, high in the style of mercenary troops."
	icon_state = "freiboots"
	item_state = "freiboots"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 15, "slash" = 15, "stab" = 15, "piercing" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/furlinedboots
	name = "fur lined boots"
	desc = "Leather boots lined with fur."
	gender = PLURAL
	icon_state = "furlinedboots"
	item_state = "furlinedboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "piercing" = 0, "fire" = 0, "acid" = 0)
	salvage_amount = 1
	salvage_result = /obj/item/natural/fur

/obj/item/clothing/shoes/roguetown/boots/furlinedanklets
	name = "fur lined anklets"
	desc = "Leather anklets lined with fur, foot remains bare."
	gender = PLURAL
	icon_state = "furlinedanklets"
	item_state = "furlinedanklets"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "piercing" = 0, "fire" = 0, "acid" = 0)
	is_barefoot = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/fur

/obj/item/clothing/shoes/roguetown/boots/clothlinedanklets
	name = "cloth lined anklets"
	desc = "Cloth anklets lined with with fibers, foot remains bare."
	gender = PLURAL
	icon_state = "clothlinedanklets"
	item_state = "furlinedanklets"
	is_barefoot = TRUE
	sewrepair = TRUE
	armor = list("blunt" = 5, "slash" = 5, "stab" = 5, "piercing" = 0, "fire" = 0, "acid" = 0) //Thinks its fair for a piece of cloth and fiber.

/obj/item/clothing/shoes/roguetown/boots/otavan/inqboots
	name = "inquisitorial boots"
	desc = "Finely crafted boots, made to stomp out darkness."
	icon_state = "inqboots"
	item_state = "inqboots"
	allowed_race = ALL_RACES_TYPES


// ----------------- BLACKSTEEL -----------------------

/obj/item/clothing/shoes/roguetown/boots/blacksteel/plateboots
	name = "blacksteel plate boots"
	desc = "Boots forged of durable blacksteel."
	body_parts_covered = FEET
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bkboots"
	item_state = "bkboots"
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null
	blocksound = PLATEHIT
	max_integrity = 400
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 60, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/blacksteel
	resistance_flags = FIRE_PROOF

// ----------------- BLACKSTEEL END -----------------------

/obj/item/clothing/shoes/roguetown/anklets
	name = "golden anklets"
	desc = "Luxurious anklets made of the finest gold. They leave the feet bare while adding an exotic flair."
	gender = PLURAL
	icon_state = "anklets"
	item_state = "anklets"
	is_barefoot = TRUE
	sewrepair = TRUE
	armor = list("blunt" = 5, "slash" = 5, "stab" = 5, "piercing" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/leather/elven_boots
	name = "woad elven boots"
	desc = "The living trunks still blossom in the spring. They let water through, but it is never cold."
	armor = list("blunt" = 100, "slash" = 10, "stab" = 100, "piercing" = 20, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)
	icon = 'icons/roguetown/clothing/special/race_armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/race_armor.dmi'
	icon_state = "welfshoes"
	item_state = "welfshoes"
	anvilrepair = /datum/skill/craft/carpentry




/// ATGEVERI


/obj/item/clothing/shoes/roguetown/boots/leather/nordman
	name = "heavy leather boots"
	desc = "A pair of strong leather boots, designed to endure battle and the chill of the north both."
	icon_state = "nordman_boots"
	item_state = "nordman_boots"
