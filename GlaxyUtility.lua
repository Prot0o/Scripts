
--  Ḡłα✖⑂ Ü☂їʟїт⑂
----------------------
--- ChangeLog Last Version ---
----------------------

--V0.09
 
-- Little changes on design
-- Script structure (reorganized) 
-- Added Humanizer for LvlSpell. 1-3 sec (Menu) (On request from: lRK1K )
-- Added "Minion Skin Changer", Ally + Enemy team. (Thanks for big help: HeRoBaNd )
-- Fixed AutoSave
 
local AllSkins = { -- 

    -- A
  ["Aatrox"] = {"Classic", "Justicar", "Mecha", "Sea Hunter"},
  ["Ahri"] = {"Classic", "Dynasty", "Midnight", "Foxfire", "Popstar", "Challenger", "Academy", "Arcade"},
  ["Akali"] = {"Classic", "Stinger", "Crimson", "All-star", "Nurse", "Blood Moon", "Silverfang", "Headhunter"},
  ["Alistar"] = {"Classic", "Black", "Golden", "Matador", "Longhorn", "Unchained", "Infernal", "Sweeper", "Marauder", "SKT 1"},
  ["Amumu"] = {"Classic", "Pharaoh", "Vancouver", "Emumu", "Re-Gifted", "Almost-Prom King", "Little Knight", "Sad Robot", "Surprise Party"},
  ["Anivia"] = {"Classic", "Team Spirit", "Bird of Prey", "Noxus Hunter", "Hextech", "Blackfrost", "Prehistoric"},
  ["Annie"] = {"Classic", "Goth", "Red Riding", "Annie in Wonderland", "Prom Queen", "Frostfire", "Reverse", "FrankenTibbers", "Panda", "Sweetheart", "Hextech"},
  ["Ashe"] = {"Classic", "Freljord", "Sherwood Forest", "Woad", "Queen", "Amethyst", "Heartseeker", "Marauder", "PROJECT"},
  ["Azir"] = {"Classic", "Galactic", "Gravelord", "SKT T1"},
  ["AurelionSol"] = {"Classic", "Ashen Lord"},
  -- B
  ["Bard"] = {"Classic", "Elderwood", "Chroma Pack: Marigold", "Chroma Pack: Ivy", "Chroma Pack: Sage"},
  ["Blitzcrank"] = {"Classic", "Rusty", "Goalkeeper", "Boom Boom", "Piltover Customs", "Definitely Not", "iBlitzcrank", "Riot", "Chroma Pack: Molten", "Chroma Pack: Cobalt", "Chroma Pack: Gunmetal", "Battle Boss"},
  ["Brand"] = {"Classic", "Apocalyptic", "Vandal", "Cryocore", "Zombie", "Spirit Fire"},
  ["Braum"] = {"Classic", "Dragonslayer", "El Tigre", "Lionheart"},
  -- C
  ["Caitlyn"] = {"Classic", "Resistance", "Sheriff", "Safari", "Arctic Warfare", "Officer", "Headhunter", "Chroma Pack: Pink", "Chroma Pack: Green", "Chroma Pack: Blue","Lunar"},
  ["Cassiopeia"] = {"Classic", "Desperada", "Siren", "Mythic", "Jade Fang", "Chroma Pack: Day", "Chroma Pack: Dusk", "Chroma Pack: Night"},
  ["Chogath"] = {"Classic", "Nightmare", "Gentleman", "Loch Ness", "Jurassic", "Battlecast Prime", "Prehistoric"},
  ["Corki"] = {"Classic", "UFO", "Ice Toboggan", "Red Baron", "Hot Rod", "Urfrider", "Dragonwing", "Fnatic", "Arcade"},
  -- D
  ["Darius"] = {"Classic", "Lord", "Bioforge", "Woad King", "Dunkmaster", "Chroma Pack: Black Iron", "Chroma Pack: Bronze", "Chroma Pack: Copper", "Academy"},
  ["Diana"] = {"Classic", "Dark Valkyrie", "Lunar Goddess"},
  ["DrMundo"] = {"Classic", "Toxic", "Mr. Mundoverse", "Corporate Mundo", "Mundo Mundo", "Executioner Mundo", "Rageborn Mundo", "TPA Mundo", "Pool Party"},
  ["Draven"] = {"Classic", "Soul Reaver", "Gladiator", "Primetime", "Pool Party"},
  -- E
  ["Ekko"] = {"Classic", "Sandstorm", "Academy", "PROJECT"},
  ["Elise"] = {"Classic", "Death Blossom", "Victorious", "Blood Moon", "SKT 1"},
  ["Evelynn"] = {"Classic", "Shadow", "Masquerade", "Tango", "Safecracker"},
  ["Ezreal"] = {"Classic", "Nottingham", "Striker", "Frosted", "Explorer", "Pulsefire", "TPA", "Debonair", "Ace of Spades", "Arcade"},
  -- F
  ["FiddleSticks"] = {"Classic", "Spectral", "Union Jack", "Bandito", "Pumpkinhead", "Fiddle Me Timbers", "Surprise Party", "Dark Candy", "Risen"},
  ["Fiora"] = {"Classic", "Royal Guard", "Nightraven", "Headmistress", "PROJECT", "Pool Party"},
  ["Fizz"] = {"Classic", "Atlantean", "Tundra", "Fisherman", "Void", "Chroma Pack: Orange", "Chroma Pack: Black", "Chroma Pack: Red", "Cottontail"},
  -- G
  ["Galio"] = {"Classic", "Enchanted", "Hextech", "Commando", "Gatekeeper", "Debonair"},
  ["Gangplank"] = {"Classic", "Spooky", "Minuteman", "Sailor", "Toy Soldier", "Special Forces", "Sultan", "Captain"},
  ["Garen"] = {"Classic", "Sanguine", "Desert Trooper", "Commando", "Dreadknight", "Rugged", "Steel Legion", "Chroma Pack: Garnet", "Chroma Pack: Plum", "Chroma Pack: Ivory", "Rogue Admiral"},
  ["Gnar"] = {"Classic", "Dino", "Gentleman"},  
  ["Gragas"] = {"Classic", "Scuba", "Hillbilly", "Santa", "Gragas, Esq.", "Vandal", "Oktoberfest", "Superfan", "Fnatic", "Caskbreaker"},
  ["Graves"] = {"Classic", "Hired Gun", "Jailbreak", "Mafia", "Riot", "Pool Party", "Cutthroat"},
  -- H
  ["Hecarim"] = {"Classic", "Blood Knight", "Reaper", "Headless", "Arcade", "Elderwood"},
  ["Heimerdinger"] = {"Classic", "Alien Invader", "Blast Zone", "Piltover Customs", "Snowmerdinger", "Hazmat"},
  -- I
  ["Illaoi"] = {"Classic", "Void Bringer"},
  ["Irelia"] = {"Classic", "Nightblade", "Aviator", "Infiltrator", "Frostblade", "Order of the Lotus"},
  -- J
  ["Janna"] = {"Classic", "Tempest", "Hextech", "Frost Queen", "Victorious", "Forecast", "Fnatic"},
  ["JarvanIV"] = {"Classic", "Commando", "Dragonslayer", "Darkforge", "Victorious", "Warring Kingdoms", "Fnatic"},
  ["Jax"] = {"Classic", "The Mighty", "Vandal", "Angler", "PAX", "Jaximus", "Temple", "Nemesis", "SKT T1", "Chroma Pack: Cream", "Chroma Pack: Amber", "Chroma Pack: Brick", "Warden"},
  ["Jayce"] = {"Classic", "Full Metal", "Debonair", "Forsaken"},
  ["Jinx"] = {"Classic", "Mafia", "Firecracker", "Slayer"},
  -- K
  ["Kalista"] = {"Classic", "Blood Moon", "Championship", "SKT T1"},
  ["Karma"] = {"Classic", "Sun Goddess", "Sakura", "Traditional", "Order of the Lotus", "Warden"},
  ["Karthus"] = {"Classic", "Phantom", "Statue of", "Grim Reaper", "Pentakill", "Fnatic", "Chroma Pack: Burn", "Chroma Pack: Blight", "Chroma Pack: Frostbite"},
  ["Kassadin"] = {"Classic", "Festival", "Deep One", "Pre-Void", "Harbinger", "Cosmic Reaver"},
  ["Katarina"] = {"Classic", "Mercenary", "Red Card", "Bilgewater", "Kitty Cat", "High Command", "Sandstorm", "Slay Belle", "Warring Kingdoms", "PROJECT"},
  ["Kayle"] = {"Classic", "Silver", "Viridian", "Unmasked", "Battleborn", "Judgment", "Aether Wing", "Riot"},
  ["Kennen"] = {"Classic", "Deadly", "Swamp Master", "Karate", "Kennen M.D.", "Arctic Ops"},
  ["Khazix"] = {"Classic", "Mecha", "Guardian of the Sands"},
  ["Kindred"] = {"Classic", "Shadowfire"},
  ["KogMaw"] = {"Classic", "Caterpillar", "Sonoran", "Monarch", "Reindeer", "Lion Dance", "Deep Sea", "Jurassic", "Battlecast"},
  ["Kled"] = {"Classic", "Sir"},
  -- L
  ["Leblanc"] = {"Classic", "Wicked", "Prestigious", "Mistletoe", "Ravenborn"},
  ["LeeSin"] = {"Classic", "Traditional", "Acolyte", "Dragon Fist", "Muay Thai", "Pool Party", "SKT T1", "Chroma Pack: Black", "Chroma Pack: Blue", "Chroma Pack: Yellow", "Knockout"},
  ["Leona"] = {"Classic", "Valkyrie", "Defender", "Iron Solari", "Pool Party", "Chroma Pack: Pink", "Chroma Pack: Azure", "Chroma Pack: Lemon", "PROJECT"},
  ["Lissandra"] = {"Classic", "Bloodstone", "Blade Queen"},
  ["Lucian"] = {"Classic", "Hired Gun", "Striker", "Chroma Pack: Yellow", "Chroma Pack: Red", "Chroma Pack: Blue", "PROJECT"},
  ["Lulu"] = {"Classic", "Bittersweet", "Wicked", "Dragon Trainer", "Winter Wonder", "Pool Party"},
  ["Lux"] = {"Classic", "Sorceress", "Spellthief", "Commando", "Imperial", "Steel Legion", "Star Guardian"},
  -- M
  ["Malphite"] = {"Classic", "Shamrock", "Coral Reef", "Marble", "Obsidian", "Glacial", "Mecha", "Ironside"},
  ["Malzahar"] = {"Classic", "Vizier", "Shadow Prince", "Djinn", "Overlord", "Snow Day"},
  ["Maokai"] = {"Classic", "Charred", "Totemic", "Festive", "Haunted", "Goalkeeper"},
  ["MasterYi"] = {"Classic", "Assassin", "Chosen", "Ionia", "Samurai Yi", "Headhunter", "Chroma Pack: Gold", "Chroma Pack: Aqua", "Chroma Pack: Crimson", "PROJECT"},
  ["MissFortune"] = {"Classic", "Cowgirl", "Waterloo", "Secret Agent", "Candy Cane", "Road Warrior", "Mafia", "Arcade", "Captain", "Pool Party"},
  ["Mordekaiser"] = {"Classic", "Dragon Knight", "Infernal", "Pentakill", "Lord", "King of Clubs"},
  ["Morgana"] = {"Classic", "Exiled", "Sinful Succulence", "Blade Mistress", "Blackthorn", "Ghost Bride", "Victorious", "Chroma Pack: Toxic", "Chroma Pack: Pale", "Chroma Pack: Ebony","Lunar"},
  -- N
  ["Nami"] = {"Classic", "Koi", "River Spirit", "Urf", "Chroma Pack: Sunbeam", "Chroma Pack: Smoke", "Chroma Pack: Twilight"},
  ["Nasus"] = {"Classic", "Galactic", "Pharaoh", "Dreadknight", "Riot K-9", "Infernal", "Archduke", "Chroma Pack: Burn", "Chroma Pack: Blight", "Chroma Pack: Frostbite",},
  ["Nautilus"] = {"Classic", "Abyssal", "Subterranean", "AstroNautilus", "Warden"},
  ["Nidalee"] = {"Classic", "Snow Bunny", "Leopard", "French Maid", "Pharaoh", "Bewitching", "Headhunter", "Warring Kingdoms"},
  ["Nocturne"] = {"Classic", "Frozen Terror", "Void", "Ravager", "Haunting", "Eternum"},
  ["Nunu"] = {"Classic", "Sasquatch", "Workshop", "Grungy", "Nunu Bot", "Demolisher", "TPA", "Zombie"},
  -- O
  ["Olaf"] = {"Classic", "Forsaken", "Glacial", "Brolaf", "Pentakill", "Marauder"},
  ["Orianna"] = {"Classic", "Gothic", "Sewn Chaos", "Bladecraft", "TPA", "Winter Wonder"},
  -- P
  ["Pantheon"] = {"Classic", "Myrmidon", "Ruthless", "Perseus", "Full Metal", "Glaive Warrior", "Dragonslayer", "Slayer"},
  ["Poppy"] = {"Classic", "Noxus", "Lollipoppy", "Blacksmith", "Ragdoll", "Battle Regalia", "Scarlet Hammer"},
  -- Q
  ["Quinn"] = {"Classic", "Phoenix", "Woad Scout", "Corsair"},
  -- R
  ["Rammus"] = {"Classic", "King", "Chrome", "Molten", "Freljord", "Ninja", "Full Metal", "Guardian of the Sands"},
  ["Reksai"] = {"Classic", "Eternum", "Pool Party"},
  ["Renekton"] = {"Classic", "Galactic", "Outback", "Bloodfury", "Rune Wars", "Scorched Earth", "Pool Party", "Scorched Earth", "Prehistoric", "SKT 1 "},
  ["Rengar"] = {"Classic", "Headhunter", "Night Hunter", "SSW"},
  ["Riven"] = {"Classic", "Redeemed", "Crimson Elite", "Battle Bunny", "Championship", "Dragonblade", "Arcade"},
  ["Rumble"] = {"Classic", "Rumble in the Jungle", "Bilgerat", "Super Galaxy"},
  ["Ryze"] = {"Classic", "Human", "Tribal", "Uncle", "Triumphant", "Professor", "Zombie", "Dark Crystal", "Pirate", "Whitebeard", "SKT 1"},
  -- S
  ["Sejuani"] = {"Classic", "Sabretusk", "Darkrider", "Traditional", "Bear Cavalry", "Poro Rider"},
  ["Shaco"] = {"Classic", "Mad Hatter", "Royal", "Nutcracko", "Workshop", "Asylum", "Masked", "Wild Card"},
  ["Shen"] = {"Classic", "Frozen", "Yellow Jacket", "Surgeon", "Blood Moon", "Warlord", "TPA"},
  ["Shyvana"] = {"Classic", "Ironscale", "Boneclaw", "Darkflame", "Ice Drake", "Championship"},
  ["Singed"] = {"Classic", "Riot Squad", "Hextech", "Surfer", "Mad Scientist", "Augmented", "Snow Day", "SSW"},
  ["Sion"] = {"Classic", "Hextech", "Barbarian", "Lumberjack", "Warmonger"},
  ["Sivir"] = {"Classic", "Warrior Princess", "Spectacular", "Huntress", "Bandit", "PAX", "Snowstorm", "Warden", "Victorious"},
  ["Skarner"] = {"Classic", "Sandscourge", "Earthrune", "Battlecast Alpha", "Guardian of the Sands"},
  ["Sona"] = {"Classic", "Muse", "Pentakill", "Silent Night", "Guqin", "Arcade", "DJ"},
  ["Soraka"] = {"Classic", "Dryad", "Divine", "Celestine", "Reaper", "Order of the Banana"},
  ["Swain"] = {"Classic", "Northern Front", "Bilgewater", "Tyrant"},
  ["Syndra"] = {"Classic", "Justicar", "Atlantean", "Queen of Diamonds"},
  -- T
  ["TahmKench"] = {"Classic", "Master Chef"},
  ["Taliyah"] = {"Classic", "Freljord"},
  ["Talon"] = {"Classic", "Renegade", "Crimson Elite", "Dragonblade", "SSW"},
  ["Taric"] = {"Classic", "Emerald", "Armor of the Fifth Age", "Bloodstone", "Pool Party"},
  ["Teemo"] = {"Classic", "Happy Elf", "Recon", "Badger", "Astronaut", "Cottontail", "Super", "Panda", "Omega Squad"},
  ["Thresh"] = {"Classic", "Deep Terror", "Championship", "Blood Moon", "SSW"},
  ["Tristana"] = {"Classic", "Riot Girl", "Earnest Elf", "Firefighter", "Guerilla", "Buccaneer", "Rocket Girl", "Chroma Pack: Navy", "Chroma Pack: Purple", "Chroma Pack: Orange", "Dragon Trainer"},
  ["Trundle"] = {"Classic", "Lil' Slugger", "Junkyard", "Traditional", "Constable"},
  ["Tryndamere"] = {"Classic", "Highland", "King", "Viking", "Demonblade", "Sultan", "Warring Kingdoms", "Nightmare"},
  ["TwistedFate"] = {"Classic", "PAX", "Jack of Hearts", "The Magnificent", "Tango", "High Noon", "Musketeer", "Underworld", "Red Card", "Cutpurse"},
  ["Twitch"] = {"Classic", "Kingpin", "Whistler Village", "Medieval", "Gangster", "Vandal", "Pickpocket", "SSW"},
  -- U
  ["Udyr"] = {"Classic", "Black Belt", "Primal", "Spirit Guard", "Definitely Not"},
  ["Urgot"] = {"Classic", "Giant Enemy Crabgot", "Butcher", "Battlecast"},
  -- V
  ["Varus"] = {"Classic", "Blight Crystal", "Arclight", "Arctic Ops", "Heartseeker", "Swiftbolt"},
  ["Vayne"] = {"Classic", "Vindicator", "Aristocrat", "Dragonslayer", "Heartseeker", "SKT T1", "Arclight", "Chroma Pack: Green", "Chroma Pack: Red", "Chroma Pack: Silver", "Hextech"},
  ["Veigar"] = {"Classic", "White Mage", "Curling", "Veigar Greybeard", "Leprechaun", "Baron Von", "Superb Villain", "Bad Santa", "Final Boss"},
  ["Velkoz"] = {"Classic", "Battlecast", "Arclight"},
  ["Vi"] = {"Classic", "Neon Strike", "Officer", "Debonair", "Demon"},
  ["Viktor"] = {"Classic", "Full Machine", "Prototype", "Creator"},
  ["Vladimir"] = {"Classic", "Count", "Marquis", "Nosferatu", "Vandal", "Blood Lord", "Soulstealer", "Academy"},
  ["Volibear"] = {"Classic", "Thunder Lord", "Northern Storm", "Runeguard", "Captain"},
  -- W
  ["Warwick"] = {"Classic", "Grey", "Urf the Manatee", "Big Bad", "Tundra Hunter", "Feral", "Firefang", "Hyena", "Marauder"},
  ["MonkeyKing"] = {"Classic", "Volcanic", "General", "Jade Dragon", "Underworld","Radiant"},
  -- X
  ["Xerath"] = {"Classic", "Runeborn", "Battlecast", "Scorched Earth", "Guardian of the Sands"},
  ["XinZhao"] = {"Classic", "Commando", "Imperial", "Viscero", "Winged Hussar", "Warring Kingdoms", "Secret Agent"},
  -- Y
  ["Yasuo"] = {"Classic", "High Noon", "PROJECT"},
  ["Yorick"] = {"Classic", "Undertaker", "Pentakill"},
  -- Z
  ["Zac"] = {"Classic", "Special Weapon", "Pool Party", "Chroma Pack: Orange", "Chroma Pack: Bubblegum", "Chroma Pack: Honey"},
  ["Zed"] = {"Classic", "Shockblade", "SKT T1", "PROJECT"},
  ["Ziggs"] = {"Classic", "Mad Scientist", "Major", "Pool Party", "Snow Day", "Master Arcanist"},
  ["Zilean"] = {"Classic", "Old Saint", "Groovy", "Shurima Desert", "Time Machine", "Blood Moon"},
  ["Zyra"] = {"Classic", "Wildfire", "Haunted", "SKT T1"},               
    };
