/datum/anvil_recipe/armor
	appro_skill = /datum/skill/craft/armorsmithing
	i_type = "Armor"
	craftdiff = 1

//For the sake of keeping the code modular with the introduction of new metals, each recipe has had it's main resource added to it's datum
//This way, we can avoid having to name things in strange ways and can simply have iron/cuirass, stee/cuirass, blacksteel/cuirass->
//-> and not messy names like ibreastplate and hplate

// --------- IRON RECIPES -----------

/datum/anvil_recipe/armor/iron/chainmail
	name = "Mail Haubergon"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/suit/roguetown/armor/chainmail/iron

/datum/anvil_recipe/armor/iron/chaincoif
	name = "Mail Coif"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/neck/roguetown/chaincoif/iron
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/iron/gorget
	name = "Gorget"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/neck/roguetown/gorget
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/iron/chainglove
	name = "Mail Gauntlets"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/gloves/roguetown/chain/iron
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/iron/chainleg
	name = "Mail Chausses"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/under/roguetown/chainlegs/iron
	craftdiff = 0
/*
/datum/anvil_recipe/armor/iron/chainleg/kilt
	name = "Chain Kilt"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/under/roguetown/chainlegs/iron/kilt
	craftdiff = 0
*/
/datum/anvil_recipe/armor/iron/mask
	name = "Iron Mask"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/mask/rogue/facemask
	createditem_num = 1
	craftdiff = 0
/*
/datum/anvil_recipe/armor/iron/mask/hound
	name = "Mask (Hound)"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/mask/rogue/facemask/hound
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/iron/wildguard
	name = "Wild guard Mask"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/mask/rogue/wildguard
	createditem_num = 1
	craftdiff = 0
*/

/datum/anvil_recipe/armor/iron/boot
	name = "Plated Boots"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/shoes/roguetown/boots/armor/iron
	createditem_num = 1
	craftdiff = 0

/datum/anvil_recipe/armor/iron/skullcap
	name = "Skullcap"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/head/roguetown/helmet/skullcap

/datum/anvil_recipe/armor/iron/studded
	name = "Studded Leather Armor (+ Leather Armor)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/clothing/suit/roguetown/armor/leather)
	created_item = /obj/item/clothing/suit/roguetown/armor/leather/studded

/datum/anvil_recipe/armor/studdedbikini
	name = "Studded Leather Corslet (+ Leather Corslet)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/clothing/suit/roguetown/armor/leather)
	created_item = /obj/item/clothing/suit/roguetown/armor/leather/studded/bikini

/datum/anvil_recipe/armor/iron/lbrigandine
	name = "Common Brigandine (+1 Cloth)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/natural/cloth)
	created_item = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	i_type = "Armor"

/datum/anvil_recipe/armor/iron/splintarms
	name = "Splint Rerebraces (+1 Cloth)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/natural/cloth)
	created_item = /obj/item/clothing/wrists/roguetown/splintarms

/datum/anvil_recipe/armor/iron/splintlegs
	name = "Splint Leggings (+1 Cloth)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/natural/cloth)
	created_item = /obj/item/clothing/under/roguetown/splintlegs

/datum/anvil_recipe/armor/iron/breastplate
	name = "Breastplate (+1 Iron)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/half/iron
/*
/datum/anvil_recipe/armor/helmetgoblin
	name = "Goblin Helmet (+1 Iron)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/clothing/head/roguetown/helmet/goblin
	craftdiff = 2

/datum/anvil_recipe/armor/plategoblin
	name = "Goblin Mail (+1 Iron)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/ingot/iron)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/half/iron/goblin
	craftdiff = 2
*/
// --------- STEEL RECIPES -----------

/datum/anvil_recipe/armor/steel/haubergeon
	name = "Haubergeon"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/suit/roguetown/armor/chainmail
	craftdiff = 2

/datum/anvil_recipe/armor/steel/chainkini
	name = "Mail Corslet (+1 Cloth)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/natural/cloth)
	created_item = /obj/item/clothing/suit/roguetown/armor/chainmail/bikini

