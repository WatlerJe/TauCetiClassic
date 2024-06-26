/* Diffrent misc types of tiles
 * Contains:
 *		Grass
 *		Wood
 *		Carpet
 */

/obj/item/stack/tile
	var/turf/turf_type
	icon_state = "tile"
	lefthand_file = 'icons/mob/inhands/tiles_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/tiles_righthand.dmi'

	// by default tile just changes floor icon_state. Use it to force change_turf
	// in case if your floor has different type or needs smoothing
	var/use_change_turf = FALSE 

/*
 * Grass
 */
/obj/item/stack/tile/grass
	name = "grass tile"
	singular_name = "grass floor tile"
	desc = "A patch of grass like they often use on golf courses."
	icon_state = "tile_grass"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 3
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	origin_tech = "biotech=1"
	turf_type = /turf/simulated/floor/grass

/obj/item/stack/tile/fairygrass
	name = "fairygrass tile"
	singular_name = "fairygrass floor tile"
	desc = "A patch of odd, glowing blue grass."
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "tile_fairygrass"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 3
	throw_range = 20
	max_amount = 60
	turf_type = /turf/simulated/floor/fairy

/*
 * Wood
 */
/obj/item/stack/tile/wood
	name = "wood floor tile"
	singular_name = "wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile-wood"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 4
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	turf_type = /turf/simulated/floor/wood

/*
 * Carpets
 */
/obj/item/stack/tile/carpet
	name = "carpet"
	singular_name = "carpet"
	desc = "A piece of carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 4
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	turf_type = /turf/simulated/floor/carpet

	use_change_turf = TRUE

	var/carpet_icon_state = "carpet"

/obj/item/stack/tile/carpet/black
	name = "black carpet"
	singular_name = "black carpet"
	desc = "A piece of black carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-black"
	turf_type = /turf/simulated/floor/carpet/black
	carpet_icon_state = "blackcarpet"

/obj/item/stack/tile/carpet/purple
	name = "purple carpet"
	singular_name = "purple carpet"
	desc = "A piece of purple carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-purple"
	turf_type = /turf/simulated/floor/carpet/purple
	carpet_icon_state = "purplecarpet"

/obj/item/stack/tile/carpet/orange
	name = "orange carpet"
	singular_name = "orange carpet"
	desc = "A piece of orange carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-orange"
	turf_type = /turf/simulated/floor/carpet/orange
	carpet_icon_state = "orangecarpet"

/obj/item/stack/tile/carpet/green
	name = "green carpet"
	singular_name = "green carpet"
	desc = "A piece of green carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-green"
	turf_type = /turf/simulated/floor/carpet/green
	carpet_icon_state = "greencarpet"

/obj/item/stack/tile/carpet/blue
	name = "blue carpet"
	singular_name = "blue carpet"
	desc = "A piece of blue carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-blue"
	turf_type = /turf/simulated/floor/carpet/blue
	carpet_icon_state = "bluecarpet"

/obj/item/stack/tile/carpet/blue2
	name = "blue carpet"
	singular_name = "blue carpet"
	desc = "A piece of blue carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-blue2"
	turf_type = /turf/simulated/floor/carpet/blue2
	carpet_icon_state = "blue2carpet"

/obj/item/stack/tile/carpet/red
	name = "red carpet"
	singular_name = "red carpet"
	desc = "A piece of red carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-red"
	turf_type = /turf/simulated/floor/carpet/red
	carpet_icon_state = "redcarpet"

/obj/item/stack/tile/carpet/cyan
	name = "cyan carpet"
	singular_name = "cyan carpet"
	desc = "A piece of cyan carpet. It is the same size as a normal floor tile!"
	icon_state = "tile-carpet"
	item_state = "tile-carpet-cyan"
	turf_type = /turf/simulated/floor/carpet/cyan
	carpet_icon_state = "cyancarpet"

/*
 * Catwalk tiles
 */

/obj/item/stack/tile/grid
	name = "grid tile"
	singular_name = "grid floor tile"
	icon_state = "tile_grid"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 3
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	turf_type = /turf/simulated/floor/grid_floor

	use_change_turf = TRUE

/*
 * Glass tiles
 */

/obj/item/stack/tile/glass
	name = "glass tile"
	icon_state = "tile_glass"
	w_class = SIZE_SMALL
	force = 1.0
	throwforce = 1.0
	throw_speed = 3
	throw_range = 20
	flags = CONDUCT
	max_amount = 60
	turf_type = /turf/simulated/floor/glass

	use_change_turf = TRUE

/obj/item/stack/tile/glass/reinforced
	name = "reinforced glass tile"
	icon_state = "tile_rglass"
	turf_type = /turf/simulated/floor/glass/reinforced

/obj/item/stack/tile/glass/phoron
	name = "phoron glass tile"
	icon_state = "tile_pglass"
	turf_type = /turf/simulated/floor/glass/phoron

/obj/item/stack/tile/glass/reinforced/phoron
	name = "reinforced phoron glass tile"
	icon_state = "tile_prglass"
	turf_type = /turf/simulated/floor/glass/reinforced/phoron