local Table = {["Aatrox"] = true, ["Yasuo"] = true,["Kled"] = true, ["Wukong"] = true, ["Urgot"] = true, ["Varus"] = true, ["Talon"] = true, ["Vayne"] = true, ["Trundle"] = true, ["Twitch"] = true, ["Tristana"] = true, ["Shyvana"] = true, ["Riven"] = true, ["Rengar"] = true, ["Renekton"] = true, ["Quinn"] = true, ["Pantheon"] = true, ["Lucian"] = true, ["LeeSin"] = true, ["KogMaw"] = true, ["Jinx"] = true, ["Jhin"] = true, ["Jayce"] = true, ["Jax"] = true, ["Irelia"] = true, ["Graves"] = true, ["Gnar"] = true, ["Gangplank"] = true, ["Fiora"] = true, ["Ezreal"] = true, ["Draven"] = true, ["Aatrox"] = true, ["Ashe"] = true, ["Corki"] = true, ["Kalista"] = true, ["Caitlyn"] = true, ["Zyra"] = false, ["Xerath"] = false, ["Ziggs"] = false, ["Zilean"] = false, ["Viktor"] = false, ["VelKoz"] = false, ["Veigar"] = false, ["Taliyah"] = false, ["TwistedFate"] = false, ["Syndra"] = false, ["Swain"] = false, ["Ryze"] = false, ["Orianna"] = false, ["Morgana"] = false, ["Malzahar"] = false, ["Lux"] = false, ["Lulu"] = false, ["Kayle"] = false, ["LeBlanc"] = false, ["Lissandra"] = false, ["Kassadin"] = false, ["Karthus"] = false, ["Karma"] = false, ["Heimerdinger"] = false, ["Galio"] = false, ["Fizz"] = false, ["Fiddlesticks"] = false, ["Ekko"] = false, ["Diana"] = false, ["Cassiopeia"] = false, ["Brand"] = false, ["Ahri"] = false, ["Annie"] = false, ["Azir"] = false, ["AurelionSol"] = false, ["Anivia"] = false};
local SkinList100 = {"Blue Classic","Red Pool Party","Blue Pool Party","Red PROJECT","Blue PROJECT","Red Snow","Blue Snow","Red DRAVEN","Blue DRAVEN","Red Classic"}
local SkinList200 = {"Red Classic","Blue Pool Party","Red Pool Party","Blue PROJECT","Red PROJECT","Blue Snow","Red Snow","Blue DRAVEN","Red DRAVEN","Blue Classic"}
local version = 1.0
local gameV = "6.16";
local scriptname = "Glaxy Utility";
local author ="Glaxy";
local contact = "dimitri.psarev";
----------------------
-- http://bol-tools.com/ tracker
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("xBNkwp2ydh4kMOo0")