/datum/anvil_recipe/armor/steel/hauberk
	name = "Hauberk (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	craftdiff = 3

/datum/anvil_recipe/armor/steel/halfplate
	name = "Half-Plate Armor (+2 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel,/obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate
	craftdiff = 3

/datum/anvil_recipe/armor/steel/heroicplate
	name = "Heroic Half-Plate Armor (+2 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/ingot/steel,/obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/heroic
	craftdiff = 4
/*
/datum/anvil_recipe/armor/steel/halfplate/fluted
	name = "Fluted Half-Plate Armor (+2 Steel, +1 Iron, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/ingot/iron, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/fluted
	craftdiff = 3

/datum/anvil_recipe/armor/steel/halfplate/fluted/ornate
	name = "Psydonite Half-Plate Armor (+ P.Cuirass, +1 Steel, +1 Blessed Silver, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/clothing/suit/roguetown/armor/plate/half/fluted/ornate, /obj/item/ingot/steel, /obj/item/ingot/silverblessed, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/fluted/ornate
	craftdiff = 3
*/
/datum/anvil_recipe/armor/steel/fullplate
	name = "Full-Plate Armor (+3 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/full
	craftdiff = 4
/*
/datum/anvil_recipe/armor/steel/fullplate/fluted
	name = "Fluted Full-Plate Armour (+3 Steel, +1 Iron, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/ingot/iron, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/full/fluted
	craftdiff = 4

/datum/anvil_recipe/armor/steel/fullplate/fluted/ornate
	name = "Psydonite Full-Plate Armour (+ P.Half-Plate, +1 Blessed Silver, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/clothing/suit/roguetown/armor/plate/fluted/ornate, /obj/item/ingot/silverblessed, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/full/fluted/ornate
	craftdiff = 4

/datum/anvil_recipe/armor/steel/fullplate/fluted/ornate/alt
	name = "Ornate Full-Plate Armour (+ P.Hauberk, +1 Steel, +2 Silver, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/ornate, /obj/item/ingot/steel, /obj/item/ingot/silver, /obj/item/ingot/silver, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/full/fluted/ornate
	craftdiff = 4
*/

/datum/anvil_recipe/armor/steel/platebikini
	name = "Half-Plate Corslet (+1 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/bikini
	craftdiff = 3

/datum/anvil_recipe/armor/steel/fullplatebikini
	name = "Full-Plate Corslet (+2 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel, /obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/full/bikini
	craftdiff = 4

/datum/anvil_recipe/armor/steel/coatplates
	name = "Coat Of Plates (+1 Steel, +1 Cured Leather)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel,/obj/item/natural/hide/cured)
	created_item = /obj/item/clothing/suit/roguetown/armor/brigandine/coatplates
	craftdiff = 3

/datum/anvil_recipe/armor/steel/steel/brigandine
	name = "Brigandine (+1 Steel, +2 Cloth)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/natural/cloth, /obj/item/natural/cloth)
	created_item = /obj/item/clothing/suit/roguetown/armor/brigandine
	craftdiff = 3

/datum/anvil_recipe/armor/steel/chaincoif
	name = "Mail Coif"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/roguetown/chaincoif
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/steel/chainmantle
	name = "Mail Mantle"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/steel/fullchaincoif
	name = "Full Mail Coif"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/roguetown/chaincoif/full
	craftdiff = 2

/datum/anvil_recipe/armor/steel/chainglove
	name = "Mail Gauntlets"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/gloves/roguetown/chain
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/steel/plateglove
	name = "Plate Gauntlets"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/gloves/roguetown/plate
	createditem_num = 1
	craftdiff = 3

/datum/anvil_recipe/armor/steel/chainleg
	name = "Mail Chausses"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/under/roguetown/chainlegs
	craftdiff = 2
/*
/datum/anvil_recipe/armor/steel/chainlegs/kilt
	name = "Chain Kilt"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/under/roguetown/chainlegs/kilt
	craftdiff = 2
*/
/datum/anvil_recipe/armor/steel/brayette
	name = "Brayette"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/under/roguetown/brayette

