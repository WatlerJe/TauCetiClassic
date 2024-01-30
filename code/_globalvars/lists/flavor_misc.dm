//Preferences stuff
	//Hairstyles
var/global/list/hair_styles_list = list()			//stores /datum/sprite_accessory/hair indexed by name
var/global/list/facial_hair_styles_list = list()	//stores /datum/sprite_accessory/facial_hair indexed by name
	//Hairstyles Cache
var/global/list/hairs_cache = list()        // Circular doubly linked list indexed by name and hash. see global_lists.dm
var/global/list/facial_hairs_cache = list() // Circular doubly linked list indexed by name and hash. see global_lists.dm
	//Underwear
var/global/list/underwear_list = list()
var/global/list/underwear_cache = list()
var/global/list/underwear_pictures_list = list()
	//undershirt
var/global/list/undershirt_t = list()
var/global/list/undershirt_t_cache = list()
var/global/list/undershirt_pictures_list = list()
var/global/list/undershirt_pictures_cache = list()
	//socks
var/global/list/socks_list = list()
var/global/list/socks_cache = list()
var/global/list/socks_pictures_list = list()
	//Backpacks
var/global/list/backbaglist = list("Nothing", "Backpack", "Sporty Backpack", "Satchel", "Satchel Alt")
	//Heights
var/global/list/heights_list = list(HUMANHEIGHT_SHORTEST, HUMANHEIGHT_SHORT, HUMANHEIGHT_MEDIUM, HUMANHEIGHT_TALL, HUMANHEIGHT_TALLEST)