function OnLoad()  
  AutoUpdate()
  Menu()
  SayHello()
  if GetInGameTimer() < 60 then
   AutoBuy()
  end
  CustomLoad()
  SkinLoad()
  SkinLoad1()
  if Config.SkinChanger.Enablee then
		SetSkin(myHero, Config.SkinChanger.skins -1)
	end
end

function OnUnload()
	if Config.SkinChanger.Enablee then
		SetSkin(myHero, -1)
		Print("<font color=\"#FFA07A\"><i> -- Utility Script Unload, BYE BYE! </i>" ..GetUser()) 
	end
  for i, minion in ipairs(Minion.objects) do
    SetSkin(minion, -1)
  end
  for i, minions in ipairs(Minion2.objects) do
    SetSkin(minions, -1)
  end
end

function OnTick()
  Minion:update()
  Minion2:update()
 
  if Config.Mskin.changeSkin1 then
      for i, minion in ipairs(Minion.objects) do
        SetSkin(minion, Config.Mskin.skinID1)
      end
  end
  if Config.Mskin.changeSkin2 then
    for i, minions in ipairs(Minion2.objects) do
      SetSkin(minions, Config.Mskin.skinID2)
    end
  end
end

function Menu()
  Config = scriptConfig("Glaxy - Utility ", "configname")

  Config:addSubMenu("-- AutoLvlSpell", "uplvl")
    Config.uplvl:addSubMenu("First: SELECT ORDER", "Priority")
    Config.uplvl:addSubMenu("Second: TURN IT ON", "ONOFF")

  
  Config:addSubMenu("-- AutoBuyItem", "autobuy")  
    Config.autobuy:addParam("Enable", "Enable AutoBuy :", SCRIPT_PARAM_ONOFF, true);  
    Config.autobuy:addParam("Doran", "Buy doran :", SCRIPT_PARAM_ONOFF, true);
    Config.autobuy:addParam("Pots", "Buy pots :", SCRIPT_PARAM_ONOFF, true);
    Config.autobuy:addParam("Trinket", "Buy Trinket :", SCRIPT_PARAM_ONOFF, true)

  Config:addSubMenu("-- Q-W-E-R Draws", "draw") 
    Config.draw:addParam("ead", "Enable All Drawings (LFC: Q-W-E-R)", SCRIPT_PARAM_ONOFF, true)
    Config.draw:addParam("line", "---------------------", SCRIPT_PARAM_INFO, "")
    Config.draw:addParam("AA", "Enable [" .. myHero.charName.. "] AA", SCRIPT_PARAM_ONOFF, true)
    Config.draw:addParam("AAA", "AA [" .. myHero.charName.. "] Color", SCRIPT_PARAM_COLOR, { 255, 255, 255, 255 })
    Config.draw:addParam("line", "---------------------", SCRIPT_PARAM_INFO, "")
    Config.draw:addParam("Q", "Enable  [" .. myHero.charName.. "] Q", SCRIPT_PARAM_ONOFF, true);
    Config.draw:addParam("QQ", "Q  [" .. myHero.charName.. "] Color", SCRIPT_PARAM_COLOR, { 255, 255, 255, 255 })
    Config.draw:addParam("W", "Enable  [" .. myHero.charName.. "] W", SCRIPT_PARAM_ONOFF, true);
    Config.draw:addParam("WW", "W  [" .. myHero.charName.. "] Color", SCRIPT_PARAM_COLOR, { 255, 255, 255, 255 })
    Config.draw:addParam("E", "Enable  [" .. myHero.charName.. "] E", SCRIPT_PARAM_ONOFF, true);
    Config.draw:addParam("EE", "E  [" .. myHero.charName.. "] Color", SCRIPT_PARAM_COLOR, { 255, 255, 255, 255 })
    Config.draw:addParam("R", "Enable  [" .. myHero.charName.. "] R", SCRIPT_PARAM_ONOFF, true);
    Config.draw:addParam("RR", "R  [" .. myHero.charName.. "] Color", SCRIPT_PARAM_COLOR, { 255, 255, 255, 255 })

   if VIP_USER then
    Config:addSubMenu("-- Minion Skin Changer", "Mskin")
    Config.Mskin.changeSkin1 = false
    Config.Mskin.changeSkin2 = false
  end

  Config.uplvl.ONOFF:addParam("levelSequence", "Status", SCRIPT_PARAM_ONOFF, false)
  Config.uplvl:addParam("Humanizer", "Use Humanizer for "..myHero.charName..":", SCRIPT_PARAM_SLICE, 1000, 0, 3000, 0)
  Config.uplvl.Priority:addParam("Mod", "Spell Order :", SCRIPT_PARAM_LIST, 1, {"R-Q-W-E", "R-Q-E-W", "R-W-Q-E", "R-W-E-Q", "R-E-Q-W", "R-E-W-Q"});
  Config.uplvl.ONOFF.levelSequence = false
    Config:addParam("info1", "", SCRIPT_PARAM_INFO, "")
    Config:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    Config:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    Config:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