/datum/anvil_recipe/armor/steel/chainskirt
	name = "Mail Skirt"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/under/roguetown/chainlegs/skirt

/datum/anvil_recipe/armor/steel/plateskirt
	name = "Plate Tassets (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/under/roguetown/platelegs/skirt
	craftdiff = 2

/datum/anvil_recipe/armor/steel/platelegs
	name = "Plated Chausses (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/under/roguetown/platelegs
	craftdiff = 2

/datum/anvil_recipe/armor/steel/cuirass
	name = "Cuirass (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/half
	craftdiff = 3
/*
/datum/anvil_recipe/armor/steel/cuirass/fluted
	name = "Fluted Cuirass (+1 Steel, +1 Iron)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/iron)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/half/fluted
	craftdiff = 3

/datum/anvil_recipe/armor/steel/cuirass/fluted
	name = "Ornate Cuirass (+1 Steel, +1 Silver)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/silver)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/half/fluted/ornate
	craftdiff = 3
*/
/datum/anvil_recipe/armor/steel/scalemail
	name = "Lamellar Coat (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/scale
	craftdiff = 3

/datum/anvil_recipe/armor/steel/platebracer
	name = "Plate Bracers"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/wrists/roguetown/bracers
	createditem_num = 1

/datum/anvil_recipe/armor/steel/helmetnasal
	name = "Nasal Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmethorned
	name = "Horned Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/horned
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmetwinged
	name = "Winged Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/winged
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmetkettle
	name = "Kettle Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/kettle
	craftdiff = 2

/datum/anvil_recipe/armor/steel/widehelmetkettle
	name = "Wide Kettle Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/kettle/wide
	craftdiff = 2


/datum/anvil_recipe/armor/steel/bevor
	name = "Bevor"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/roguetown/bevor
	craftdiff = 2

/datum/anvil_recipe/armor/steel/sgorget
	name = "Steel Gorget"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/neck/roguetown/gorget/steel
	craftdiff = 2

/datum/anvil_recipe/armor/iron/cursed_collar
	name = "Cursed Collar"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/clothing/neck/roguetown/gorget/cursed_collar
	craftdiff = 1

/datum/anvil_recipe/armor/steel/helmetsall
	name = "Sallet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/sallet
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmetsallv
	name = "Sallet Visored (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/sallet/visored
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmetbuc
	name = "Bucket Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/bucket
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmetpig
	name = "Pigface Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/bascinet/pigface
	craftdiff = 2

/datum/anvil_recipe/armor/steel/helmethounskull
	name = "Hounskull Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/bascinet/pigface/hounskull
	craftdiff = 2

/datum/anvil_recipe/armor/steel/bascinet
	name = "Bascinet Helmet"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/head/roguetown/helmet/bascinet
	craftdiff = 2

/datum/anvil_recipe/armor/steel/klappvisierbascinet
	name = "Klappvisier Bascinet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/bascinet/klappvisier
	craftdiff = 3

/datum/anvil_recipe/armor/steel/helmetknight
	name = "Knight's Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/knight
	craftdiff = 3

/datum/anvil_recipe/armor/steel/helmetarmet
	name = "Armet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/knight/armet
	craftdiff = 3

/datum/anvil_recipe/armor/steel/savoyard
	name = "Savoyard Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/guard
	craftdiff = 3

/datum/anvil_recipe/armor/steel/barredhelm
	name = "Barred Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/sheriff
	craftdiff = 3

/datum/anvil_recipe/armor/steel/plateboot
	name = "Plated Boots"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/shoes/roguetown/boots/armor
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/steel/mask
	name = "Steel Mask"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/mask/rogue/facemask/steel
	createditem_num = 1
	craftdiff = 2

/datum/anvil_recipe/armor/steel/mask/hound
	name = "Mask (Hound)"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/clothing/mask/rogue/facemask/steel/hound
	createditem_num = 1
	craftdiff = 2

