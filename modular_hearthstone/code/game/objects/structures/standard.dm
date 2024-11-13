
/obj/item/helmsbanner/pole
	force = 10
	force_wielded = 15
	possible_item_intents = list(SPEAR_THRUST, SPEAR_BASH)
	gripped_intents = list(SPEAR_THRUST, SPEAR_BASH)
	name = "banner pole"
	icon_state = "banner_pole"
	icon = 'modular_hearthstone/icons/obj/banners.dmi'
	pixel_y = 0
	pixel_x = 0
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	layer = ABOVE_MOB_LAYER
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 8
	max_blade_int = 100
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/iron
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 5
	thrown_bclass = BCLASS_STAB
	throwforce = 20
	resistance_flags = FLAMMABLE
	var/picked = FALSE
	var/obj/item/natural/cloth/banner = null
	var/standard_color_base = null
	var/base_color_picked = FALSE
	var/standard_color_rim = null
	var/rim_color_picked = FALSE
	var/pattern_picked = FALSE
	var/pattern_add = null
	var/pattern_color = null
	var/pattern_color_picked = FALSE
	var/emblem_add = null
	var/emblem_picked = FALSE
	var/emblem_color = null
	var/emblem_color_picked = FALSE

/obj/item/helmsbanner/pole/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = 21,"sy" = -5,"nx" = 7,"ny" = 3,"wx" = 16,"wy" = 1,"ex" = 16,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -30,"sturn" = 30,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 21,"sy" = -2,"nx" = 7,"ny" = 3,"wx" = 16,"wy" = 1,"ex" = 16,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 30,"sturn" = 30,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)

/obj/item/helmsbanner/pole/update_icon()
	. = ..()
//	cut_overlays()
	update_overlays()
	..()

/obj/item/helmsbanner/pole/update_overlays()
	. = ..()
	if(banner)
		var/mutable_appearance/heraldry = mutable_appearance(icon, "banner")
		heraldry.color = standard_color_base
		add_overlay(heraldry)
		if(standard_color_rim)
			var/mutable_appearance/rim = mutable_appearance(icon, "banner_rim")
			rim.color = standard_color_rim
			add_overlay(rim)
		if(standard_color_rim)
			var/mutable_appearance/rim = mutable_appearance(icon, "banner_rim")
			rim.color = standard_color_rim
			add_overlay(rim)
		if(pattern_picked && pattern_color_picked)
			var/mutable_appearance/pattern = mutable_appearance(icon, pattern_add)
			pattern.color = pattern_color
			add_overlay(pattern)
		if(emblem_picked)
			var/mutable_appearance/emblem = mutable_appearance(icon, emblem_add)
			emblem.color = emblem_color
			add_overlay(emblem)
	..()


/obj/item/helmsbanner/pole/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/natural/cloth))
		var/list/colors = list(
		"PURPLE"="#865c9c",
		"RED"="#933030",
		"BLACK"="#2f352f",
		"BROWN"="#685542",
		"GREEN"="#79763f",
		"BLUE"="#395480",
		"YELLOW"="#b5b004",
		"TEAL"="#249589",
		"WHITE"="#ffffff",
		"ORANGE"="#b86f0c",
		"MAJENTA"="#962e5c")
		var/base_choice_color = input(user, "Choose a Primary Color", "Banner Base") as anything in colors
		standard_color_base = base_choice_color
		base_color_picked = TRUE
		user.dropItemToGround(A, src)
		A.forceMove(src)
		user.visible_message("<span class='notice'>[user] attach a banner to the [src].</span>")
		name = "banner"
		banner = A
		if(base_color_picked)
			var/rim_choice_color = input(user, "Choose a Rim Color", "Banner Rim") as anything in colors
			standard_color_rim = rim_choice_color
			rim_color_picked = TRUE
			if(rim_color_picked)
				var/list/patterns = list(
				"Vertical Line"="v_line",
				"Horizontal Line"="h_line",
				"Cross"="cross",
				"Left Diagonal Line"="diagonal_l",
				"Right Diagonal Line"="diagonal_r",
				"X"="x",
				"None"= ""
				)
				var/pattern_choice = input(user, "Choose a Pattern", "Banner Pattern") as anything in patterns
				pattern_add = patterns[pattern_choice]
				pattern_picked = TRUE
				if(pattern_picked)
					var/pattern_color_choice = input(user, "Choose a Pattern Color", "Banner Pattern") as anything in colors
					pattern_color = pattern_color_choice
					pattern_color_picked = TRUE
					update_icon()
					if(rim_color_picked)
						var/list/emblems = list(
						"Sword"="sword",
						"Axe"="axe",
						"Crown"="crown",
						"Eagle"="eagle",
						"Wreath"="wreath",
						"Dragon"="dragon",
						"Hand"= "hand",
						"Psicross"= "psicross",
						"None"= ""
						)
						var/emblem_choice = input(user, "Choose an Emblem", "Banner Emblem") as anything in emblems
						emblem_add = emblems[emblem_choice]
						emblem_picked = TRUE
						if(emblem_picked)
							var/emblem_color_choice = input(user, "Choose an emblem Color", "Banner Emblem") as anything in colors
							emblem_color = emblem_color_choice
							emblem_color_picked = TRUE
							update_icon()
		update_icon()



/*		var/the_time = world.time
		if(world.time > (the_time + 30 SECONDS))
			return */