end

function SkinLoad()
  if VIP_USER then  
    Config:addSubMenu("-- Skin Changer", "SkinChanger")
      Config.SkinChanger:addParam("Enablee", "Enable S.C: ", SCRIPT_PARAM_ONOFF, true)
      Config.SkinChanger:setCallback("Enablee", function (nV)
        if nV then
          Print("<font color=\"#FFA07A\"><i> -- SkinChanger Loaded for: </i>" ..myHero.charName) 
          SetSkin(myHero, Config.SkinChanger.skins -1)
        else
          SetSkin(myHero, -1)
        end
      end)
      Config.SkinChanger:addParam("skins", "Select [" .. myHero.charName.. "] Skin:", SCRIPT_PARAM_LIST, 1, AllSkins[myHero.charName])
      Config.SkinChanger:setCallback("skins", function (nV)
        if nV then 
          if Config.SkinChanger.Enablee then
            SetSkin(myHero, Config.SkinChanger.skins -1)
          end
        end
      end)
  end
end

function SkinLoad1()
    Config.Mskin:addParam('changeSkin1', 'Change Enemy Minions Skin', SCRIPT_PARAM_ONOFF, false)
    Config.Mskin:setCallback('changeSkin1', function(nV)
        if (nV) then
          for i, minion in ipairs(Minion.objects) do
              SetSkin(minion, Config.Mskin.skinID1)
            end
        else
          for i, minion in ipairs(Minion.objects) do
              SetSkin(minion, -1)
            end
        end
    end)
    if myHero.team == 100 then
        Config.Mskin:addParam('skinID1', 'Skin', SCRIPT_PARAM_LIST, 1, SkinList100)
    elseif myHero.team == 200 then
        Config.Mskin:addParam('skinID1', 'Skin', SCRIPT_PARAM_LIST, 1, SkinList200)
    end
      Config.Mskin:setCallback('skinID1', function(nV)
        if (Config.Mskin.changeSkin1) then
          for i, minion in ipairs(Minion.objects) do 
              SetSkin(minion, nV)
            end
        end
    end)
    
    if Config.Mskin.changeSkin1 then
      for i, minion in ipairs(Minion.objects) do
          SetSkin(minion, Config.Mskin.skinID1)
        end
    end 

    Config.Mskin:addParam('1', '', SCRIPT_PARAM_INFO, '')

    Config.Mskin:addParam('changeSkin2', 'Change Ally Minions Skin', SCRIPT_PARAM_ONOFF, false)
    Config.Mskin:setCallback('changeSkin2', function(nV)
        if (nV) then
            for i, minions in ipairs(Minion2.objects) do
                SetSkin(minions, Config.Mskin.skinID2)
            end
        else
            for i, minions in ipairs(Minion2.objects) do
                SetSkin(minions, -1)
            end
        end
    end)
        if myHero.team == 200 then
            Config.Mskin:addParam('skinID2', 'Skin', SCRIPT_PARAM_LIST, 1, SkinList100)
        elseif myHero.team == 100 then
            Config.Mskin:addParam('skinID2', 'Skin', SCRIPT_PARAM_LIST, 1, SkinList200)
        end
        Config.Mskin:setCallback('skinID2', function(nV)
        if (Config.Mskin.changeSkin2) then
            for i, minions in ipairs(Minion2.objects) do   
                SetSkin(minions, nV)
            end
        end
    end)
    
    if Config.Mskin.changeSkin2 then
        for i, minions in ipairs(Minion2.objects) do
            SetSkin(minions, Config.Mskin.skinID2)
        end
    end
