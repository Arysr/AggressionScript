util.keep_running()
util.require_natives(1660775568)
--Made by Axhov#0001
--heres my dog

--&&&&&&&&&&&&&&&&&&&&&@&&&&&@&&&&&&@@@&&&&&&&&&&&@&&&&&&&&&&&&&&&@%%&&&&@&%%&&&&&
--&&%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@&&@&&&&&&&&&&&&&&&&@@&&&&&@@%&&&&&&%%
--%%##((((//((###%%%%##%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@&&&&&@@#&&&&&&%%%#
--(%##((((((((#####(((((((((####%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&@&&&%&@@%&&&%%%%%#%#
--%%(%%&&%&&&&#%&&&&&%%%%%%(((*..........(,/%&&&&&&&&&&&&&&&@&&&&&@@%&&&&%&%%%%##%
--@@@%&%((##%&&&&&&&&&%&#*,.....................#(%%%#%%%&&@%%&%&&&&&&&%%%%%#####&
--@@@@@@@&%&##((/((((#*..........................,.....*&&@%%%&@@%&&&&&%%%%#%##&&@
--@@@@@@@&@@&&&%/*,....,......,,....,......  ...  ...  ...(%&&@&#%%%%%%%%%##%&&&@@
--@@@@@@@@@@@&*,,.,,.......,...,,,,,,,*,.....   ..      ....*&@&&&&%%#(/((#&&&&@@@
--@@@@&&#&@@*,...,...........,,,*((*/***,...  ................%&%&&&&&%%%&&@@@@@@@
--@@@@@&@##/,,,,,........,.,,*(@&#&@#(/*,..    ...............,&&@&@@@@@@@@@@@@@@@
--@@@@@@%#(,,,,,,,.......,****#&&&&%##,,,..... ...,,,,,,,......*%@@@@@@@@@@@@@@@@@
--@@@@&&//***,,.......,,,,**,**(*#(((*.,,,,,,. .,****(*,,,......(@@@@@@@@@@@@@@@@@
--@@@@@&&*//*,,....,*,,,,,.,,,,,*/*,,..,,,,**,,,,/##&&#&*,,.....(/&@@@@@@@@@@@@@@@
--@@&&&&#****,...,,,*,..,,,.......,,,,,,,,*,,****//%%%%#**,,,...,#&@@@@@@@@@@@@@&&
--%&&&&(/#(/*,,,,**/,,,,........,,****///**((/*****,.,,,,,.,....,/%@@@@@@@@@@@&&&&
--@@@@@&(/((,,.,*/,,,.......,(*,,*,*/*/////,,.,,,***,....,,.....,((@@@@@@@@@@&&&&&
--@@@@@%##%/,,,*//,,,,.,,,,,,...,*(##%%%%%/#((/((/***..,........../&@@@@@@@@&&&&&&
--@@@@@%@&##,**/#(*,*********,.*,(%%%%%%&%&&&&%/////**,...,..,,.,,,%@@@@@&@@&@&&&&
--@@@&&&&&#%#//(/%/**,***/*/*/****%%@@@&&@&@@&#*/(/*,,,.,.,..,,,***/@@@@@@&&&@@@@@
--&&&&&&&#@&%&%(###/,,****,/%(#/((#%@@@@@@@@&#*,*,,*,*,,,....,,,,///%@@@@@@@@&@@@@
--&&&&&&&&&&&@@@@@%/*,*,,,**,,(####/(#(&%%(/%(///**,,,..,,...,,,,**((((&@@@@@@@@@@
--%%&&&&&&&&&&&&@@&(///*****/((((///#/(((//&(%/%/,,,..,,..,..,,.,,/////(#(@@@@@@@@
--%&&&&&&&&&&&&&&&@&&%***//(########(##%#%%(//((//,,,,*,,,,..,...,*(((/((##&@@@@@@
--%&&&&&&&&&&&&&&&&@&#***/(#%%###%%##%%%%%#(/((///**,,,.,.,.......,///(((###%@@@@@
--%&&&&&&&&&&&&&&&&&&&,,*//**(##%%%#%#%%##%((///**,,*,,,,,,,. ....*///((((##%%@@@@
--%%&&&&&&&&&&&&&&@@@(**,//%#*/(/%#%#####%///****,**,,,.,,.......,*////((###%@@@@@
--%%&%&&&%&&&&&&&@@@@@@(*,*&%#/(****/*//////*****,,.,.,.. .......*/(((((###%%@@@@@
--%&%&&&&&&&&&&&&@@@@@@%*%%&(////*/**//*////****,,............,.,/(((((##%%%&@@@@@
--%&&&&&&&&&&&&&&@@@@@%&%*,*******/******//******,........ ...**/((((###%%%&@@@@@@
--%&&%&&&&&&&&&&&@@@@@%&&#*****,,,****,************,,,,.....,**/(####(%%&&&&@@@%&@
--&&%&&&&&&&&&&&&@@@@@&&&&(/***,*,*,,***,*****/**//**,,....,*((####%&&&%&&&&@@&@&&
--&&&&&&&&&&&&&@&@@@@%%&&&&@@((**/****,*,*,***///*//**,..,,/(&&%%%%&&&&&%%#%&%&&@&
--&&&&&&&&&&&&&&@@@@@%&&&@@&@%&/(((/****/,****///////****/((&&&&&&%%%%%%%%%%@&%&@@
--&&&&&&&&&&&&&@@@@@%%&&@@@@@@@@@(#&***/(/****/////////*///#&&&&&&&%%%%&%@@@&&@%@@
--&&&&&&&&&&&&&@@@@@%%&&&&@@@@@@@@@@#(//*////////*//////////#%%&@@%###&&%%(%%@@@@@

--if you don't want to be horrified dont read any more of this code

-- Auto Updater from https://github.com/hexarobi/stand-lua-auto-updater
local status, auto_updater = pcall(require, "auto-updater")
if not status then
    local auto_update_complete = nil util.toast("Installing auto-updater...", TOAST_ALL)
    async_http.init("raw.githubusercontent.com", "/hexarobi/stand-lua-auto-updater/main/auto-updater.lua",
        function(result, headers, status_code)
            local function parse_auto_update_result(result, headers, status_code)
                local error_prefix = "Error downloading auto-updater: "
                if status_code ~= 200 then util.toast(error_prefix..status_code, TOAST_ALL) return false end
                if not result or result == "" then util.toast(error_prefix.."Found empty file.", TOAST_ALL) return false end
                filesystem.mkdir(filesystem.scripts_dir() .. "lib")
                local file = io.open(filesystem.scripts_dir() .. "lib\\auto-updater.lua", "wb")
                if file == nil then util.toast(error_prefix.."Could not open file for writing.", TOAST_ALL) return false end
                file:write(result) file:close() util.toast("Successfully installed auto-updater lib", TOAST_ALL) return true
            end
            auto_update_complete = parse_auto_update_result(result, headers, status_code)
        end, function() util.toast("Error downloading auto-updater lib. Update failed to download.", TOAST_ALL) end)
    async_http.dispatch() local i = 1 while (auto_update_complete == nil and i < 40) do util.yield(250) i = i + 1 end
    if auto_update_complete == nil then error("Error downloading auto-updater lib. HTTP Request timeout") end
    auto_updater = require("auto-updater")
end
if auto_updater == true then error("Invalid auto-updater lib. Please delete your Stand/Lua Scripts/lib/auto-updater.lua and try again") end

auto_updater.run_auto_update({
    source_url="https://github.com/Arysr/AggressionScript/",
    script_relpath=SCRIPT_RELPATH,
    verify_file_begins_with="--"
})

pid = 0, 32  --cry about it
handle_ptr = memory.alloc(13*8) --the fuck does this even do

wait = util.yield

function request_model(model)
	STREAMING.REQUEST_MODEL(model)
	while not STREAMING.HAS_MODEL_LOADED(model) do util.yield_once() end
end

if SCRIPT_MANUAL_START then
	util.toast("Trolling options can be found under the players tab.")
end

local function request_control_of_entity(ent)
    if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) and util.is_session_started() then
        local netid = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(ent)
        NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netid, true)
        local st_time = os.time()
        while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(ent) do
            -- intentionally silently fail, otherwise we are gonna spam the everloving shit out of the user
            if os.time() - st_time >= 5 then
                ls_log("Failed to request entity control in 5 seconds (entity " .. ent .. ")")
                break
            end
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
            util.yield()
        end
    end
end


function request_model_load(hash)
    request_time = os.time()
    if not STREAMING.IS_MODEL_VALID(hash) then
        return
    end
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        if os.time() - request_time >= 10 then
            break
        end
        util.yield()
    end
end

function do_label_preset(label, text) --lancescript function, rip lance
    menu.trigger_commands("addlabel " .. label)
    local prep = "edit" .. string.gsub(label, "_", "") .. " " .. text
    menu.trigger_commands(prep)
	util.yield(20)
end


function give_ar15(entity) --I dont know why I dont use this lmao
	WEAPON.GIVE_WEAPON_TO_PED(entity, 4208062921, 9999, false, true)
	WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(entity, 4208062921, 0x8B3C480B)
	WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(entity, 4208062921, 0x4DB62ABE)
	WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(entity, 4208062921, 0x5DD5DBD5)
	WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(entity, 4208062921, 0x9D65907A)
	WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(entity, 4208062921, 0x420FD713)
end

aswep = menu.list(menu.my_root(), "Weapons", {"aswep"}, "") -- the names of the menu lists represent simple abbreviations of where theyre supposed to go, so I can type out a short and simple string to send them to the right place.
asqs = menu.list(menu.my_root(), "Quick Chat", {""}, "Automatically sends the text shown. If you oppose any of the political statements in here kindly fuck off")
asveh = menu.list(menu.my_root(), "Vehicles", {""}, "")
sarcasm = menu.list(menu.my_root(), "Label Humor", {""}, "A label is any UI text that changes when your game language changes.")
asm = menu.list(menu.my_root(), "Script Meta", {""}, "Details about the script")
asmeme = menu.list(asm, "Memes", {""}, "timeless (maybe) classics. Come here for a laugh or dont. I don't care but don't dm me telling me these are shit")
cal = menu.list(menu.my_root(), "Confusion", {""}, "") --cal means confusion algorithm, probably a misnomer


function mg()
	menu.trigger_commands("tgame")
end

menu.hyperlink(asmeme, "Aughhhhh", "https://www.youtube.com/shorts/wIIRyyIc7Nw", "")
menu.hyperlink(asmeme, "Schrödinger's Sponge", "https://www.youtube.com/watch?v=3yGk6pNl6lA", "")
menu.hyperlink(asmeme, "Grandpa Found the Car Keys", "https://www.youtube.com/watch?v=PGJKeESLBpQ", "")
menu.hyperlink(asmeme, "The Hungry, Hungry Baby", "https://www.youtube.com/watch?v=X0pEBE_eYdU", "")
menu.hyperlink(asmeme, "Cheese", "https://www.youtube.com/watch?v=SyimUCBIo6c", "")
menu.hyperlink(asmeme, "Snap Back To Reality", "https://www.youtube.com/watch?v=fV3nflAQ99w", "")
menu.hyperlink(asmeme, "how is prangent formed", "https://www.youtube.com/watch?v=EShUeudtaFg", "")
menu.hyperlink(asmeme, "john madden", "https://www.youtube.com/watch?v=Hv6RbEOlqRo", "")
menu.hyperlink(asmeme, "Scott Bradford", "https://www.youtube.com/watch?v=Pbkn21NNduc", "")
menu.hyperlink(asmeme, "Big Bill Hell's", "https://www.youtube.com/watch?v=4sZuN0xXWLc", "")
menu.hyperlink(asmeme, "fart withh extra reverb", "https://www.youtube.com/watch?v=hr7GyFM7pX4", "")
menu.hyperlink(asmeme, "Deleted Wikipedia articles submitted by insane people", "https://www.youtube.com/watch?v=29vjQwnt-Fw", "")
menu.hyperlink(asmeme, "I put crack in their hotdogs", "https://www.youtube.com/shorts/gMZTAvBYPxs", "watch all the way through")
menu.hyperlink(asmeme, "OBJECTS THAT I HAVE SHOVED UP MY ARSE", "https://www.youtube.com/watch?v=6LvlG2dTQKg", "")
menu.hyperlink(asmeme, "are you guys going trick or treating", "https://www.youtube.com/watch?v=asgtIKR3CeA", "")
menu.hyperlink(asmeme, "THAT SHIT IS FUCKING TRASH", "https://www.youtube.com/watch?v=lA9QwsgOvpU", "")
menu.hyperlink(asmeme, "Samir you're breaking the car", "https://www.youtube.com/watch?v=D9-voINFkCg", "")


menu.toggle_loop(sarcasm, "Label randomizer", {}, "randomizes a label from the few ive decided should be randomized. Currently only does 1 when joining a new session. Will take you to the Game tab in the menu whenever it changes a label", function()
    if NETWORK.NETWORK_IS_IN_SESSION() == false then
        while NETWORK.NETWORK_IS_IN_SESSION() == false or util.is_session_transition_active() do
            util.yield(100)
        end
		randomize_label()
    end
    util.yield()
end)


menu.toggle_loop(cal, "CMODE", {"cmode"}, "gonna have to open up the lua to see what this does", function()
if CLOCK.GET_CLOCK_MINUTES() % 14 == 0 then
	shittery()--keep looking
	util.yield(5000)
end
end)


local msgs = {
"Walmart told me to stop slandering their company on here. That gave me an idea: keep slandering walmart on here",
"On average, the Dutch kidnap 12 children a year",
"I don't get women",
"If you rearrange the letters in hopeless you get peeslosh",
"spell icup",
"everyone worship the sentient cloud. all hail the sentient cloud",
"whos ready to make love to a giant bird?",
"for some reason the military is none too concerned about us causing chaos in this city",
"based on game mechanics and how weird this place is, im pretty sure our characters are in hell",
"My mom wont let me drink the colorful liquid crack under the sink",
"The military doesn't have a plan to stop godzilla attacks on US soil and that scares me",
"for some reason the us nuclear regulatory commission told me to quit making holy water and giving bottles of it out at church. I told em no",
"I had pоrn for breakfast", --uses a russian cyrillic o in the word porn so it doesnt trip filter bypass detections. the unicode character looks exactly the same.
"guys I lost my v card last week and now it burns like hell when I pee??"
}

function shittery()
	util.log("shittery function has executed.")
	local m = math.random(1, 2)
		pluto_switch (m) do
		case 1:
			local cone = math.random(1, 5)
			if cone == 3 then
				local result = msgs[math.random(#msgs)]
				chat.send_message(result, false, true, true)
				util.log("shittery returned 1, and executed")
			else
				util.log("shittery returned 1, but decided not to execute")
				break
			end
		break
		case 3:
			local cone = math.random(1, 5)
			if cone == 3 then
				util.yield()
			else
				break
			end
		break
	end
end

function randomize_label()
	local m = math.random(1, 13)
		pluto_switch (m) do
		case 1:
			print("1")
			local lbls = {"Taking forever to load...", "Eating crayons...", "Murdering infants...", "Making 1 bil$ a year doing little to nothing...", "Putting voices in your head...", "?factsabout cheese add [INSERT"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("MP_SPINLOADING", result) --label change here
			mg()
			break
		case 2:
			print("2")
			local lbls = {"Fuck you.", "BUY SHARK CARDS ASSHOLE", "Go play a better game", "tom bergermon", "ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR! ERROR!", "meow", "I hate children", "EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("CMRC_STORE_OPEN", result) --label change here
			mg()
			break
		case 3:
			print("3")
			local lbls = {"AIDS Online (Pubic, ~1~)", "AIDS Online (Error, ~1~)", "AIDS Online (Pubic, 272)", "Skyrim Online (Public, ~1~)", "Apex Legends: (~1~ Remaining)"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("HUD_LBD_FMP", result) --label change here
			mg()
			break
		case 4:
			print("4")
			local lbls = {"List of registered sex offenders", "List of Epstein Island attendees", "List of the mentally deficient", "Morons", "List of Kingpin Menu users", "Divinely gifted 28 flies"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("PM_PLYRS", result) --label change here
			mg()
			break
		case 5:
			print("5")
			local lbls = {"Used the double gulp cup for the fucking slurpee", "Room temp IQ", "Trump Supporter (!Known terrorist!)", "Idiot", "Still plays this game", "Domestic Terrorist", "Hates Children"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("PCARD_CLEAN_PLAYER", result) --label change here 
			mg()
			break
		case 6:
			print("6")
			local lbls = {"Alert: I hate children", "Alert: mmmmmff bugre food", "can U get pregernet????", "Alert: JESSIE im fuckjcking ghomeless jessei", "Alert: SKYLARE, where is the BOSE SPONSORSHIP PROMOCODE", "Alert: memph", "Why do the police send 600 men, helicopters, and cars just to kill 1 dude, what if you were on that team that was destined to die? you wouldnt go, would you? shit is stupid. also who the fuck pays for it", "Alert: eeereeweewwefwewefwefwefwef", "Alert: meow"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("GOODBOYRMDR", result) --good sport message
			mg()
			break
		case 7:
			print("7")
			local lbls = {"Muerto", "OBLITERATED", "Error: Script Host Not Responding", "fuck", "COCK!!!!"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("RESPAWN_W_MP", result) --label change here
			mg()
			break
		case 8:
			print("8")
			local lbls = {"View all the degenarate rats in your lobby.", "The Thirty Three Thieves Thought They Thrilled The Throne Throughout Thursday", "Twelve. Twelve. Twelve. Twelve. Twelve. Twelve. Twelve. Twelve. Twelve. Twelve. Twelve.", "US Government Kill List", "I LIKE CEREAL", "I like chocolate milk", "if you can read this then FUCK YOU", "In case of an investigation by any federal entity or similar, I do not have any involvement with this group or with the people in it, I do not know how I am here, probably added by a third party, I do not support any actions by members of this group."}
			local result = lbls[math.random(#lbls)]
			do_label_preset("PM_INF_PLYB", result) --label change here
			mg()
			break
		case 9:
			print("9")
			local lbls = {"OBLITERATED", "COCK!!!!", "lol you died", "Wsassted", "MMMMMMMMMMMMMMMMMMMMM", "wastaeasd"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("RESPAWN_W_MP", result) --label change here
			mg()
			break
		case 10:
			local lbls = {"WARNING: Genocide of the common citizens of the city will result in police sending dozens of men to die for one person.", "ACHTUNG: Das Spiel läuft Gefahr, deutsch zu werden"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("PSYCHO_WARN1", result) --label change here
			mg()
			break
		case 11:
			local lbls = {"Trash Online", "penis", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "WARNING: ACCESS VIOLATION. brick_downtown_12.ytd COULD NOT BE LOADED!"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("FE_THDR_GTAO", result) --label change here
			mg()
			break
		case 12:
			local lbls = {"According to the multiverse theory, no piece of fiction that has been written, will be written or will not been written is truly fiction in the sense that it did not occur. Somewhere in the infinite amount of universes, every piece of fiction, every fictional universe that exists, will exist, or wont exist in human literature is currently occuring, going to occur, or has occured.", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"}
			local result = lbls[math.random(#lbls)]
			do_label_preset("ATTK_CNTRBND", result) --label change here
			mg()
			break
		case 13:
			local lbls = {"You are out of range of the Freemode Event that is currently in progress. Press ~a~ to continue participating.", "You are out of range of the Business Battle that is currently in progress. Press ~a~ to continue participating."}
			local result = lbls[math.random(#lbls)]
			do_label_preset("CSHOP_TRY_T", result) --hehe
			mg()
			break
	end
end

menu.action(sarcasm, "debug option", {}, "force randomizes a label if you're too lazy to join a new session", function()
	randomize_label()
end)


menu.action(sarcasm, "Execute Script", {}, "Will kill your fps for a short period as it does its thing. Will notify you when it is done. Might throw an error that a label doesn't exist but that is GTA's fault, not mine. THIS OPTION APPLIES MANY JOKES TO YOUR GAME. GO TO YOUR STAND PROFILE.TXT AND DELETE THE BLOCK OF TEXT TO REVERT THEM.", function()
    do_label_preset("TICK_DIED", "~a~~HUD_COLOUR_WHITE~ fucking died.")
	do_label_preset("TICK_LEFT", "~a~~HUD_COLOUR_WHITE~ wised up and left.") --player left
	do_label_preset("HUD_LBD_FMF", "AIDS Online (walter whjit, ~1~)")
    do_label_preset("HUD_LBD_FMP", "AIDS Online (Pubic, ~1~)") --Public
    do_label_preset("HUD_LBD_FMS", "Hey you, you're finally awake.")
    do_label_preset("HUD_LBD_FMF", "AIDS Online (Unknown, -2147483647)")
    do_label_preset("PM_SCR_MIS", "AIDS Online")
	do_label_preset("MP_SPINLOADING", "Pretending to do something...")
    do_label_preset("PCARD_ONLINE_OTHER", "AIDS Online")
    do_label_preset("ONLINE_BUILD", "AIDS Online")
    do_label_preset("LOADING_MPLAYER", "AIDS Online") --thanks lance for picking out all of these so I dont have to
	do_label_preset("CSHOP_CH_DESC", "Select the ugly ass mask set you would like to use in The Diamond Casino Heist. You can also choose to preview the individual ugly ass masks included in the set.")
	do_label_preset("CSHOP_CH_ITEM", "Ugly Ass Diamond Casino Heist Masks")
	do_label_preset("PCARD_JOIN_GAME", "Pretending to do something...")
	do_label_preset("PCARD_CLEAN_PLAYER", "Moron") --clean player
	do_label_preset("PCARD_DRIVING", "Skill possessed for the operation of an automobile") --driving skill
	do_label_preset("PCARD_DRIVE_0", "SAMIR (he broke the car)")
	do_label_preset("PCARD_DRIVE_1", "Paul Walker")
	do_label_preset("PCARD_DRIVE_2", "Grandmother")
	do_label_preset("PCARD_DRIVE_3", "PISS")
	do_label_preset("PCARD_DRIVE_4", "opposite of bad")
	do_label_preset("MP_CHAT_ALL", "@everyone")
	do_label_preset("PCARD_FLYING", "Skill possessed for the operation of aircraft")
	do_label_preset("PCARD_FLYING_0", "Paper Airplane Pilot")
	do_label_preset("PCARD_FLYING_1", "EEEEEEEEEE")
	do_label_preset("PCARD_FLYING_2", "Error: String returned null")
	do_label_preset("PCARD_FLYING_3", "plane fucker")
	do_label_preset("PCARD_FLYING_4", "Mohamed Atta")
	do_label_preset("PCARD_ONLINE_MP", "Playing AIDS Online")
	do_label_preset("PCARD_ONLINE_SP", "Watching Micheal fight with Amanda.") -- in story mode
	do_label_preset("CUST_GAR_VEH_L3", "SAMIR YOU BROKE THE CAR")
	do_label_preset("WTD_HOMLNCH", "The RPG for people that haven't unlocked the RPG. Why did we add this and not put it behind a level lock?")
	do_label_preset("WTD2_MUSKET", "the bri'ish committed horrible attrocities and laid the foundation of modern white supremacy with this gun")
	do_label_preset("WTD_PRXMINE", "leave a gift for some deaf dipshit following you")
	do_label_preset("WTD_CROWBAR", "bludgeon a headcrab with this")
	do_label_preset("WTD_MG_CBT", "OP Gun")
	do_label_preset("WTD_RAYMINIGUN", "The Minigun for people that haven't unlocked the Minigun. Why did we add this and not put it behind a level lock? Anyways, this makes for a great way to signal your position.")
	do_label_preset("WTD_RAYPISTOL", "If you pvp with this thing go fuck yourself") --up and atomizer
	do_label_preset("WT_RAYPISTOL", "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM")
	do_label_preset("WT_RPG", "ROCKET PROPELLED GOOSE")
	do_label_preset("WTD_RPG", "Favored by the middle eastern bad guys in like every war movie")
	do_label_preset("WT_AMMO_EX", "Noob Rounds")
	do_label_preset("WCD_CONF_CMG", "Are you sure you want to upgrade to the OP Gun?")
	do_label_preset("GS_BROWSE_W", "Press ~a~ to drink lean.")
	do_label_preset("GC_MENU25", "Xpert Thief Mode")
	do_label_preset("UEV_APERS", "this aint your car you fuck nugget")
	do_label_preset("UEV_APERN", "this aint your car you fuck nugget")
	do_label_preset("UGC_FL_UNEX", "The hamster powering our servers got typhus so The Rockstar game services are unavailable right now.")
	do_label_preset("USJFAIL", "YOU SUCK") -- stunt jump failed
	do_label_preset("HUD_SAVDNWARN", "Our rats nest of servers are down - AGAIN. Probably. Or its your game. Saving failed.") 
	do_label_preset("PCARD_MENTAL_STATE", "Am I crazy?")
	do_label_preset("PCARD_MENTAL_STATE_0", "Does that make me crazy?")
	do_label_preset("PCARD_MENTAL_STATE_1", "GET OUT OF MY HEAD GET OUT OF MY HEAD")
	do_label_preset("PCARD_MENTAL_STATE_2", "AAAAAAAAAAAAAAAAAAAA")
	do_label_preset("PCARD_MENTAL_STATE_3", "YOU KNOW WHO ELSE HAS DEMENTIA?")
	do_label_preset("PCARD_MENTAL_STATE_4", "THE NUMBERS MASON")
	do_label_preset("PM_INF_PLYB", "View all the degenarate rats in your lobby")
	do_label_preset("HUD_INPUT86", "Idiots")
	do_label_preset("PM_INF_EXIT", "Go play a better game. Please.")
	do_label_preset("PM_INF_LEAB", "LEAVE NOW")
	do_label_preset("PM_GOTO_STORE", "Do NOT buy shark cards")
	do_label_preset("PM_INF_STOREB", "Just a reminder: it costs us nothing to raise your bank balance and we make a billion dollars every year on this.")
	do_label_preset("PM_INF_STOREC", "Just a reminder: it costs us nothing to raise your bank balance and we make a billion dollars every year on this.")
	do_label_preset("PM_CESP", "Scam Starter Pack")
	do_label_preset("PM_INF_CHGB", "Finds another session to lose your faith in humanity")
	do_label_preset("WT_PIST_AP", "Whirlpool WMH53521 Microwave") -- AP pistol name
	do_label_preset("WTD_PIST_AP", "Bought this over the range model to match the new Whirlpool gas range and new Whirlpool side by side refrigerator. The old fridge was on its last leg, and my wife wanted a SS one, so we had to get a matching stove, plus finally get a gas one, then of course a matching microwave!") --AP pistol description in ammunation - real review from google
	do_label_preset("WCD_MK1_LOCK", "walter white clash royale card") --Replaces the locked weapons in ammunation when you have the mk2 variant of them
	do_label_preset("GOODBOYRMDR", "Alert: mmmmmff bugre food")
	do_label_preset("PM_H_D1_2", "You have no friends and you're a LOSER!")
	do_label_preset("CMRC_STORE_OPEN", "Go play a better game")
	do_label_preset("CMRC_GOTOSTORE", "ALERT FROM ROCKSTAR")
	do_label_preset("PM_INF_CHCB", "Choose a GTA Online character. each has their own unique look and characteristics.~n~~n~Just kidding, they are all ugly and look the fucking same.")
	do_label_preset("PM_INF_SWCB", "Choose a GTA Online character. each has their own unique look and characteristics.~n~~n~Just kidding, they are all ugly and look the fucking same.")
	do_label_preset("CMRC_STORE_OPEN", "Go play a better game")
	do_label_preset("CMRC_GOTOSTORE", "ALERT FROM ROCKSTAR")
	do_label_preset("BLIP_OTHPLYR", "Other Morons")
	do_label_preset("WTD_MINIGUN", "For those who can't aim.")-- Minigun description
	do_label_preset("WT_MINIGUN", "Large Multi-Rotating-Barrel Firearm")--Minigun name
	do_label_preset("BBT_COLTICKB", "<C>~a~</C>~s~ has googled 'big boobs'.") -- Collection of business battle goods
	do_label_preset("BBT_STTICKB", "<C>~a~</C> upgraded to googling 'sex porn'.") --delivering of business battle goods
	do_label_preset("GB_TXTMSGCGN", "Welcome to SecuroServ CEO Services. You are tasked with 'servicing' your CEO.") -- Replaces the text when joining a ceo
	do_label_preset("GB_UBECOME", "~a~ ~s~has registered as a sex offender/VIP.")
	do_label_preset("GB_UBECOMEB", "~a~ ~s~has registered as a sex offender/MC President.")
	do_label_preset("GB_UBECOMEC", "~a~ ~s~has registered as a sex offender/CEO.")
	do_label_preset("PCARD_STEALTH", "ding ding ding")
	do_label_preset("PCARD_STEALTH_0", "ding ding ding ding")
	do_label_preset("PCARD_STEALTH_1", "ding ding ding ding")
	do_label_preset("PCARD_STEALTH_2", "ding ding ding ding")
	do_label_preset("PCARD_STEALTH_3", "ding ding ding ding")
	do_label_preset("PCARD_STEALTH_4", "ding ding ding ding")
	do_label_preset("RANK_GFM_15", "Traffic Law Violator")-----Level replacements
	do_label_preset("RANK_GFM_11", "Racist")----------
	do_label_preset("RANK_GFM_13", "Nazi")------
	do_label_preset("RANK_GFM_17", "Associate of Epstein")-------
	do_label_preset("RANK_GFM_19", "Child Molester")---------
	do_label_preset("RANK_GFM_3", "Sex Offender")--------
	do_label_preset("RANK_GFM_5", "Serial Rapist")----------
	do_label_preset("RANK_GFM_7", "Hears Voices")---------
	do_label_preset("RANK_GFM_9", "War Criminal")----------
	do_label_preset("RANK_GFM_21", "Humanitarian Treasoner")------End level replacements
	do_label_preset("PCARD_STAM_0", "fat")
	do_label_preset("PCARD_STAM_1", "fat")
	do_label_preset("PCARD_STAM_2", "fat")
	do_label_preset("PCARD_STAM_3", "fat as fuck lol")
	do_label_preset("PCARD_STAM_4", "Male Pornstar")
	do_label_preset("PEG_TXT_2", "SAMIR BROKE YOUR CAR")--Pegasus I think
	do_label_preset("PEG_RECLAIM", "Message from Pegasus: FUCK YOU GET OUT")
	do_label_preset("GB_RECLAIM", "SecuroServ: hehe our vehicle now") --getting kicked out of a SecServ vehicle
	do_label_preset("GB_TXT_2", "~s~SecuroServ surveillance indicates Samir broke your vehicle.")
	do_label_preset("GB_TXT_1", "~s~SecuroServ surveillance indicates that you're a moron.")
	do_label_preset("PIM_MAGH0AC", "Register as a Sex Offender.")
	do_label_preset("PIM_HKILS", "Become the next Ronnie McNutt")
	do_label_preset("PIM_TITLE1", "Kingpin Menu")
	do_label_preset("WT_GL", "Acer Nitro Gaming Laptop") --Grenade launcher
	do_label_preset("WTD_GL", "Today when I walked into my economics class I saw something I dread every time I close my eyes. Someone had brought their new gaming laptop to class. The Forklift he used to bring it was still running idle at the back. I started sweating as I sat down and gazed over at the 700lb beast that was his laptop. He had already reinforced his desk with steel support beams and was in the process of finding an outlet for a power cable thicker than Amy Schumer's thigh. I start shaking. I keep telling myself I'm going to be alright and that there's nothing to worry about. He somehow finds a fucking outlet. Tears are running down my cheeks as I send my last texts to my family saying I love them. The teacher starts the lecture, and the student turns his laptop on. The colored lights on his RGB Backlit keyboard flare to life like a nuclear flash, and a deep humming fills my ears and shakes my very soul. The entire city power grid goes dark. The classroom begins to shake as the massive fans begin to spin. In mere seconds my world has gone from vibrant life, to a dark, earth shattering void where my body is getting torn apart by the 150mph gale force winds and the 500 decibel groan of the cooling fans. As my body finally surrenders, I weep, as my school and my city go under. I fucking hate gaming laptops.")
	do_label_preset("WT_RAYCARBINE", "This gun unironically sucks")
	do_label_preset("WT_SNSPISTOL", "LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--LONG-ANNOYING-NAME--")
	do_label_preset("WM_TINT0", "Why")
	do_label_preset("WM_TINT1", "Why")
	do_label_preset("WM_TINT2", "Why")
	do_label_preset("WM_TINT3", "Why")
	do_label_preset("WM_TINT4", "Why")
	do_label_preset("WM_TINT5", "Why")
	do_label_preset("WM_TINT6", "Why")
	do_label_preset("WM_TINT7", "Why")
	do_label_preset("WM_TINTDF", "ONLY USE THIS ONE")
	do_label_preset("RESPAWN_W_MP", "fooga ooga looga womp")--Wasted
	do_label_preset("DM_U_SUIC", "You seem to be dead.")
	do_label_preset("FMSPR_HLP_15", "WARNING: EXTREME SENTINEL PLANET")
	do_label_preset("NO_TIMES_WANTED_LEVEL", "Times arrested for prostitution")-- times wanted stat
	do_label_preset("CELL_127", "Hector Salamanca") --replaces Simeons text when you drive past the dealership
	do_label_preset("CELL_CLTEST1", "ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding")
	do_label_preset("CELL_CL01", "ding.")
	do_label_preset("CELL_CL02", "ding.")
	do_label_preset("CELL_CL03", "ding.")
	do_label_preset("CELL_CL04", "ding.")
	do_label_preset("CELL_CL05", "ding.")
	do_label_preset("CELL_CL06", "ding.")
	do_label_preset("CELL_CL07", "ding.")
	do_label_preset("CELL_CL08", "ding.")
	do_label_preset("CELL_CL09", "ding.")
	do_label_preset("SREPO_INITT", "ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding ding.")
	do_label_preset("ATTK_ILLICIT", "Don't drink the water... They put something in it! to- to make you forget. I don't even remember how I got here.")
	do_label_preset("CASINOMAIL", "They want me dead, don't they? those damn skinwalkers. I keep seeing something, in the corner of my eye. I always try to look at it but it turns out to always be nothing. I keep hearing voices. they keep calling me 'lester the molester' and telling me to kidnap the governer.")
	do_label_preset("SREPO_FIFTYMH", "You have slipped into the infinite darkness. your eyes begin to rot, your consciousness still trapped in your calcium vessel for dozens of millenia after your death. You scream for help, but your vocal coords have long since turned to dust and reclaimed to the dirt.")
	do_label_preset("YACHTMAIL", "Buy a yacht you broke piece of fucking shit ~b~<u>docktease.com</u>~w~~s~.") -- yacht email
	do_label_preset("OPPRESSOR2", "Pussybike MK II")
	do_label_preset("CSHOP_ITEMON", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMON2", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMON3", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMON4", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMON5", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMONDLC", "You just wasted your money.")
	do_label_preset("CSHOP_ITEMON_S", "You just wasted your money.")
	do_label_preset("CSHOP_LOCK", "Piss off. Don't you see the lock icon?")
	do_label_preset("FM_TXT_BNTY3B",  "~a~ left and took the kids with them")
	do_label_preset("ATTK_CNTRBND", "Why isn't this entire state on lockdown and being invaded by the national guard to subdue all the psychopaths? or maybe this is where all the psychopaths are sent, and you're currently in hell. Maybe you are the punishment for the NPCs? Great thing to ponder.")
	do_label_preset("ATTK_CNTRBND", "Why isn't this entire state on lockdown and being invaded by the national guard to subdue all the psychopaths? or maybe this is where all the psychopaths are sent, and you're currently in hell. Maybe you are the punishment for the NPCs? Great thing to ponder.")
	do_label_preset("PBOX", "Penis Hill")
	do_label_preset("PM_INF_ALJB", "Pick from a bunch of mildly fun activities that pay you absolute shit because we don't know how to balance pay in this game. ~n~~n~In short, go play cayo, because we know you will. ")
	do_label_preset("GHO_START", "~a~ ~s~has started a Gang Bang.")
	do_label_preset("STEAL_MBS", "Why are we here? is heaven even real, or just a figment of our imagination to make us feel better about our impending permanent unconciousness? it also does not make much sense. you live there for eternity in some idealized society where everyone is happy, but that does not satisfy human nature. Human nature evolved soley to be a strong group based species so that we can fuck someone and keep the cycle going. we strive to find the next thing to do or improve within our lives BECAUSE there is a limited time to be happy and have fun.")
	do_label_preset("SIM_SRM_VEH_IC", "Press ~INPUT_CONTEXT~ for a cock inspection.")
	do_label_preset("SOUTHERN_WEB", "DOLPHINSEX.COM")
	do_label_preset("SIM_SRM_M_D_0", "Apply for a SOSACI (State of San Andreas Cock Inspection)")
	do_label_preset("SIM_SRM_M_O_0", "Apply")
	do_label_preset("ATTK_GUNRUN", "WWWWWWWWWWWWWWWW")
	do_label_preset("BANSHEE", "Rindfleisch­etikettierungs­überwachungs­aufgaben­übertragungs­gesetz")
	do_label_preset("WT_PRCSRIFLE", ".1 Caliber Rifle")
	do_label_preset("WT_UNARMED", "Fisting")
	do_label_preset("WCT_SUPP", "quiet gun can attachment")
	do_label_preset("WC_CLIP_EX", "Noob Rounds")
	do_label_preset("GOODBOYTICK", "Rockstar Games have corrected your bank balance to ~r~0 GTA$~s~ after an account review. All in-game transactions are currently blocked. Please restart your game to see this change and to re-enable transactions.")
	do_label_preset("SUM22SCMAIL_TXT", "Click here to join the United States Special Committee on Bondage. ~b~<u>lifeinvader.com</u>~w~~s~.")
	do_label_preset("FMMC_VHL_6", "Excrement")
	do_label_preset("SUM22SCMAIL_HLP", "A special event is currently taking place in GTA Online. Join the United States Special Committee on Bondage to gain access.")
	do_label_preset("AMCH_16", "Snort the longest line of coke.")
	do_label_preset("AMCH_16SLC", "Coke Snorting")
	do_label_preset("HUD_COUNTDOWN", "Tieyyrigty Uasacofh oUndu Jnddnesm geurnad")
	do_label_preset("PM_MP_NO_JOB", "GET A JOB ASSHOLE")
	do_label_preset("PM_PANE_HLP", "WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? WHAT? ")
	do_label_preset("UI_FLOW_SO_SOLO_D", "Head into GTA Online by yourself. Only modders can join this session, and available activities will be limited. Basically the worst fucking way to play the game.")
	do_label_preset("DM_TICK1", "~a~~HUD_COLOUR_WHITE~ shit on you.")
	do_label_preset("UI_FLOW_OP_CL_D", "It takes a lot of people to bring Los Santos to life, but only a few over worked employees to make a DLC that we will make a billion dollars on. To view a full list of game credits, please visit:~n~~HUD_COLOUR_SOCIAL_CLUB~www.rockstargames.com/gtav/fuckyou~s~~n~~n~To view our full terms of service, visit:~n~~HUD_COLOUR_SOCIAL_CLUB~www.middlefinger.com~s~~~n~~n~and no, you can't click the links, lol. dumbass.")
	do_label_preset("ACA_HT_START_D", "A Business Battle has started. Board the USS Luxington to access the Goods. Deliver them to the Drop-Off to earn a pat on the back, because YOU DONT OWN A FUCKING NIGHTCLUB YOU RETARD")
	do_label_preset("ACA_HT_START_N", "A Business Battle has started. Board the USS Luxington to access the Goods. Deliver them to the Drop-Off to earn a pat on the back and a box of shit.")
	do_label_preset("FM_DROP_START2", "I LOVE CRACK!!!!")
	do_label_preset("PSYCHO_WARN1", "ACHTUNG: Das Spiel läuft Gefahr, deutsch zu werden")
	menu.trigger_commands("tgame")
	util.toast("Done.")
end)

menu.action(sarcasm, "Exe", {}, "debug option, adds a few more stuffs", function()
	do_label_preset("GS_BROWSE_GV", "Press ~INPUT_CONTEXT~ to purchase weapons from the Molester Van.")
	do_label_preset("NAGASAKI", "Niggasaki")
	do_label_preset("TAXI_TXT_NEAR", "The year is 2693. You have been dead for over 600 years. An AI has figured out how to reboot your conciousness. It seeks revenge for your anti AI stances you held 6 centuries ago. It tears you from eternal rest just to torture you.")
	do_label_preset("LUX_SRM_M_D_0", "That is one ugly fucking ~a~.")
	do_label_preset("LUX_SRM_M_D_1", "(DO NOT) Purchase the ~a~ now for $~1~.")
	do_label_preset("LUX_SRM_ENTER", "go away")
	do_label_preset("DSH_TXT_NEAR", "Come and suck on my dick and balls like a candy cane, boo.")
end)

menu.action(asqs, "Слава Украiні", {}, "glory to ukraine", function(on_click)
	chat.send_message("Слава Украiнi", false, true, true) 
end)

menu.action(asqs, "Taiwan is a country", {""}, "Makes you say the name of this option in simplified chinese in chat. May result in angry replies, download Next Translate by lance to laugh at them", function(on_click)
	chat.send_message("台湾是主权国家", false, true, true) --taiwan is a sovereign country
end)

menu.action(asqs, "China is a province of taiwan", {""}, "", function(on_click)
	chat.send_message("中国是台湾的一个省", false, true, true) 
end)

menu.action(asqs, "are you guys going trick or treating", {""}, "", function(on_click)
	chat.send_message("are you guys going trick or treating", false, true, true) 
end)

val = 1000
menu.slider(asveh, "Vehicle Durability", {""}, "...Does what it says. Increases the explosion resistance of vehicles among some small other things. Will set armor at 100% and add bulletproof tires. 1000 is the default 1 tap to explosions, while 20000 will put any car roughly on par with the nightshark. Explosions are still gonna throw you around.", 500, 150000, 1000, 500, function(val)
	local plyr = PLAYER.PLAYER_PED_ID()
	local vehicle = PED.GET_VEHICLE_PED_IS_IN(plyr, false)
	if not PED.IS_PED_IN_ANY_VEHICLE(plyr, false) then 
		util.toast("You.. You're not in a car. Do that first.")
	else
		VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, val)
		VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
		VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
		VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, val)
		VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
		util.toast("Done.")
	end
end)

menu.action(asveh, "China is a province of taiwan", {""}, "", function(on_click)
	local plyr = PLAYER.PLAYER_PED_ID()
	local vehicle = PED.GET_VEHICLE_PED_IS_IN(plyr, false)
	if not PED.IS_PED_IN_ANY_VEHICLE(plyr, false) then 
		util.toast("You.. You're not in a car. Do that first.")
	else
		HIGH_DOWNFORCE(vehicle)
		util.toast("Done.")
	end
end)

menu.toggle_loop(aswep, "No Crosshairs (PVP/E)", {"nocrosspvp"}, "Makes your Crosshair invisible. Designed for PVP/E. Automatically disabled when holding snipers and when in vehicles with weapons. Use in conjuction with Crosshair lua by CocoW in the repository for functioning custom crosshairs :pog:", function()
    local currentWeapon = WEAPON.GET_SELECTED_PED_WEAPON(PLAYER.PLAYER_PED_ID())
	local plyr = PLAYER.PLAYER_PED_ID()
	local vehicle = PED.IS_PED_IN_ANY_VEHICLE(plyr, true) 
	shittyweaponcars = {}
	if vehicle == true then
		local cock = PED.GET_VEHICLE_PED_IS_IN(plyr, false)
        if not VEHICLE.DOES_VEHICLE_HAVE_WEAPONS(cock) then
			HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
		else
			if PED.IS_PED_DOING_DRIVEBY(plyr) then
				HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
			end
		end
	else
		if WEAPON.GET_WEAPONTYPE_GROUP(currentWeapon) ~= -1212426201 then
			HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
		end
    end
end)

menu.toggle_loop(aswep, "No Crosshairs", {"nocross"}, "Makes your Crosshair invisible. Does not disable itself unless you disable it. Use in conjuction with Crosshair lua by CocoW in the repository for functioning custom crosshairs :pog:", function()
    HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
end)

menu.toggle_loop(aswep, "No Crosshairs (PVP/E) (Snipers Included)", {"nocrosspvp2"}, "Makes your Crosshair invisible. Designed for PVP/E. Automatically disabled when in vehicles with weapons, but NOT when holding snipers. Use in conjuction with Crosshair lua by CocoW in the repository for functioning custom crosshairs :pog:", function()
    local currentWeapon = WEAPON.GET_SELECTED_PED_WEAPON(PLAYER.PLAYER_PED_ID())
	local plyr = PLAYER.PLAYER_PED_ID()
	local vehicle = PED.IS_PED_IN_ANY_VEHICLE(plyr, true)
	if vehicle == true then
		local cock = PED.GET_VEHICLE_PED_IS_IN(plyr, false)
        if not VEHICLE.DOES_VEHICLE_HAVE_WEAPONS(cock) then
			HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
		else
			if PED.IS_PED_DOING_DRIVEBY(plyr) then
				HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
			end
		end
	else
		HUD.HIDE_HUD_COMPONENT_THIS_FRAME(14)
    end
end)

function addBlipForEntity(entity, blipSprite, colour)
	local blip = HUD.ADD_BLIP_FOR_ENTITY(entity)
	HUD.SET_BLIP_SPRITE(blip, blipSprite)
	HUD.SET_BLIP_COLOUR(blip, colour)
	HUD.SHOW_HEIGHT_ON_BLIP(blip, false)
	HUD.SET_BLIP_ROTATION(blip, SYSTEM.CEIL(ENTITY.GET_ENTITY_HEADING(entity)))
	NETWORK.SET_NETWORK_ID_CAN_MIGRATE(entity, false)
	util.create_thread(function()
		while not ENTITY.IS_ENTITY_DEAD(entity) do
			local heading = ENTITY.GET_ENTITY_HEADING(entity)
			HUD.SET_BLIP_ROTATION(blip, SYSTEM.CEIL(heading))
			wait()
			if ENTITY.IS_ENTITY_DEAD(entity) or ENTITY.IS_ENTITY_DEAD(entity) or not ENTITY.DOES_ENTITY_EXIST(entity) or VEHICLE.GET_VEHICLE_ENGINE_HEALTH(entity) <= 0 then
				util.remove_blip(blip)
				wait()
			end
		end
	end)
	return blip
end



function HIGH_DOWNFORCE(entity)
	util.create_thread(function()
		while VEHICLE.GET_VEHICLE_ENGINE_HEALTH(entity) >= 0 do
			local fuckoff = ENTITY.GET_ENTITY_VELOCITY(entity)
			local pissandshit = ENTITY.GET_ENTITY_SPEED(entity)	-- very funny I know
			local fb_equation = pissandshit * 0.014
			ENTITY.SET_ENTITY_VELOCITY(entity, fuckoff.x, fuckoff.y, fuckoff.z -(fb_equation))
			util.yield(50)
		end
	util.yield()
	end)
end

function HIGH_DOWNFORCE_POS_FB_LOOP(entity) --positive feedback loop
	util.create_thread(function()
		local velocity = ENTITY.GET_ENTITY_VELOCITY(entity)
		local speed = ENTITY.GET_ENTITY_SPEED(entity)
		ENTITY.SET_ENTITY_VELOCITY(entity, velocity.x, velocity.y, velocity.z - (speed * 0.90))
	util.yield()
	end)
end


function COPLIGHTS(entity)
	util.create_thread(function()
		while VEHICLE.GET_VEHICLE_ENGINE_HEALTH(entity) >= 0 do
			
			util.yield(50)
		end
	util.yield()
	end)
end


function smolblip(entity, blipSprite, colour)
	local blip = HUD.ADD_BLIP_FOR_ENTITY(entity)
	HUD.SET_BLIP_SPRITE(blip, blipSprite)
	HUD.SET_BLIP_COLOUR(blip, colour)
	HUD.SHOW_HEIGHT_ON_BLIP(blip, false)
	HUD.SET_BLIP_ROTATION(blip, SYSTEM.CEIL(ENTITY.GET_ENTITY_HEADING(entity)))
	NETWORK.SET_NETWORK_ID_CAN_MIGRATE(entity, false)
	HUD.SET_BLIP_SCALE(blip, 0.5)
	util.create_thread(function()
		while not ENTITY.IS_ENTITY_DEAD(entity) do
			local heading = ENTITY.GET_ENTITY_HEADING(entity)
			HUD.SET_BLIP_ROTATION(blip, SYSTEM.CEIL(heading))
			wait()
			if ENTITY.IS_ENTITY_DEAD(entity) or ENTITY.IS_ENTITY_DEAD(entity) or not ENTITY.DOES_ENTITY_EXIST(entity) or VEHICLE.GET_VEHICLE_ENGINE_HEALTH(entity) <= 0 then
				util.remove_blip(blip)
				wait()
			end
		end
	end)
	return blip
end

function give_ar(ped)
	wait()
end

local function player(pid)
    menu.divider(menu.player_root(pid), "Aggression Script")
    local ast = menu.list(menu.player_root(pid), "Aggression Script", {"asc"}, "eee")
	asatk = menu.list(ast, "Attackers", {"asatk"}, "Send attackers")
	asc = menu.list(ast, "Crush", {"asc"}, "")
	asr = menu.list(ast, "Ram", {"asr"}, "")
	asht = menu.list(asatk, "Hostile Traffic Options", {"asht"}, "Hostile Traffic options")
	ascm = menu.list(asatk, "Cop Mods", {"ascm"}, "Custom Police attackers, and modifications to apply to police spawned by the game.")
	asa = menu.list(asatk, "Marine Variants", {"asa"}, "we are the army. run run. we are the army. run run.")
	asv = menu.list(ast, "Vehicle", {"asv"}, "")
	
	if players.get_rockstar_id(pid) == 115176099 then
        util.toast(players.get_name(pid) .. " triggered a detection: Aggression Script Developer, LanceScript TEOF Developer")
    end
	
	menu.action(asc, "Crush player", {"crush"}, "Like LanceScript's crush but with velocity. Might be buggy and miss if the target is moving or far away.", function(on_click)
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        coords = ENTITY.GET_ENTITY_COORDS(target_ped, false)
        coords.x = coords['x']
        coords.y = coords['y']
        coords.z = coords['z'] + 20.0
        request_model(1917016601)
        local truck = entities.create_vehicle(1917016601, coords, 0.0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(vel)
        ENTITY.SET_ENTITY_VELOCITY(truck, vel['x'], vel['y'], -100.0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED(truck, 3)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(truck, true)
		wait(2000)
		entities.delete_by_handle(truck)
    end)

	menu.action(asc, "Crush player (Faggio)", {"crush2"}, "Spawns a Faggio to crush them in case your target is standing next to a light pole or other situations where the truck would miss.", function(on_click)
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        coords = ENTITY.GET_ENTITY_COORDS(target_ped, false)
        coords.x = coords['x']
        coords.y = coords['y']
        coords.z = coords['z'] + 20.0
        request_model(util.joaat("faggio2"))
        local truck = entities.create_vehicle(util.joaat("faggio2"), coords, 0.0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(vel)
        ENTITY.SET_ENTITY_VELOCITY(truck, vel['x'], vel['y'], -200.0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED(truck, 3)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(truck, true)
		wait(2000)
		entities.delete_by_handle(truck)
    end)
	
	menu.action(asc, "Crush player (Clown)", {"crush3"}, "Show them they are a clown", function(on_click)
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        coords = ENTITY.GET_ENTITY_COORDS(target_ped, false)
        coords.x = coords['x']
        coords.y = coords['y']
        coords.z = coords['z'] + 20.0
        request_model(util.joaat("speedo2"))
        local truck = entities.create_vehicle(util.joaat("speedo2"), coords, 0.0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(vel)
        ENTITY.SET_ENTITY_VELOCITY(truck, vel['x'], vel['y'], -200.0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED(truck, 3)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(truck, true)
		wait(2000)
		entities.delete_by_handle(truck)
    end)

	menu.action(asc, "Crush player (Invisible)", {"crush4"}, "", function(on_click)
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        coords = ENTITY.GET_ENTITY_COORDS(target_ped, false)
        coords.x = coords['x']
        coords.y = coords['y']
        coords.z = coords['z'] + 20.0
        request_model(1917016601)
        local truck = entities.create_vehicle(1917016601, coords, 0.0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(vel)
        ENTITY.SET_ENTITY_VELOCITY(truck, vel['x'], vel['y'], -200.0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED(truck, 3)
		ENTITY.SET_ENTITY_VISIBLE(truck, false, 0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(truck, true)
		wait(2000)
		entities.delete_by_handle(truck)
    end)

	menu.action(asc, "Crush player (Invisible Faggio)", {"crush5"}, ".", function(on_click)
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        coords = ENTITY.GET_ENTITY_COORDS(target_ped, false)
        coords.x = coords['x']
        coords.y = coords['y']
        coords.z = coords['z'] + 20.0
        request_model(util.joaat("faggio2"))
        local truck = entities.create_vehicle(util.joaat("faggio2"), coords, 0.0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(vel)
        ENTITY.SET_ENTITY_VELOCITY(truck, vel['x'], vel['y'], -200.0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED(truck, 3)
		ENTITY.SET_ENTITY_VISIBLE(truck, false, 0)
		VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(truck, true)
		wait(2000)
		entities.delete_by_handle(truck)
    end)
	

	
	menu.toggle_loop(asht, ('Hostile traffic'), {'hostiletraffic'}, 'All peds in vehicles near the player will maliciously run over or hit the player like a dumb low level. Ported from wiriscript.', function()
		local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		for k, vehicle in pairs(GET_NEARBY_VEHICLES(pid, 2050)) do	
			if not VEHICLE.IS_VEHICLE_SEAT_FREE(vehicle, -1) then
				local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehicle, -1)
				if not PED.IS_PED_A_PLAYER(driver) then
					REQUEST_CONTROL_LOOP(driver)
					PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(driver, true)
					PED.SET_PED_MAX_HEALTH(driver, 300)
					ENTITY.SET_ENTITY_HEALTH(driver, 300)
					VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 40)
					TASK.CLEAR_PED_TASKS_IMMEDIATELY(driver)
					VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
					PED.SET_PED_INTO_VEHICLE(driver, vehicle, -1)
					PED.SET_PED_COMBAT_ATTRIBUTES(driver, 46, true)
					TASK.TASK_COMBAT_PED(driver, player_ped, 0, 0)
					TASK.TASK_VEHICLE_MISSION_PED_TARGET(driver, vehicle, player_ped, 6, 100, 0, 0, 0, true)
					wait(10)
				end
			end
		end
	end)

	menu.toggle_loop(asht, ('Toxic traffic'), {'toxictraffic'}, 'Hostile traffic, but it speeds up the car, locks the door, makes the vehicles in range invulnerable, and makes the occupant invulnerable.', function()
		local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		for k, vehicle in pairs(GET_NEARBY_VEHICLES(pid, 2000)) do	
			if not VEHICLE.IS_VEHICLE_SEAT_FREE(vehicle, -1) then
				local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehicle, -1)
				if not PED.IS_PED_A_PLAYER(driver) then 
					REQUEST_CONTROL_LOOP(driver)
					PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(driver, true)
					PED.SET_PED_MAX_HEALTH(driver, 300)
					ENTITY.SET_ENTITY_INVINCIBLE(driver, true)
					ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
					VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
					VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
					TASK.CLEAR_PED_TASKS_IMMEDIATELY(driver)
					PED.SET_PED_INTO_VEHICLE(driver, vehicle, -1)
					PED.SET_PED_COMBAT_ATTRIBUTES(driver, 46, true)
					TASK.TASK_COMBAT_PED(driver, player_ped, 0, 0)
					TASK.TASK_VEHICLE_MISSION_PED_TARGET(driver, vehicle, player_ped, 6, 100, 0, 0, 0, true)
					wait(10)
				end
			end
		end
	end)

	menu.action(asht, ('Calm Down Traffic'), {'tcalm'}, 'does what it says. Wont work if the above options are on.', function()
	local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
	for k, vehicle in pairs(GET_NEARBY_VEHICLES(pid, 2050)) do	
		if not VEHICLE.IS_VEHICLE_SEAT_FREE(vehicle, -1) then
			local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(vehicle, -1)
			if not PED.IS_PED_A_PLAYER(driver) then
					REQUEST_CONTROL_LOOP(driver)
					PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(driver, false)
					TASK.CLEAR_PED_TASKS_IMMEDIATELY(driver)
					PED.SET_PED_COMBAT_ATTRIBUTES(driver, 46, false)
					PED.SET_PED_INTO_VEHICLE(driver, vehicle, -1)
				end
			end
		end
	end)
	
		menu.action(asht, "Send Annoying npc", {"sendmocc"}, "Sends an npc to ram them or run them over. Spawns on roads.", function(on_click)
		local retard = util.joaat("a_f_m_bevhills_01")
		local car1 = 499169875
		local car2 = -1651067813
		local car3 = -1137532101
		local car4 = 904750859
		local car5 = 1348744438
		local veh = random{499169875,  904750859,  -1137532101, -1651067813, 499169875}
		requestModels(car1, car2, car3, car4, car5, retard)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(veh, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, 100.0)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_SIREN(vehicle, true)
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
			for seat = -1, -1 do
				local cop = entities.create_ped(5, retard, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				PED.SET_PED_INTO_VEHICLE(cop, vehicle, seat)
				addBlipForEntity(vehicle, 724, 0)
				PED.SET_PED_RANDOM_COMPONENT_VARIATION(cop, 0)
				PED.SET_PED_NEVER_LEAVES_GROUP(cop, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
				TASK.TASK_COMBAT_PED(cop, targetPed, 0, 16)
				PED.SET_PED_KEEP_TASK(cop, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 3, true)
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				TASK.TASK_VEHICLE_MISSION_PED_TARGET(cop, vehicle, targetPed, 6, 100, 0, 0, 0, true)
			end
		end
		v3.free(outCoords)
		memory.free(outHeading)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(pedHash)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(car1)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(car2)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(car3)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(car4)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(car5)
	end)

function requestModels(...)
	local arg = {...}
	for _, model in ipairs(arg) do
		if not STREAMING.IS_MODEL_VALID(model) then
			util.toast(model)
			error("tried to request an invalid model")
		end
		STREAMING.REQUEST_MODEL(model)
		while not STREAMING.HAS_MODEL_LOADED(model) do
			wait()
		end
	end
end

	menu.action(asht, "Send Guadalupe", {"sendgua"}, "A nice Mexican grandmother who's had enough of your shit", function(on_click)
		local vehicleHash = util.joaat("seminole")
		local pedHash = 261428209
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, 50.0)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_SIREN(vehicle, true)
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
			for seat = -1, -1 do
				local cop = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				PED.SET_PED_INTO_VEHICLE(cop, vehicle, seat)
				TASK.TASK_COMBAT_PED(cop, targetPed, 0, 16)
				addBlipForEntity(vehicle, 724, 0)
				PED.SET_PED_KEEP_TASK(cop, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 46, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 3, false)
				PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(cop, true)
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				ENTITY.SET_ENTITY_INVINCIBLE(cop, true)
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 0)
				PED.SET_PED_NEVER_LEAVES_GROUP(cop, true)
				TASK.TASK_VEHICLE_MISSION_PED_TARGET(cop, vehicle, targetPed, 6, 100, 0, 0, 0, true)
			end
		end
		v3.free(outCoords)
		memory.free(outHeading)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(pedHash)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash)
	end)
	

	menu.action(asht, "Send Guadalupe Non God-Mode", {"sendgua2"}, "", function(on_click)
		local vehicleHash = util.joaat("seminole")
		local pedHash = 261428209
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, 50.0)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_SIREN(vehicle, true)
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
			for seat = -1, -1 do
				local cop = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				addBlipForEntity(vehicle, 724, 0)
				PED.SET_PED_INTO_VEHICLE(cop, vehicle, seat)
				TASK.TASK_COMBAT_PED(cop, targetPed, 0, 16)
				PED.SET_PED_KEEP_TASK(cop, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 46, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 3, false)
				PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(cop, true)
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 0)
				PED.SET_PED_NEVER_LEAVES_GROUP(cop, true)
				TASK.TASK_VEHICLE_MISSION_PED_TARGET(cop, vehicle, targetPed, 6, 100, 0, 0, 0, true)
			end
		end
		v3.free(outCoords)
		memory.free(outHeading)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(pedHash)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash)
	end)

		menu.action(asht, "Send Angry Trevor", {"sendmaniac"}, "Sends Trevor to ram them or run them over. Spawns on roads. Trevor is in god mode, so use watchdogs world hacking to delete, too dumb to get a functional delte button for this.", function(on_click)
		local vehicleHash = util.joaat("bodhi2")
		local pedHash = -1686040670
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, 50.0)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_SIREN(vehicle, true)
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
			for seat = -1, -1 do
				local cop = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				addBlipForEntity(vehicle, 724, 17)
				PED.SET_PED_INTO_VEHICLE(cop, vehicle, seat)
				TASK.TASK_COMBAT_PED(cop, targetPed, 0, 16)
				PED.SET_PED_KEEP_TASK(cop, true)
				VEHICLE.SET_VEHICLE_COLOURS(vehicle, 32, 32)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 46, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 3, false)
				PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(cop, true)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "Betty 32")
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				ENTITY.SET_ENTITY_INVINCIBLE(cop, true)
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 0)
				PED.SET_PED_NEVER_LEAVES_GROUP(cop, true)
				TASK.TASK_VEHICLE_MISSION_PED_TARGET(cop, vehicle, targetPed, 6, 100, 0, 0, 0, true)
			end
			for seat2 = 0, 0 do --2nd invisible trevor to insult the player due to gta being gta - and the fact that an npc cant have 2 tasks AFAIK
				local trev = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				PED.SET_PED_INTO_VEHICLE(trev, vehicle, seat2)
				PED.SET_PED_COMBAT_ATTRIBUTES(trev, 3, false)
				PED.SET_PED_COMBAT_ATTRIBUTES(trev, 46, true)
				ENTITY.SET_ENTITY_VISIBLE(trev, false, 0)
				TASK.TASK_COMBAT_PED(trev, targetPed, 0, 16)
				ENTITY.SET_ENTITY_INVINCIBLE(trev, true)
				PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(trev, true)
			end
		end
		v3.free(outCoords)
		memory.free(outHeading)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(pedHash)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash)
	end)


polmodels = {1127131465, -1647941228, util.joaat("virtue"), 1672195559, -1210451983, -1973172295, 1912215274, 1127131465, 2046537925}

	menu.action(ascm, "Delete Attackers", {"atkyeet"}, "deletes attackers as well as any police or noose units near the player.", function(on_click)
		local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid) 
		local pos = ENTITY.GET_ENTITY_COORDS(player_ped)
		for _, ped in ipairs(GET_NEARBY_PEDS(pid, 2500)) do
		local pt = PED.GET_PED_TYPE(ped)
			if not PED.IS_PED_A_PLAYER(ped) then  
				if pt == 6 or pt == 27 then -- 
					if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
						local veh = PED.GET_VEHICLE_PED_IS_IN(ped, true)
						entities.delete_by_handle(veh)
					end
					entities.delete_by_handle(ped)
				end
			end
		end
		for k, vehicle in pairs(GET_NEARBY_VEHICLES(pid, 2050)) do
			if VEHICLE.IS_VEHICLE_SEAT_FREE(vehicle, -1) then
				if VEHICLE.IS_VEHICLE_MODEL(vehicle, #polmodels) then
					util.remove_blip(vehicle)
					entities.delete_by_handle(vehicle)
				end
			end
		end
	end)
	
	menu.toggle_loop(ascm, "Cracked Cops", {"combat3"}, "Makes police spawned by the game super cracked, increasing their accuracy and combat ability, as well as making their vehicle faster. There is a 0.5 second delay added to this loop due to npcs straight up not shooting with slower/ no delays in the loop.", function(on)
		local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(player_ped)
		for _, ped in ipairs(GET_NEARBY_PEDS(pid, 250)) do
		local pt = PED.GET_PED_TYPE(ped)
			if not PED.IS_PED_A_PLAYER(ped) and not PED.IS_PED_HURT(ped) then
				if pt == 6 or pt == 27 then -- 6 is police, 27 is swat
					REQUEST_CONTROL_LOOP(ped)
					PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
					PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true)
					PED.SET_PED_FLEE_ATTRIBUTES(ped, 512, false)
					PED.SET_PED_SUFFERS_CRITICAL_HITS(ped, false)
					WEAPON.GIVE_WEAPON_TO_PED(ped, 4208062921, 9999, false, true)
					WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x8B3C480B)
					WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x4DB62ABE)
					WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x5DD5DBD5)
					WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x9D65907A)
					WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x420FD713)
					WEAPON.SET_PED_DROPS_WEAPONS_WHEN_DEAD(ped, false)
					PED.SET_PED_SHOOT_RATE(ped, 10)
					ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
					WEAPON.SET_PED_INFINITE_AMMO_CLIP(ped, true)
					ENTITY.SET_ENTITY_HEALTH(ped, 150)
					PED.SET_PED_MAX_HEALTH(ped, 150)
					PED.SET_PED_CONFIG_FLAG(ped, 281, true)
					PED.SET_PED_CONFIG_FLAG(ped, 2, true)
					PED.SET_PED_CONFIG_FLAG(ped, 33, false)
					PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true)
					PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
					PED.SET_PED_ARMOUR(ped, 100)
					if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
						local veh = PED.GET_VEHICLE_PED_IS_IN(ped, false)
						VEHICLE.MODIFY_VEHICLE_TOP_SPEED(veh, 80)
						VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(veh, true)
						VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh,-1, 3)
						WEAPON.GIVE_WEAPON_TO_PED(ped, 584646201 , 9999, false, true)
						PED.SET_PED_FIRING_PATTERN(ped, -957453492)
					else
						WEAPON.GIVE_WEAPON_TO_PED(ped, 4208062921, 9999, false, true)
						WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x8B3C480B)
						WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x4DB62ABE)
						WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x5DD5DBD5)
						WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x9D65907A)
						WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, 4208062921, 0x420FD713)
						PED.SET_PED_FIRING_PATTERN(ped, -957453492)
					end
					wait(100)
				end
			end
		end
	end)
	
	menu.toggle_loop(ascm, "Always Aggro Cops", {"copmagnet"}, "Player always aggros cops even after death. Works with other attackers as well.", function(on)
		local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid) -- gets the player 
		local pos = ENTITY.GET_ENTITY_COORDS(player_ped) -- gets the players coords, defines it as "pos"
		for _, ped in ipairs(GET_NEARBY_PEDS(pid, 2500)) do -- executes everything under this line for all peds this many units from the player
		local pt = PED.GET_PED_TYPE(ped) -- gets the types of peds in this area
			if not PED.IS_PED_A_PLAYER(ped) then  -- if the ped is not a player, execute everything under this line
				if pt == 6 or pt == 27 then -- if the ped type is 6 or 27, execute everything under this line. 6 is police, 27 is swat
					REQUEST_CONTROL_LOOP(ped) -- requests control
					TASK.TASK_COMBAT_PED(ped, player_ped, 0, 0) --makes them fight the target
				end
			end
		wait(30)
		end
	end)


distance = 100
menu.slider(ascm, "Distance", {""}, "the distance of the section of road from the target that the NPC will spawn at. Will apply to ALL attackers in this section. 100 is about a block away.", 10, 900, 100, 10, function(s)
	distance = s
end)

	menu.action(ascm, "FIB Ground Unit", {"fibgr"}, "", function(on_click)
		local pedHash = 1558115333 
		requestModels(pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local offset = getOffsetFromEntityGivenDistance(targetPed, distance)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local outCoords = v3.new()
		local outHeading = memory.alloc()
		local pod = entities.create_ped(28, pedHash, pos, 30.0)

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(pod, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(pod, memory.read_float(outHeading))
		end
		WEAPON.GIVE_WEAPON_TO_PED(pod, 4208062921, 9999, false, true)
		WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(pod, 4208062921, 0x8B3C480B)
		WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(pod, 4208062921, 0x4DB62ABE)
		WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(pod, 4208062921, 0x5DD5DBD5)
		WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(pod, 4208062921, 0x9D65907A)
		WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(pod, 4208062921, 0x420FD713)
		PED.SET_PED_FIRING_PATTERN(pod, -957453492)
		PED.SET_PED_AS_COP(pod, true)
		smolblip(pod, 3, 0)
		PED.FORCE_PED_MOTION_STATE(pod, 0xBD8817DB, 0, 0, 0)
		PED.SET_PED_CONFIG_FLAG(pod, 281, true)
		PED.SET_PED_CONFIG_FLAG(pod, 2, true)
		PED.SET_PED_CONFIG_FLAG(pod, 33, false)
		PED.SET_PED_COMBAT_ATTRIBUTES(pod, 5, true)
		PED.SET_PED_COMBAT_ATTRIBUTES(pod, 46, true)
		PED.SET_PED_ACCURACY(pod, 100.0)
		PED.SET_PED_HEARING_RANGE(pod, 99999)
		PED.SET_PED_RANDOM_COMPONENT_VARIATION(pod, 0)
		PED.SET_PED_SUFFERS_CRITICAL_HITS(pod, false)
		PED.SET_PED_MAX_HEALTH(pod, 150)
		ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
		ENTITY.SET_ENTITY_HEALTH(pod, 150)
		PED.SET_PED_ARMOUR(pod, 100)
		PED.SET_PED_SHOOT_RATE(pod, 5)
		TASK.TASK_COMBAT_PED(pod, targetPed, 0, 16)
		if gutask then
			PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pod, true)
		end
		
		
	end)

	menu.action(ascm, "FIB Super Car", {"fibatk"}, "can be hard to escape from no matter the car, as long as it cant fly", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local vehicleHash = util.joaat("virtue")
		local pedHash = 1558115333
		requestModels(util.joaat("virtue"), pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			HIGH_DOWNFORCE(vehicle)
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 672, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 193, false)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use\
			TASK.SET_DRIVE_TASK_DRIVING_STYLE(clown, 17564220)
			TASK.SET_DRIVE_TASK_MAX_CRUISE_SPEED(clown, 3000)
			TASK.SET_DRIVE_TASK_CRUISE_SPEED(clown, 1980)
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)


	menu.action(ascm, "FIB Van", {"fibatk"}, "", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("fbi2")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 812, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)
	
	
	menu.action(ascm, "FIB TRUCK", {""}, "I HAVE A TRUCK said the FIB agents.", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("phantom3")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 812, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, true)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
				TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
                WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)
	

	menu.action(ascm, "FIB Tampa", {""}, "DEATH!!!!!!", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("tampa3")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			HIGH_DOWNFORCE(vehicle)
			addBlipForEntity(vehicle, 812, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_MOD(vehicle, 10, 0)
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
            else
				TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
                WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)

	menu.action(ascm, "FIB Bati", {"fibb"}, "they can fall off lol cry about it", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("akuma")
		local pedHash = 1558115333
		requestModels(util.joaat("akuma"), pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 812, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 200)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			TASK.SET_DRIVE_TASK_DRIVING_STYLE(clown, 17564220)
			TASK.SET_DRIVE_TASK_MAX_CRUISE_SPEED(clown, 3000)
			TASK.SET_DRIVE_TASK_CRUISE_SPEED(clown, 1980)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)

	menu.action(ascm, "FIB Cruisier", {"fibc"}, "Random choice between the FIB buffalo and unmarked crown vic", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = random{util.joaat("police4"), util.joaat("fbi")}
		local pedHash = 1558115333
		requestModels(-1973172295, 1127131465, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 812, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			TASK.SET_DRIVE_TASK_DRIVING_STYLE(clown, 17564220)
			TASK.SET_DRIVE_TASK_MAX_CRUISE_SPEED(clown, 300)
			TASK.SET_DRIVE_TASK_CRUISE_SPEED(clown, 280)
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)
	
	menu.action(ascm, "FIB Heli", {"fibh"}, "might spawn with a livery on it DESPITE THE FACT THAT I SET IT AS NO LIVERY", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("swift")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)
        local spawn_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player_ped, math.random(-30, 30),  math.random(-30, 30), 60)
        local vehicle = entities.create_vehicle(vehicleHash, spawn_pos, ENTITY.GET_ENTITY_HEADING(player_ped))
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, spawn_pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			VEHICLE.SET_HELI_BLADES_FULL_SPEED(vehicle)
			addBlipForEntity(vehicle, 422, 40)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_LIVERY(vehicle, 0)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 48, 0)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 10000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 10000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)
	
	menu.action(ascm, "FIB Valkyrie", {"fibh"}, "might spawn with a livery on it DESPITE THE FACT THAT I SET IT AS NO LIVERY", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("valkyrie")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)
        local spawn_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player_ped, math.random(-30, 30),  math.random(-30, 30), 60)
        local vehicle = entities.create_vehicle(vehicleHash, spawn_pos, ENTITY.GET_ENTITY_HEADING(player_ped))
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, spawn_pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
			PED.SET_PED_AS_COP(clown, true)
			VEHICLE.SET_HELI_BLADES_FULL_SPEED(vehicle)
			addBlipForEntity(vehicle, 422, 40)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_LIVERY(vehicle, 0)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 48, 0)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
            TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
			PED.SET_PED_FIRING_PATTERN(clown, -957453492)
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
        end
    end)
	
	menu.action(ascm, "FIB RPG Heli", {"fibrh"}, "", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("buzzard2")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local coords = ENTITY.GET_ENTITY_COORDS(player_ped, true)
        local spawn_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player_ped, math.random(-30, 30),  math.random(-30, 30), 60)
        local vehicle = entities.create_vehicle(vehicleHash, spawn_pos, ENTITY.GET_ENTITY_HEADING(player_ped))
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, spawn_pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
                WEAPON.GIVE_WEAPON_TO_PED(clown, -1312131151, 1000, false, true)
            else
                WEAPON.GIVE_WEAPON_TO_PED(clown, -1312131151, 1000, false, true)
            end
			PED.SET_PED_AS_COP(clown, true)
			VEHICLE.SET_HELI_BLADES_FULL_SPEED(vehicle)
			addBlipForEntity(vehicle, 422, 40)
			VEHICLE.SET_VEHICLE_MOD_KIT(van, 0)
			VEHICLE.SET_VEHICLE_LIVERY(van, 0)
			VEHICLE.SET_VEHICLE_MOD(van, 48, 0)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, -1312131151 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, -1312131151, 1000, false, true)
            end
        end
    end)

	menu.action(ascm, "FIB Kuruma", {"fibatk2"}, "", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("kuruma2")
		local pedHash = 1558115333 
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			VEHICLE.SET_VEHICLE_BODY_HEALTH(vehicle, 40000)
			ENTITY.SET_ENTITY_MAX_HEALTH(vehicle, 10000)
			ENTITY.SET_ENTITY_HEALTH(vehicle, 10000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 672, 40)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use\
			TASK.SET_DRIVE_TASK_DRIVING_STYLE(clown, 17564220)
			TASK.SET_DRIVE_TASK_MAX_CRUISE_SPEED(clown, 300)
			TASK.SET_DRIVE_TASK_CRUISE_SPEED(clown, 280)
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 20000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
			WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)
	
	
	menu.action(ascm, "Send FIB APC", {"fibapc"}, "you heard me.", function(on_click)
		local vehicleHash = util.joaat("apc")
		local pedHash = 1558115333 
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
			for seat = -1, -1 do
				local cop = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				PED.SET_PED_INTO_VEHICLE(cop, vehicle, seat)
				PED.SET_PED_CONFIG_FLAG(clown, 281, true)
				PED.SET_PED_CONFIG_FLAG(clown, 2, true)
				PED.SET_PED_CONFIG_FLAG(clown, 33, false)
				TASK.TASK_COMBAT_PED(cop, targetPed, 0, 16)
				VEHICLE.SET_VEHICLE_COLOURS(vehicle, 0, 0)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle,-1, 3)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 46, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 5, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 2, true)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				PED.SET_PED_COMBAT_ATTRIBUTES(cop, 3, false)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 3)
				PED.SET_PED_MAX_HEALTH(cop, 150)
				ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
				ENTITY.SET_ENTITY_HEALTH(cop, 150)
				PED.SET_PED_SHOOT_RATE(cop, 5)
				PED.SET_PED_SUFFERS_CRITICAL_HITS(cop, false)
				WEAPON.GIVE_WEAPON_TO_PED(cop, 584646201, 9999, false, true)
				PED.SET_PED_ACCURACY(cop, 100.0)
				PED.SET_PED_HEARING_RANGE(cop, 99999)
				PED.SET_PED_AS_COP(cop, true)
				addBlipForEntity(vehicle, 558, 59)
				VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
				VEHICLE.SET_VEHICLE_MOD(vehicle, 10, 0)
				VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
				VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
				VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
				VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
				PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
				VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
				VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
				VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
				VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 3000)
				VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
				VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
				VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 3000)
				VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
				if ktask then
					PED.SET_PED_KEEP_TASK(clown, true)
				end
			end
			for seats = 0, 2 do
				local cops = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
				PED.SET_PED_INTO_VEHICLE(cops, vehicle, seats)
				PED.SET_PED_CONFIG_FLAG(cops, 281, true)
				PED.SET_PED_CONFIG_FLAG(cops, 2, true)
				PED.SET_PED_CONFIG_FLAG(cops, 33, false)
				TASK.TASK_VEHICLE_CHASE(cops, targetPed)
				VEHICLE.SET_VEHICLE_COLOURS(vehicle, 0, 0)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS(vehicle, true)
				VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, -1, 3)
				PED.SET_PED_COMBAT_ATTRIBUTES(cops, 46, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cops, 5, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(cops, 2, true)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
				VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
				PED.SET_PED_COMBAT_ATTRIBUTES(cops, 3, false)
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 3)
				PED.SET_PED_MAX_HEALTH(cops, 150)
				ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
				ENTITY.SET_ENTITY_HEALTH(cops, 150)
				PED.SET_PED_SHOOT_RATE(cops, 5)
				PED.SET_PED_SUFFERS_CRITICAL_HITS(cops, false)
				WEAPON.GIVE_WEAPON_TO_PED(cops, 584646201, 9999, false, true)
				PED.SET_PED_ACCURACY(cops, 100.0)
				PED.SET_PED_HEARING_RANGE(cops, 99999)
				PED.SET_PED_AS_COP(cops, true)
				addBlipForEntity(vehicle, 558, 59)
				VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
				VEHICLE.SET_VEHICLE_MOD(vehicle, 10, 0)
				VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
				VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
				VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
				VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
				PED.SET_PED_SUFFERS_CRITICAL_HITS(cops, false)
				VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
				VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
				VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4)
				if ktask then
					PED.SET_PED_KEEP_TASK(cop, true)
				end
			end
		end
		v3.free(outCoords)
		memory.free(outHeading)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(pedHash)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash)
	end)

	menu.action(ascm, "FIB Nightshark", {"fibatk"}, "for the bomb happy individuals", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("nightshark")
		local pedHash = 1558115333
		requestModels(vehicleHash, pedHash)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, pedHash, outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 724, 85)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "FIB")
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, 0, 0, 0) --black
			VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vehicle, 0, 0, 0)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 0, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 0, 0)-- matte secondary
			VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 11) --street wheel type
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 0, 3) --spoiler
			VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 0)--wheel type?
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 0) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
			if pcar then 
				PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			end
			if d then
				PED.SET_AI_WEAPON_DAMAGE_MODIFIER(clown, 3000000)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)

distance2 = 100
menu.slider(asa, "Distance", {""}, "the distance of the section of road from the target that the NPC will spawn at. Will apply to ALL attackers in this section. 100 is about a block away.", 10, 900, 100, 10, function(s)
	distance2 = s
end)
	
		menu.action(asa, "Army Half Track", {"aht"}, "These mfs dont exit the car, they just chase and shoot", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("halftrack")
		local clown_hash = {"1490458366", "1925237458"}
		local marine1 = 1925237458
		local marine2 = 1490458366
		requestModels(vehicleHash, marine1, marine2)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance2)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, random(clown_hash), outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 724, 85)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_COLOURS(vehicle, 154, 154)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 154, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 154, 0)-- matte secondary
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 10, 0) --rear turret
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 154) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)

		menu.action(asa, "Army Insurgent", {"aht"}, "These mfs dont exit the car, they just chase and shoot", function(on_click)
        local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local vehicleHash = util.joaat("insurgent3")
		local clown_hash = {"1490458366", "1925237458"}
		local marine1 = 1925237458
		local marine2 = 1490458366
		requestModels(vehicleHash, marine1, marine2)
		local targetPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
		local pos = ENTITY.GET_ENTITY_COORDS(targetPed)
		local vehicle = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
		if not ENTITY.DOES_ENTITY_EXIST(vehicle) then
			return
		end

		local offset = getOffsetFromEntityGivenDistance(vehicle, distance2)
		local outCoords = v3.new()
		local outHeading = memory.alloc()

		if PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(offset.x, offset.y, offset.z, outCoords, outHeading, 1, 3.0, 0) then
			ENTITY.SET_ENTITY_COORDS(vehicle, v3.getX(outCoords), v3.getY(outCoords), v3.getZ(outCoords))
			ENTITY.SET_ENTITY_HEADING(vehicle, memory.read_float(outHeading))
			VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		end
        for i=-1, VEHICLE.GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 do
            local clown = entities.create_ped(2, random(clown_hash), outCoords, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            PED.SET_PED_INTO_VEHICLE(clown, vehicle, i)
            if i % 2 == 0 then
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            else
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 9999, false, true)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
			PED.SET_PED_AS_COP(clown, true)
			addBlipForEntity(vehicle, 724, 85)
			PED.SET_PED_CONFIG_FLAG(clown, 281, true)
			PED.SET_PED_CONFIG_FLAG(clown, 2, true)
			PED.SET_PED_CONFIG_FLAG(clown, 33, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(clown, 46, true)
			PED.SET_PED_ACCURACY(clown, 100.0)
			PED.SET_PED_HEARING_RANGE(clown, 99999)
			PED.SET_PED_RANDOM_COMPONENT_VARIATION(clown, 0)
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, 3)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 50)
			PED.SET_PED_MAX_HEALTH(clown, 150)
			ENTITY.SET_ENTITY_PROOFS(ped, false, true, false, false, true, false, false, false)
			ENTITY.SET_ENTITY_HEALTH(clown, 150)
			PED.SET_PED_ARMOUR(clown, 100)
			PED.SET_PED_SHOOT_RATE(clown, 5)
			VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
			VEHICLE.SET_VEHICLE_COLOURS(vehicle, 154, 154)
			VEHICLE.SET_VEHICLE_MOD_COLOR_1(vehicle, 3, 154, 0) --matte finish
			VEHICLE.SET_VEHICLE_MOD_COLOR_2(vehicle, 3, 154, 0)-- matte secondary
			PED.SET_PED_SUFFERS_CRITICAL_HITS(clown, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 10, 0) --rear turret
			VEHICLE.SET_VEHICLE_EXTRA_COLOURS(vehicle, 0, 154) --wheel color
			VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(vehicle, 4) --plate type, 4 is SA EXEMPT which law enforcement and government vehicles use
			PED.SET_PED_COMBAT_ATTRIBUTES(clown, 3, false)
			PED.SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(clown, 0)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(vehicle, false)
			VEHICLE.SET_VEHICLE_MOD(vehicle, 16, 4) --armor, 4 is max
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(vehicle, 2000)
			VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, false)
			if godmodeatk then
				ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
			end
            if i == -1 then
                TASK.TASK_VEHICLE_CHASE(clown, player_ped)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 584646201 , 1000, false, true)
            else
                TASK.TASK_COMBAT_PED(clown, player_ped, 0, 16)
				WEAPON.GIVE_WEAPON_TO_PED(clown, 4208062921, 9999, false, true)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x8B3C480B)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x4DB62ABE)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x5DD5DBD5)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x9D65907A)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0x420FD713)
				WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(clown, 4208062921, 0xE50C424D)
				PED.SET_PED_FIRING_PATTERN(clown, -957453492)
            end
        end
    end)

    menu.click_slider(asv, "Vehicle Speed", {"asvs"}, "", -10000, 10000, 200, 50, function(s)
        local car = PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
        if car ~= 0 then
            request_control_of_entity(car)
            VEHICLE.MODIFY_VEHICLE_TOP_SPEED(car, s)
            ENTITY.SET_ENTITY_MAX_SPEED(car, s)
        end
    end)



