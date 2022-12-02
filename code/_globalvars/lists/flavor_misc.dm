//Preferences stuff
	//Hairstyles
var/global/list/hair_styles_list = list()			//stores /datum/sprite_accessory/hair indexed by name
var/global/list/facial_hair_styles_list = list()	//stores /datum/sprite_accessory/facial_hair indexed by name
	//Hairstyles Cache
var/global/list/hairs_cache = list()        // Circular doubly linked list indexed by name and hash. see global_lists.dm
var/global/list/facial_hairs_cache = list() // Circular doubly linked list indexed by name and hash. see global_lists.dm
	//Underwear
var/global/list/underwear_m = list("White", "Grey", "Green", "Blue", "Black", "Mankini", "None") //Curse whoever made male/female underwear diffrent colours
var/global/list/underwear_f = list("Red", "White", "Yellow", "Blue", "Black", "Thong", "None")
	//undershirt
var/global/list/undershirt_t = list()
var/global/list/undershirt_t_cache = list()
var/global/list/socks_t = list("White normal", "White normal hipster", "White short", "White knee", "White long", "Black normal", "Black short", "Black knee", "Black long", "Tights knee", "Tights long", "Tights full", "Rainbow knee", "Rainbow long", "Stripped knee", "Stripped long", "USA knee", "USA long", "Australia knee", "Australia long", "Present knee", "Present long", "None")
	//Backpacks
var/global/list/backbaglist = list("Nothing", "Backpack", "Sporty Backpack", "Satchel", "Satchel Alt")
	//Heights
var/global/list/heights_list = list(HUMANHEIGHT_SHORTEST, HUMANHEIGHT_SHORT, HUMANHEIGHT_MEDIUM, HUMANHEIGHT_TALL, HUMANHEIGHT_TALLEST)
