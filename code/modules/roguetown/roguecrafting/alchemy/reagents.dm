// Catalyst. This reagent combined with normal potion reagent makes the strong potion reagent. Reactions defined by the end of this doccument
/datum/reagent/additive
	name = "additive"
	reagent_state = LIQUID

//Potions

/datum/reagent/medicine/minorhealthpot
	name = "Lesser Health Potion"
	description = "Somewhat regenerates all types of damage."
	reagent_state = LIQUID
	color = "#ff9494"
	taste_description = "tangy sweetness"
	overdose_threshold = 0
	metabolization_rate = 1 * REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/minorhealthpot/on_mob_life(mob/living/carbon/M) // Heals half as much as health potion, but not wounds.
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL) //can not overfill
		M.blood_volume = min(M.blood_volume+20, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0 && prob(50)) //half as effective as a normal health pot but still heals wounds.
		M.heal_wounds(10)
		M.update_damage_overlays()
		if(prob(10))
			to_chat(M, span_nicegreen("I feel my wounds mending."))
	for(var/datum/reagent/toxin/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.type,1)
	M.adjustBruteLoss(-0.5, 0) // 20u = 25 points of healing
	M.adjustFireLoss(-0.5, 0)
	M.adjustToxLoss(-0.5, 0)
	M.adjustOxyLoss(-1.5, 0)
	M.adjustCloneLoss(-1, 0)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -1)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -1)
	M.adjustOrganLoss(ORGAN_SLOT_TONGUE, -1)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -1)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -1)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -1)
	M.adjustOrganLoss(ORGAN_SLOT_APPENDIX, -1)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -1)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -1)
	..()
	. = 1

/datum/chemical_reaction/minorpot
	name = "Lesser Health Potion"
	id = /datum/reagent/medicine/minorhealthpot
	results = list(/datum/reagent/medicine/minorhealthpot = 10)
	required_reagents = list(/datum/reagent/medicine/healthpot = 5, /datum/reagent/water = 5)

/datum/chemical_reaction/minorpot
	name = "Health Potion"
	id = /datum/reagent/medicine/healthpot
	results = list(/datum/reagent/medicine/healthpot = 10)
	required_reagents = list(/datum/reagent/medicine/stronghealth = 5, /datum/reagent/water = 5)

/datum/reagent/medicine/healthpot
	name = "Health Potion"
	description = "Gradually regenerates all types of damage."
	reagent_state = LIQUID
	color = "#ff0000"
	taste_description = "lifeblood"
	overdose_threshold = 0
	metabolization_rate = REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/healthpot/on_mob_life(mob/living/carbon/M)
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+50, BLOOD_VOLUME_MAXIMUM)
	else
		//can overfill you with blood, but at a slower rate
		M.blood_volume = min(M.blood_volume+10, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0)
		//some peeps dislike the church, this allows an alternative thats not a doctor or sleep.
		M.heal_wounds(20)
		M.update_damage_overlays()
		if(prob(10))
			to_chat(M, span_nicegreen("I feel my wounds mending."))
	for(var/datum/reagent/toxin/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.type,2)
	M.adjustBruteLoss(-1, 0) // 20u = 50 points of healing
	M.adjustFireLoss(-1, 0)
	M.adjustToxLoss(-1, 0)
	M.adjustOxyLoss(-3, 0)
	M.adjustCloneLoss(-2, 0)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -2)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -2)
	M.adjustOrganLoss(ORGAN_SLOT_TONGUE, -2)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -2)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -2)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -2)
	M.adjustOrganLoss(ORGAN_SLOT_APPENDIX, -2)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -2)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -2)
	..()
	. = 1

/datum/reagent/medicine/stronghealth
	name = "Strong Health Potion"
	description = "Quickly regenerates all types of damage."
	color = "#820000be"
	taste_description = "rich lifeblood"
	metabolization_rate = REAGENTS_METABOLISM * 3