end

function CustomLoad()
  Minion = minionManager(MINION_ENEMY, 1000000, myHero, MINION_SORT_HEALTH_ASC)
  Minion2 = minionManager(MINION_ALLY, 1000000, myHero, MINION_SORT_HEALTH_ASC)

local Last_LevelSpell = 0
	AddTickCallback(function()
		Sequence()
		if Config.uplvl.ONOFF.levelSequence and os.clock() - Last_LevelSpell > 0 then
		   DelayAction(function() autoLevelSetSequence(levelSequence)  end, Config.uplvl.Humanizer/1000)
      Last_LevelSpell = os.clock() + Human()
		end
	end)
end

local _saves, _initSave = {}, true
  function GetSave(name)
    local save
    if not _saves[name] then
      if FileExist(LIB_PATH .. "Saves\\" .. name .. ".save") then
        local f = loadfile(LIB_PATH .. "Saves\\" .. name .. ".save")
        if type(f) == "function" then
          _saves[name] = f()
        end
      else
        _saves[name] = {}
        MakeSurePathExists(LIB_PATH .. "Saves\\" .. name .. ".save")
      end
      end
      save = _saves[name]
      if not save then
        print("SaveFile: " .. name .. " is broken. Reset.")
        _saves[name] = {}
        save = _saves[name]
      end
  end