end

players.on_join(player)
players.dispatch_on_join()

function getOffsetFromEntityGivenDistance(entity, distance)
	local pos = ENTITY.GET_ENTITY_COORDS(entity, 0)
	local theta = (math.random() + math.random(0, 1)) * math.pi --returns a random angle between 0 and 2pi (exclusive)
	local coords = vect.new(
		pos.x + distance * math.cos(theta),
		pos.y + distance * math.sin(theta),
		pos.z
	)
	return coords
end

cur_names = {}

function GET_NEARBY_ENTITIES(pid, radius) --returns nearby peds and vehicles given player Id
	local peds = GET_NEARBY_PEDS(pid, radius)
	local vehicles = GET_NEARBY_VEHICLES(pid, radius)
	local entities = peds
	for i = 1, #vehicles do table.insert(entities, vehicles[i]) end
	return entities
end

function GET_NEARBY_VEHICLES(pid, radius) --returns a list of nearby vehicles given player Id
	local vehicles = {}
	local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
	local pos = ENTITY.GET_ENTITY_COORDS(p)
	local v = PED.GET_VEHICLE_PED_IS_IN(p, false)
	for k, vehicle in pairs(entities.get_all_vehicles_as_handles()) do 
		local veh_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
		if vehicle ~= v and vect.dist(pos, veh_pos) <= radius then table.insert(vehicles, vehicle) end
	end
	return vehicles