/datum/reagent/medicine/stronghealth/on_mob_life(mob/living/carbon/M)
	var/list/wCount = M.get_wounds()
	if(M.blood_volume < BLOOD_VOLUME_NORMAL)
		M.blood_volume = min(M.blood_volume+100, BLOOD_VOLUME_MAXIMUM)
	else
		M.blood_volume = min(M.blood_volume+20, BLOOD_VOLUME_MAXIMUM)
	if(wCount.len > 0)
		M.heal_wounds(30)
		M.update_damage_overlays()
		if(prob(10))
			to_chat(M, span_nicegreen("I feel my wounds mending."))
	for(var/datum/reagent/toxin/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.type,3)
	M.adjustBruteLoss(-1.5, 0) // 20u = 150 points of healing.
	M.adjustFireLoss(-1.5, 0)
	M.adjustToxLoss(-1.5, 0)
	M.adjustOxyLoss(-5, 0)
	M.adjustCloneLoss(-3, 0)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -3)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -3)
	M.adjustOrganLoss(ORGAN_SLOT_TONGUE, -3)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -3)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -3)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -3)
	M.adjustOrganLoss(ORGAN_SLOT_APPENDIX, -3)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -3)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -3)
	..()
	. = 1

/datum/reagent/water/rosewater
	name = "Rose Tea"
	description = "Steeped rose petals with mild regeneration."
	reagent_state = LIQUID
	color = "#f398b6"
	taste_description = "floral sweetness"
	overdose_threshold = 0
	metabolization_rate = REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/water/rosewater/on_mob_life(mob/living/carbon/M)
	. = ..()
	if (M.mob_biotypes & MOB_BEAST)
		M.adjustFireLoss(0.5*REM)
	else
		M.adjustBruteLoss(-0.1*REM)
		M.adjustFireLoss(-0.1*REM)
		M.adjustOxyLoss(-0.1, 0)
		var/list/our_wounds = M.get_wounds()
		if (LAZYLEN(our_wounds))
			var/upd = M.heal_wounds(1)
			if (upd)
				M.update_damage_overlays()

/datum/reagent/medicine/gender_potion
	name = "Gender Potion"
	description = "Change the user's gender."
	reagent_state = LIQUID
	color = "#FF33FF"
	taste_description = "organic scent"
	overdose_threshold = 0
	metabolization_rate = REAGENTS_METABOLISM * 5
	alpha = 173

/datum/reagent/medicine/gender_potion/on_mob_life(mob/living/carbon/M)
	if(!istype(M) || M.stat == DEAD)
		to_chat(M, span_warning("The potion can only be used on living things!"))
		return
	if(M.gender != MALE && M.gender != FEMALE)
		to_chat(M, span_warning("The potion can only be used on gendered things!"))
		return
	if(M.gender == MALE)
		M.gender = FEMALE
		M.visible_message(span_boldnotice("[M] suddenly looks more feminine!"), span_boldwarning("You suddenly feel more feminine!"))
	else
		M.gender = MALE
		M.visible_message(span_boldnotice("[M] suddenly looks more masculine!"), span_boldwarning("You suddenly feel more masculine!"))
	M.regenerate_icons()
	..()

//Someone please remember to change this to actually do mana at some point?
/datum/reagent/medicine/manapot
	name = "Mana Potion"
	description = "Gradually regenerates energy."
	reagent_state = LIQUID
	color = "#000042"
	taste_description = "sweet mana"
	overdose_threshold = 0
	metabolization_rate = REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/manapot/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M,TRAIT_NOROGSTAM))
		M.rogstam_add(30)
	..()

/datum/reagent/medicine/strongmana
	name = "Strong Mana Potion"
	description = "Rapidly regenerates energy."
	color = "#0000ff"
	taste_description = "raw power"
	metabolization_rate = REAGENTS_METABOLISM * 3

/datum/reagent/medicine/strongmana/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M,TRAIT_NOROGSTAM))
		M.rogstam_add(120)
	..()

/datum/reagent/medicine/stampot
	name = "Stamina Potion"
	description = "Gradually regenerates stamina."
	reagent_state = LIQUID
	color = "#129c00"
	taste_description = "sweet tea"
	overdose_threshold = 0
	metabolization_rate = REAGENTS_METABOLISM
	alpha = 173

/datum/reagent/medicine/stampot/on_mob_life(mob/living/carbon/M)
	if(volume > 0.99)
		M.rogfat_add(-20)
	..()
	. = 1

