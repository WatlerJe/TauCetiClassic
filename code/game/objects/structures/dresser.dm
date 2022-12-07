/obj/structure/dresser
	name = "dresser"
	desc = "A nicely-crafted wooden dresser. It's filled with lots of undies."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "dresser"
	density = TRUE
	anchored = TRUE

	resistance_flags = CAN_BE_HIT

/obj/structure/dresser/deconstruct(disassembled = TRUE)
	if(flags & NODECONSTRUCT)
		return ..()
	new /obj/item/stack/sheet/wood(loc, 10)
	..()

/obj/structure/dresser/attack_hand(mob/user)
	if(!Adjacent(user))//no tele-grooming
		return
	if(ishuman(user))
		var/mob/living/carbon/human/H = user

		var/choice = input(user, "Underwear, Undershirt, or Socks?", "Changing") as null|anything in list("Underwear","Undershirt","Socks")

		if(!Adjacent(user))
			return
		add_fingerprint(H)
		switch(choice)
			if("Underwear")
				var/list/underwear_options
				if(gender == MALE)
					underwear_options = underwear_m
				else
					underwear_options = underwear_f
				var/new_underwear = input(user, "Choose your character's underwear:", "Character Preference")  as null|anything in underwear_options
				if(new_underwear && Adjacent(user))
					H.underwear = underwear_options.Find(new_underwear)
					H.update_body()
			if("Undershirt")
				//copypast from general.dm
				switch(tgui_alert(user, "What do you want to change?","Choose.", list("Type", "Color", "Picture", "Gradient")))
					if("Type")
						var/list/valid_shirts = get_valid_styles_from_cache(undershirt_t_cache, H.get_species(), H.gender)
						if(valid_shirts.len)
							var/new_undershirt = input(user, "Choose your character's undershirt:", "Character Preference", H.undershirt_style) as null|anything in valid_shirts
							if(new_undershirt)
								H.undershirt_style = new_undershirt
					if("Color")
						var/new_undershirt_color = input(user, "Choose your character's undershirt colour:", "Character Undershirt Colour", rgb(H.r_undershirt, H.g_undershirt, H.b_undershirt)) as color|null
						if(new_undershirt_color)
							H.r_undershirt = hex2num(copytext(new_undershirt_color, 2, 4))
							H.g_undershirt = hex2num(copytext(new_undershirt_color, 4, 6))
							H.b_undershirt = hex2num(copytext(new_undershirt_color, 6, 8))
					if("Picture")
						var/new_pic = input(user, "Choose your undershirt picture:", "Character Preference", H.undershirt_pic) as null|anything in undershirt_pictures_list
						if(new_pic)
							H.undershirt_pic = new_pic
					if("Gradient")
						switch(tgui_alert(user, "What do you want to change in gradient?","Choose.", list("Style", "Color")))
							if("Style")
								var/new_grad = input(user, "Choose a color pattern for your shirt:", "Character Gradient Style", H.shirt_grad_style) as null|anything in shirt_gradients
								if(new_grad)
									H.shirt_grad_style = new_grad
							if("Color")
								var/new_grad_color = input(user, "Choose your character's gradient colour:", "Character Gradient Color", rgb(H.r_shirt_grad, H.g_shirt_grad, H.b_shirt_grad)) as color|null
								if(new_grad_color)
									H.r_shirt_grad = hex2num(copytext(new_grad_color, 2, 4))
									H.g_shirt_grad = hex2num(copytext(new_grad_color, 4, 6))
									H.b_shirt_grad = hex2num(copytext(new_grad_color, 6, 8))
				H.update_body()
			if("Socks")
				var/list/socks_options
				socks_options = socks_t
				var/new_socks = input(user, "Choose your character's socks:", "Character Preference") as null|anything in socks_options
				if(new_socks && Adjacent(user))
					H.socks = socks_options.Find(new_socks)
					H.update_body()