----------------------
--- DRAW ---
----------------------
function OnDraw()
	if myHero.charName == 'Aatrox' or 'Ahri' or 'Akali' or 'Alitar' or 'Amumu' or 'Anivia' or 'Annie' or 'Ashe' or 'AurelionSol' or 'Azir' or 'Bard' or 'Blitzcrank' or 'Brand' or 'Braum' or 'Caitlyn' or 'Cassiopeia' or 'Chogath' or 'Corki' or 'Darius' or 'Diana' or 'DrMundo' or 'Draven' or 'Ekko' or 'Elise' or 'Evelynn' or 'Ezreal' or 'Fiddlesticks' or 'Fiora' or 'Fizz' or 'Galio' or 'Gangplank' or 'Garen' or 'Gnar' or 'Gragas' or 'Graves' or 'Hecarim' or 'Heimerdinger' or 'Illaoi' or 'Irelia' or 'Janna' or 'JarvanIV' or 'Jax' or 'Jayce' or 'Jhin' or 'Jinx' or 'Kalista' or 'Karma' or 'Karthus' or 'Kassadin' or 'Katarina' or 'Kayle' or 'Kennen' or 'Khazix' or 'Kindred' or 'KogMaw' or 'Kled' or 'Leona' or 'Leblanc' or 'LeeSin' or 'Lissandra' or 'Lucian' or 'Lulu' or 'Lux' or 'Malphite' or 'Malzahar' or 'Maokai' or 'MasterYi' or 'MissFortune' or 'Mordekaiser' or 'Morgana' or 'Nami' or 'Nautilus' or 'Nidalee' or 'Nocturne' or 'Nunu' or 'Olaf' or 'Orianna' or 'Pantheon' or 'Poppy' or 'Quinn' or 'Rammus' or 'Reksai' or 'Renekton' or 'Rengar' or 'Riven' or 'Rumble' or 'Ryze' or 'Sejuani' or 'Shaco' or 'Shen' or 'Shyvana' or 'Sion' or 'Singed' or 'Sivir' or 'Skarner' or 'Sona' or 'Soraka' or 'Swain' or 'Syndra' or 'TahmKench' or 'Taliyah' or 'Talon' or 'Taric' or 'Teemo' or 'Thresh' or 'Tristana' or 'Trundle' or 'Tryndamere' or 'TwistedFate' or 'Twitch' or 'Udyr' or 'Urgot' or 'Varus' or 'Veigar' or 'Vayne' or 'Velkoz' or 'Vi' or 'Viktor' or 'Volibear' or 'Warwick' or 'Wukong' or 'Xerath' or 'XinZhao' or 'Yasuo' or 'Yorick' or 'Zac' or 'Zed' or 'Ziggs' or 'Zilean' or 'Zyra' and not myHero.dead then 
  	if Config.draw.AA and not myHero.dead then
  		DrawCircleLFC(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, ARGB(Config.draw.AAA[1], Config.draw.AAA[2], Config.draw.AAA[3], Config.draw.AAA[4]))
  	end
	end
  if  Config.draw and Config.draw.ead then
		for i = 1, 4 do
      if (i == 1 and Config.draw.Q) and not myHero.dead then   
        DrawCircleLFC(myHero.x, myHero.y, myHero.z, champions[myHero.charName][i], ARGB(Config.draw.QQ[1], Config.draw.QQ[2], Config.draw.QQ[3], Config.draw.QQ[4]))
      elseif (i == 2 and Config.draw.W) and not myHero.dead then
        DrawCircleLFC(myHero.x, myHero.y, myHero.z, champions[myHero.charName][i], ARGB(Config.draw.WW[1], Config.draw.WW[2], Config.draw.WW[3], Config.draw.WW[4]))
      elseif (i == 3 and Config.draw.E) and not myHero.dead then
        DrawCircleLFC(myHero.x, myHero.y, myHero.z, champions[myHero.charName][i], ARGB(Config.draw.EE[1], Config.draw.EE[2], Config.draw.EE[3], Config.draw.EE[4]))
      elseif (i == 4 and Config.draw.R) and not myHero.dead then
        DrawCircleLFC(myHero.x, myHero.y, myHero.z, champions[myHero.charName][i], ARGB(Config.draw.RR[1], Config.draw.RR[2], Config.draw.RR[3], Config.draw.RR[4]))
      end
    end
  end