/datum/reagent/medicine/strongstam
	name = "Strong Stamina Potion"
	description = "Rapidly regenerates stamina."
	color = "#13df00"
	taste_description = "sparkly static"
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/medicine/strongstam/on_mob_life(mob/living/carbon/M)
	if(volume > 0.99)
		M.rogfat_add(-50)
	..()
	. = 1

/datum/reagent/medicine/antidote
	name = "Poison Antidote"
	description = ""
	reagent_state = LIQUID
	color = "#00ff00"
	taste_description = "sickly sweet"
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/medicine/antidote/on_mob_life(mob/living/carbon/M)
	if(volume > 0.99)
		M.adjustToxLoss(-4, 0)
	..()
	. = 1

/datum/reagent/medicine/diseasecure
	name = "Disease Cure"
	description = ""
	reagent_state = LIQUID
	color = "#004200"
	taste_description = "dirt"
	metabolization_rate = REAGENTS_METABOLISM * 3

/datum/reagent/medicine/diseasecure/on_mob_life(mob/living/carbon/M)
	if(volume > 0.99)
		M.adjustToxLoss(-16, 0)
	..()
	. = 1

//Buff potions
/datum/reagent/buff
	description = ""
	reagent_state = LIQUID
	metabolization_rate = REAGENTS_METABOLISM

/datum/reagent/buff/strength
	name = "Strength"
	color = "#ff9000"
	taste_description = "old meat"

