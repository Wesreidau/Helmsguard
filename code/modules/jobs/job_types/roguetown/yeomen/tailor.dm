/datum/job/roguetown/tailor
	title = "Tailor"
	flag = TAILOR
	department_flag = TOWNER
	faction = "Station"
	tutorial = "You have worked sleepless nights on honing your craft. From sacks, to tapestry and luxurious clothing, there is little you cannot sew into existence. Use your storefront to turn even the ugliest peasant into a proper gentleman; who knows, even the nobility may pay you a visit."
	total_positions = 1
	spawn_positions = 1
	display_order = 6
	min_pq = 0
	selection_color = JCOLOR_YEOMAN
	allowed_races = list(\
	/datum/species/human/northern,\
	/datum/species/human/halfelf,\
	/datum/species/elf/wood,\
	/datum/species/dwarf/mountain,\
	/datum/species/demihuman,\
	/datum/species/tieberian,\
	)
	display_order = JDO_TAILOR
	outfit = /datum/outfit/job/roguetown/tailor
	give_bank_account = 16
	min_pq = 0
	max_pq = null
	round_contrib_points = 2

/datum/outfit/job/roguetown/tailor/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/sewing, 5, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/craft/crafting, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/craft/tanning, 4, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/labor/farming, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/craft/cooking, 1, TRUE)
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	pants = /obj/item/clothing/under/roguetown/tights
	belt = /obj/item/storage/belt/rogue/leather/cloth
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/rogueweapon/huntingknife/scissors/steel
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/needle, /obj/item/storage/keyring/sund/sund_tailor)
	if(should_wear_femme_clothes(H))
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/silkdress
		head = /obj/item/clothing/head/roguetown/shawl
	else if(should_wear_masc_clothes(H))
		armor = /obj/item/clothing/suit/roguetown/shirt/tunic/random
	H.change_stat("intelligence", 2)
	H.change_stat("perception", 1)
	H.change_stat("speed", 1)
	H.change_stat("strength", -1)