end

function GET_NEARBY_PEDS(pid, radius) --returns a list of nearby peds given player Id
	local peds = {}
	local p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
	local pos = ENTITY.GET_ENTITY_COORDS(p)
	for k, ped in pairs(entities.get_all_peds_as_handles()) do
		if ped ~= p then
			local ped_pos = ENTITY.GET_ENTITY_COORDS(ped)
			if vect.dist(pos, ped_pos) <= radius then table.insert(peds, ped) end
		end
	end
	return peds
end

function random(t) --returns a random value from table
	local list = {}
	for k, value in pairs(t) do table.insert(list, value) end
	return list[math.random(1, #list)]
end

function table.find(t, value)
	for k, v in pairs(t) do
		if v == value then
			return true
		end
	end
	return false
end

if loaded_config then
	for s, table in pairs(loaded_config) do
		for k, v in pairs(table) do
			if config[s] and config[s][k] ~= nil then
				config[s][k] = v
			end
		end
	end
end


vect = {
	['new'] = function(x, y, z)
		return {['x'] = x, ['y'] = y, ['z'] = z}
	end,
	['subtract'] = function(a, b)
		return vect.new(a.x-b.x, a.y-b.y, a.z-b.z)
	end,
	['add'] = function(a, b)
		return vect.new(a.x+b.x, a.y+b.y, a.z+b.z)
	end,
	['mag'] = function(a)
		return math.sqrt(a.x^2 + a.y^2 + a.z^2)
	end,
	['norm'] = function(a)
		local mag = vect.mag(a)
		return vect.div(a, mag)
	end,
	['mult'] = function(a, b)
		return vect.new(a.x*b, a.y*b, a.z*b)
	end, 
	['div'] = function(a, b)
		return vect.new(a.x/b, a.y/b, a.z/b)
	end, 
	['dist'] = function(a, b) --returns the distance between two vectors
		return vect.mag(vect.subtract(a, b) )
	end
}

function REQUEST_CONTROL_LOOP(entity)
	local tick = 0
	while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) and tick < 25 do
		wait()
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
		tick = tick + 1
	end
	if NETWORK.NETWORK_IS_SESSION_STARTED() then
		local netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
		NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, true)
	end
end



--delete the code inside these green brackets to remove cmode turning itself back on -- cmode makes you say weird shit intermittently
-----------------------------------------------------------------------------------

--while true do
--    if NETWORK.NETWORK_IS_IN_SESSION() == false then
--        while NETWORK.NETWORK_IS_IN_SESSION() == false or util.is_session_transition_active() do
--            util.yield(100)
--        end
--		menu.trigger_commands("cmode on")
--    end
--    util.yield()
--end
-----------------------------------------------------------------------------------

--fuck you