/datum/reagent/buff/strength/on_mob_add(mob/living/carbon/M)
	testing("str pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/strengthpot))
		return ..()
	if(M.reagents.has_reagent(/datum/reagent/buff/strength,4))
		M.apply_status_effect(/datum/status_effect/buff/alch/strengthpot)
		M.reagents.remove_reagent(/datum/reagent/buff/strength, M.reagents.get_reagent_amount(/datum/reagent/buff/strength))
	return ..()

/datum/reagent/buff/perception
	name = "Perception"
	color = "#ffff00"
	taste_description = "cat piss"

/datum/reagent/buff/perception/on_mob_life(mob/living/carbon/M)
	testing("per pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/perceptionpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/perception),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/perceptionpot)
		M.reagents.remove_reagent(/datum/reagent/buff/perception, M.reagents.get_reagent_amount(/datum/reagent/buff/perception))
	return ..()

/datum/reagent/buff/intelligence
	name = "Intelligence"
	color = "#438127"
	taste_description = "bog water"

/datum/reagent/buff/intelligence/on_mob_life(mob/living/carbon/M)
	testing("int pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/intelligencepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/intelligence),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/intelligencepot)
		M.reagents.remove_reagent(/datum/reagent/buff/intelligence, M.reagents.get_reagent_amount(/datum/reagent/buff/intelligence))
	return ..()

/datum/reagent/buff/constitution
	name = "Constitution"
	color = "#130604"
	taste_description = "bile"

/datum/reagent/buff/constitution/on_mob_life(mob/living/carbon/M)
	testing("con pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/constitutionpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/constitution),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/constitutionpot)
		M.reagents.remove_reagent(/datum/reagent/buff/constitution, M.reagents.get_reagent_amount(/datum/reagent/buff/constitution))
	return ..()

/datum/reagent/buff/endurance
	name = "Endurance"
	color = "#ffff00"
	taste_description = "gote urine"

/datum/reagent/buff/endurance/on_mob_life(mob/living/carbon/M)
	testing("end pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/endurancepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/endurance),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/endurancepot)
		M.reagents.remove_reagent(/datum/reagent/buff/endurance, M.reagents.get_reagent_amount(/datum/reagent/buff/endurance))
	return ..()

/datum/reagent/buff/speed
	name = "Speed"
	color = "#ffff00"
	taste_description = "raw egg yolk"

/datum/reagent/buff/speed/on_mob_life(mob/living/carbon/M)
	testing("spd pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/speedpot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/speed),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/speedpot)
		M.reagents.remove_reagent(/datum/reagent/buff/speed, M.reagents.get_reagent_amount(/datum/reagent/buff/speed))
	return ..()

/datum/reagent/buff/fortune
	name = "Fortune"
	color = "#ffff00"
	taste_description = "pig urine"

/datum/reagent/buff/fortune/on_mob_life(mob/living/carbon/M)
	testing("luck pot in system")
	if(M.has_status_effect(/datum/status_effect/buff/alch/fortunepot))
		return ..()
	if(M.reagents.has_reagent((/datum/reagent/buff/fortune),4))
		M.apply_status_effect(/datum/status_effect/buff/alch/fortunepot)
		M.reagents.remove_reagent(/datum/reagent/buff/fortune, M.reagents.get_reagent_amount(/datum/reagent/buff/fortune))
	return ..()


//Poisons
/* Tested this quite a bit. Heres the deal. Metabolism REAGENTS_SLOW_METABOLISM is 0.1 and needs to be that so poison isnt too fast working but
still is dangerous. Toxloss of 3 at metabolism 0.1 puts you in dying early stage then stops for reference of these values.
A dose of ingested potion is defined as 5u, projectile deliver at most 2u, you already do damage with projectile, a bolt can only feasible hold a tiny amount of poison, so much easier to deliver than ingested and so on.
If you want to expand on poisons theres tons of fun effects TG chemistry has that could be added, randomzied damage values for more unpredictable poison, add trait based resists instead of the clunky race check etc.*/

/datum/reagent/toxin/berrypoison	// Weaker poison, balanced to make you wish for death and incapacitate but not kill
	name = "Berry Poison"
	description = ""
	reagent_state = LIQUID
	color = "#47b2e0"
	taste_description = "bitterness"

/datum/reagent/toxin/berrypoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M, TRAIT_NASTY_EATER))
		return ..()

/datum/reagent/toxin/strongpoison		// Strong poison, meant to be somewhat difficult to produce using alchemy or spawned with select antags. Designed to kill in one full dose (5u) better drink antidote fast
	name = "Strong Poison"
	description = ""
	reagent_state = LIQUID
	color = "#1a1616"
	taste_description = "burning"

/datum/reagent/toxin/strongpoison/on_mob_life(mob/living/carbon/M)
	testing("Someone was poisoned")
	if(volume > 0.09)
		if(isdwarf(M))
			M.add_nausea(1)
			M.adjustToxLoss(2.3)  // will put you just above dying crit treshold
		else
			M.add_nausea(6) //So a poison bolt (2u) will eventually cause puking at least once
			M.adjustToxLoss(4.5) // just enough so 5u will kill you dead with no help
	return ..()

/datum/reagent/toxin/organpoison
	name = "Organ Poison"
	description = ""
	reagent_state = LIQUID
	color = "#2c1818"
	taste_description = "sour meat"

/datum/reagent/toxin/organpoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M, TRAIT_NASTY_EATER) && !HAS_TRAIT(M, TRAIT_ORGAN_EATER) && !HAS_TRAIT(M, TRAIT_WILD_EATER))
		return ..()

/datum/reagent/toxin/stampoison
	name = "Stamina Poison"
	description = ""
	reagent_state = LIQUID
	color = "#083b1c"
	taste_description = "breathlessness"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM * 3

/datum/reagent/toxin/stampoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M,TRAIT_NOROGSTAM))
		M.rogstam_add(-45) //Slowly leech stamina
	return ..()

/datum/reagent/strongstampoison
	name = "Strong Stamina Poison"
	description = ""
	reagent_state = LIQUID
	color = "#041d0e"
	taste_description = "frozen air"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM * 9

/datum/reagent/strongstampoison/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M,TRAIT_NOROGSTAM))
		M.rogstam_add(-180) //Rapidly leech stamina
	return ..()


/datum/reagent/toxin/killersice
	name = "Killer's Ice"
	description = ""
	reagent_state = LIQUID
	color = "#c8c9e9"
	taste_description = "cold needles"

/datum/reagent/toxin/killersice/on_mob_life(mob/living/carbon/M)
	if(!HAS_TRAIT(M, TRAIT_NASTY_EATER) && !HAS_TRAIT(M, TRAIT_ORGAN_EATER))
		M.adjustToxLoss(5)
	return ..()


//Potion reactions
/datum/chemical_reaction/alch/stronghealth
	name = "Strong Health Potion"
	id = /datum/reagent/medicine/stronghealth
	results = list(/datum/reagent/medicine/stronghealth = 1)
	required_reagents = list(/datum/reagent/medicine/healthpot = 1, /datum/reagent/additive = 1)
	mix_message = "The cauldron glows for a moment."

