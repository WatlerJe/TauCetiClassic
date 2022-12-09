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
		//copypast from general.dm
		switch(choice)
			if("Underwear")
				switch(tgui_alert(user, "What do you want to change?","Choose.", list("Type", "Color", "Picture")))
					if("Type")
						var/list/valid_pants = get_valid_styles_from_cache(global.underwear_cache, H.species, H.gender)
						if(valid_pants.len)
							var/new_underwear = input(user, "Choose your character's underwear:", "Character Preference", H.underwear) as null|anything in valid_pants
							if(new_underwear)
								H.underwear = new_underwear
					if("Color")
						var/new_underwear_color = input(user, "Choose your character's underwear colour:", "Character Underwear Colour", rgb(H.r_underwear, H.g_underwear, H.b_underwear)) as color|null
						if(new_underwear_color)
							H.r_underwear = hex2num(copytext(new_underwear_color, 2, 4))
							H.g_underwear = hex2num(copytext(new_underwear_color, 4, 6))
							H.b_underwear = hex2num(copytext(new_underwear_color, 6, 8))
					if("Picture")
						var/new_pic = input(user, "Choose your underwear picture:", "Character Preference", H.underwear_pic) as null|anything in global.underwear_pictures_list
						if(new_pic)
							H.underwear_pic = new_pic
			if("Undershirt")
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
			if("Socks")
				switch(tgui_alert(user, "What do you want to change?","Choose.", list("Type", "Color", "Picture", "Gradient")))
					if("Type")
						var/list/valid_socks = get_valid_styles_from_cache(global.socks_cache, H.species, H.gender)
						if(valid_socks.len)
							var/new_socks = input(user, "Choose your character's socks:", "Character Preference", H.socks) as null|anything in valid_socks
							if(new_socks)
								H.socks = new_socks
					if("Color")
						var/new_socks_color = input(user, "Choose your character's socks colour:", "Character Socks Colour", rgb(H.r_socks, H.g_socks, H.b_socks)) as color|null
						if(new_socks_color)
							H.r_socks = hex2num(copytext(new_socks_color, 2, 4))
							H.g_socks = hex2num(copytext(new_socks_color, 4, 6))
							H.b_socks = hex2num(copytext(new_socks_color, 6, 8))
					if("Picture")
						var/new_pic = input(user, "Choose your socks picture:", "Character Preference", H.socks_pic) as null|anything in global.socks_pictures_list
						if(new_pic)
							H.socks_pic = new_pic
					if("Gradient")
						switch(tgui_alert(user, "What do you want to change in gradient?","Choose.", list("Style", "Color")))
							if("Style")
								var/new_grad = input(user, "Choose a color pattern for your socks:", "Socks Gradient Style", H.socks_grad) as null|anything in global.socks_gradients
								if(new_grad)
									H.socks_grad = new_grad
							if("Color")
								var/new_grad_color = input(user, "Choose your socks's gradient colour:", "Socks Gradient Color", rgb(H.r_socks_grad, H.g_socks_grad, H.b_socks_grad)) as color|null
								if(new_grad_color)
									H.r_socks_grad = hex2num(copytext(new_grad_color, 2, 4))
									H.g_socks_grad = hex2num(copytext(new_grad_color, 4, 6))
									H.b_socks_grad = hex2num(copytext(new_grad_color, 6, 8))
		H.update_body()