/*

/datum/anvil_recipe/armor/steel/astratahelm
	name = "Astrata Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/astratahelm
	craftdiff = 3

/datum/anvil_recipe/armor/steel/abyssorhelm
	name = "Abyssor Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/abyssorgreathelm
	craftdiff = 3

/datum/anvil_recipe/armor/steel/necrahelm
	name = "Necra Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/necrahelm
	craftdiff = 3

/datum/anvil_recipe/armor/steel/nochelm
	name = "Noc Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/nochelm
	craftdiff = 3

/datum/anvil_recipe/armor/steel/dendorhelm
	name = "Dendor Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/dendorhelm
	craftdiff = 3

*/

/datum/anvil_recipe/armor/steel/frogmouth
	name = "Froggemund Helmet (+2 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel, /obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/frogmouth
	craftdiff = 3

/datum/anvil_recipe/armor/steel/belt
	name = "Steel Plated Belt"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/storage/belt/rogue/leather/steel
	craftdiff = 2

// --------- SILVER RECIPES-----------

/datum/anvil_recipe/armor/silver/belt
	name = "Silver Plated Belt"
	req_bar = /obj/item/ingot/silver
	created_item = /obj/item/storage/belt/rogue/leather/plaquesilver
	craftdiff = 3

// --------- GOLD RECIPES-----------

/datum/anvil_recipe/armor/gold/belt
	name = "Gold Plated Belt"
	req_bar = /obj/item/ingot/gold
	created_item = /obj/item/storage/belt/rogue/leather/plaquegold
	craftdiff = 3

/datum/anvil_recipe/armor/gold/mask
	name = "Gold Mask"
	req_bar = /obj/item/ingot/gold
	created_item = /obj/item/clothing/mask/rogue/facemask/goldmask
	craftdiff = 3

// --------- BLACKSTEEL RECIPES-----------
/*
/datum/anvil_recipe/armor/blacksteel/cuirass
	name = "Blacksteel Cuirass (+1 B.Steel)"
	req_bar = /obj/item/ingot/blacksteel
	additional_items = list(/obj/item/ingot/blacksteel)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/blacksteel_half_plate
	craftdiff = 5

/datum/anvil_recipe/armor/blacksteel/platechest
	name = "Blacksteel Plate Armor (+3 B.Steel)"
	req_bar = /obj/item/ingot/blacksteel
	additional_items = list(/obj/item/ingot/blacksteel, /obj/item/ingot/blacksteel, /obj/item/ingot/blacksteel)
	created_item = /obj/item/clothing/suit/roguetown/armor/plate/blacksteel_full_plate
	craftdiff = 5

/datum/anvil_recipe/armor/blacksteel/platelegs
	name = "Blacksteel Plate Chausses (+1 B.Steel)"
	req_bar = /obj/item/ingot/blacksteel
	additional_items = list(/obj/item/ingot/blacksteel)
	created_item = /obj/item/clothing/under/roguetown/platelegs/blacksteel
	craftdiff = 5

/datum/anvil_recipe/armor/blacksteel/bucket
	name = "Blacksteel Bucket Helmet (+1 B.Steel)"
	req_bar = /obj/item/ingot/blacksteel
	additional_items = list(/obj/item/ingot/blacksteel)
	created_item = /obj/item/clothing/head/roguetown/helmet/blacksteel/bucket
	craftdiff = 5

/datum/anvil_recipe/armor/blacksteel/plategloves
	name = "Blacksteel Plate Gauntlets"
	req_bar = /obj/item/ingot/blacksteel
	created_item = /obj/item/clothing/gloves/roguetown/blacksteel/plategloves
	craftdiff = 5

/datum/anvil_recipe/armor/blacksteel/plateboots
	name = "Blacksteel Plate Boots"
	req_bar = /obj/item/ingot/blacksteel
	created_item = /obj/item/clothing/shoes/roguetown/boots/blacksteel/plateboots
	craftdiff = 5

/datum/anvil_recipe/armor/helmetwolf
	name = "Wolf Face Helmet (+1 Steel)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/ingot/steel)
	created_item = /obj/item/clothing/head/roguetown/helmet/heavy/wolfplate
	craftdiff = 3
	i_type = "Armor"
*/