/datum/chemical_reaction/alch/strongmana
	name = "Strong Mana Potion"
	id = /datum/reagent/medicine/strongmana
	results = list(/datum/reagent/medicine/strongmana = 1)
	required_reagents = list(/datum/reagent/medicine/manapot = 1, /datum/reagent/additive = 1)
	mix_message = "The cauldron glows for a moment."

/datum/chemical_reaction/alch/strongstam
	name = "Strong Stamina Potion"
	id = /datum/reagent/medicine/strongstam
	results = list(/datum/reagent/medicine/strongstam = 1)
	required_reagents = list(/datum/reagent/medicine/stampot = 1, /datum/reagent/additive = 1)
	mix_message = "The cauldron glows for a moment."

/datum/chemical_reaction/alch/strongpoison
	name = "Strong Health Poison"
	id = /datum/reagent/toxin/strongpoison
	results = list(/datum/reagent/toxin/strongpoison = 1)
	required_reagents = list(/datum/reagent/toxin/berrypoison = 1, /datum/reagent/additive = 1)
	mix_message = "The cauldron glows for a moment."

/datum/chemical_reaction/alch/strongstampoison
	name = "Strong Stamina Leech Potion"
	id = /datum/reagent/strongstampoison
	results = list(/datum/reagent/strongstampoison = 1)
	required_reagents = list(/datum/reagent/toxin/stampoison = 1, /datum/reagent/additive = 1)
	mix_message = "The cauldron glows for a moment."



/*----------\
|Ingredients|
\----------*/
/datum/reagent/undeadash
	name = "Spectral Powder"
	description = ""
	reagent_state = SOLID
	color = "#330066"
	taste_description = "tombstones"
	metabolization_rate = 0.1

/datum/reagent/toxin/fyritiusnectar
	name = "fyritius nectar"
	description = "oh no"
	reagent_state = LIQUID
	color = "#ffc400"
	metabolization_rate = 0.5

/datum/reagent/toxin/fyritiusnectar/on_mob_life(mob/living/carbon/M)
	if(volume > 0.49)
		M.add_nausea(9)
		M.adjustFireLoss(2, 0)
		M.adjust_fire_stacks(1)
		M.IgniteMob()
	return ..()
//I'm stapling our infection reagents on the bottom, because IDEK where else to put them.

/datum/reagent/infection
	name = "excess choleric humour"
	description = "Red-yellow pustulence - the carrier of disease, the enemy of all Pestrans."
	reagent_state = LIQUID
	color = "#dfe36f"
	metabolization_rate = 0.1
	var/damage_tick = 0.3
	var/lethal_fever = FALSE
	var/fever_multiplier = 1

/datum/reagent/infection/on_mob_life(mob/living/carbon/M)
	var/heat = (BODYTEMP_AUTORECOVERY_MINIMUM + clamp(volume, 3, 15)) * fever_multiplier
	M.adjustToxLoss(damage_tick, 0)
	if (lethal_fever)
		M.adjust_bodytemperature(heat, 0)
		if (prob(5))
			to_chat(M, span_warning("A wicked heat settles within me... I feel ill. Very ill."))
	else
		M.adjust_bodytemperature(heat, 0, BODYTEMP_HEAT_DAMAGE_LIMIT - 1)
		if (prob(5))
			to_chat(M, span_warning("I feel a horrible chill despite the sweat rolling from my brow..."))
	return ..()

/datum/reagent/infection/minor
	name = "disrupted choleric humor"
	description = "Symptomatic of disrupted humours."
	damage_tick = 0.1
	lethal_fever = FALSE

/datum/reagent/infection/major
	name = "excess melancholic humour"
	description = "Kingsfield's Bane. Excess melancholic has killed thousands, and even Pestra's greatest struggle against its insidious advance."
	damage_tick = 1
	lethal_fever = TRUE
	fever_multiplier = 3

/datum/reagent/infection/major/on_mob_life(mob/living/carbon/M)
	if (M.badluck(1))
		M.reagents.add_reagent(src, rand(1,3))
		to_chat(M, span_small("I feel even worse..."))
	return ..()
	