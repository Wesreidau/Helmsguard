/datum/advclass/mercenary/condottiero
	name = "Condottiero Guildsman"
	tutorial = "Hailing from the Kingdom of Etrusca, Condottieri are soldiers of fortune oft found in the employ of powerful merchants. Without a war to fight back home, the Grand Duchy has become a much-needed source of contracts. Afterall, this land is rich in coin yet poor in manpower..."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	traits_applied = list(TRAIT_OUTLANDER)
	outfit = /datum/outfit/job/roguetown/mercenary/condottiero
//	category_tags = list(CTAG_MERCENARY)
	cmode_music = 'sound/music/combat_condottiero.ogg'

/datum/outfit/job/roguetown/mercenary/condottiero/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	cloak = /obj/item/clothing/cloak/half/red
	gloves = /obj/item/clothing/gloves/roguetown/angle
	belt = /obj/item/storage/belt/rogue/leather/knifebelt/black/iron
	head = /obj/item/clothing/head/roguetown/helmet
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	backl = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/rogueweapon/sword/short
	beltr = /obj/item/quiver/bolts
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/trou/leather
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	backpack_contents = list(/obj/item/storage/belt/rogue/pouch/coins/poor, /obj/item/rogueweapon/huntingknife/idagger/navaja, /obj/item/lockpick = 1)
	if(H.mind)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/crossbows, 4, TRUE) //Possibly too high, no idea.
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/swords, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/athletics, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/sneaking, 4, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/swimming, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/stealing, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/lockpicking, 4, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/tracking, 4, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/craft/traps, 3, TRUE)
		H.change_stat("endurance", 2)
		H.change_stat("perception", 2)
		H.change_stat("speed", 2)
		H.change_stat("intelligence", 1)

	H.grant_language(/datum/language/etruscan)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