end 

function DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
  local radius = radius or 300
  local quality = math.max(8,round(180/math.deg((math.asin((chordlength/(2*radius)))))))
  local quality = 2 * math.pi / quality
  local radius = radius*.92
  local points = {}
  for theta = 0, 2 * math.pi + quality, quality do
  local c = WorldToScreen(D3DXVECTOR3(x + radius * math.cos(theta), y, z - radius * math.sin(theta)))
   points[#points + 1] = D3DXVECTOR2(c.x, c.y)
  end
  DrawLines2(points, width or 1, color or 4294967295)
end

function round(num) 
  if num >= 0 then return math.floor(num+.5) else return math.ceil(num-.5) end
end

function DrawCircleLFC(x, y, z, radius, color)
  local vPos1 = Vector(x, y, z)
  local vPos2 = Vector(cameraPos.x, cameraPos.y, cameraPos.z)
  local tPos = vPos1 - (vPos1 - vPos2):normalized() * radius
  local sPos = WorldToScreen(D3DXVECTOR3(tPos.x, tPos.y, tPos.z))
  if OnScreen({ x = sPos.x, y = sPos.y }, { x = sPos.x, y = sPos.y }) then
    DrawCircleNextLvl(x, y, z, radius, 1, color, 75) 
  end
end
----------------------
--- AUTO LVL SPELL ---
----------------------
function Sequence()
	if Config.uplvl.Priority.Mod == 1 then;
		levelSequence =  {1, 2, 3, 1, 1, 4, 1, 2, 1, 2, 4, 2, 2, 3, 3, 4, 3, 3}
	elseif Config.uplvl.Priority.Mod == 2 then
		levelSequence =  {1, 3, 2, 1, 1, 4, 1, 3, 1, 3, 4, 3, 3, 2, 2, 4, 2, 2}
	elseif Config.uplvl.Priority.Mod == 3 then
		levelSequence =  {2, 1, 3, 2, 2, 4, 2, 1, 2, 1, 4, 1, 1, 3, 3, 4, 3, 3}
	elseif Config.uplvl.Priority.Mod == 4 then
		levelSequence =  {2, 3, 1, 2, 2, 4, 2, 3, 2, 3, 4, 3, 3, 1, 1, 4, 1, 1}
	elseif Config.uplvl.Priority.Mod == 5 then
		levelSequence =  {3, 1, 2, 3, 3, 4, 3, 1, 3, 1, 4, 1, 1, 2, 2, 4, 2, 2}
	elseif Config.uplvl.Priority.Mod == 6 then
		levelSequence = {3, 2, 1, 3, 3, 4, 3, 2, 3, 2, 4, 2, 2, 1, 1, 4, 1, 1}
	end
end

function Print(SayHello)
    print("<font color=\"#2E64FE\"><b>[Glaxy Utility!]</b></font> <font color=\"#FFFFFF\">" .. SayHello .. "</font>")
end

function SayHello()
	print("<font color=\"#BF00FF\">:----------------------------------------------------------------------------------:</b> ")	
  if GetGameVersion():sub(1,4) ~= "6.16" then
    Print("<font color=\"#33ccff\"> -- Script is outdated, Be careful -- </b>")
  else
    Print("<font color=\"#33ccff\">-- Script is updated -> 6.16 --</b>")
  end
	Print("<font color=\"#FFFFFF\">Ver: <font color=\"#FFFF00\">"..version.." - Working "..gameV.." </font> - Utility </font><font color=\"#FFFF00\">By:"..author.." </font>")
	Print("<font color=\"#40FF00\">Welcome & GL!</b>: <font color=\"#FEFEE2\">"..GetUser().."</font> thanks for been using this script.")
	print("<font color=\"#BF00FF\">:----------------------------------------------------------------------------------:</b> ")
end

function Human()
	return math.random(4, 5)
end

local function Type()
    return Table[myHero.charName]
end

function AutoBuy()
	if VIP_USER then
		if Config.autobuy.Doran then
			if Config.autobuy.Doran then
				DelayAction(function()
					if Type() then
						BuyItem(1055)
            Print("<font color=\"#FFA07A\"><i> -- AutoBuy Loaded for: </i>" ..myHero.charName) 
					else
						BuyItem(1056)
						Print("<font color=\"#FFA07A\"><i> -- AutoBuy Loaded for: </i>" ..myHero.charName) 
					end
					if Config.autobuy.Pots then
						DelayAction(function()
							BuyItem(2003)
						end, 1)
					end
					if Config.autobuy.Pots then
						DelayAction(function()
							if not Type() then
								BuyItem(2003)
							end
						end, 1)
						if Config.autobuy.Trinket then
							DelayAction(function()
								BuyItem(3340)
							end, 1)
						end
					end
				end, 1)
			end
		end
	end
end
---------------------------------------------------
--------------- AUTOUPDATE-------------------------
---------------------------------------------------

function AutoUpdate()
	local SCRIPT_NAME = "GlaxyUtility";
	local UPDATE_HOST = "raw.githubusercontent.com";
	local UPDATE_PATH = "/Prot0o/Scripts/master/GlaxyUtility.lua".."?rand="..math.random(1,10000);
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME;
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH;
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/GlaxyUtility.version");
	if ServerData then
		ServerVersion = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil;
		if ServerVersion then
			if tonumber(version) < ServerVersion then
				Print("New version available "..ServerVersion);
				Print(">>Updating, please don't press F9<<");
				DelayAction(function() DownloadFile(UPDATE_URL, UPDATE_FILE_PATH, function () Print("Successfully updated. ("..version.." => "..ServerVersion.."), press F9 twice to load the updated version.") end) end, 3);
			else
				CustomLoad();
			end
		else
			Print("Error while downloading version info");
		end
	end
end
