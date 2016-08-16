
--  Ḡłα✖⑂ Ü☂їʟїт⑂
----------------------
--- ChangeLog Last Version ---
----------------------

--V0.09
 
-- Little changes on design
-- Script structure (reorganized) 
-- The AutoUpdate was changed
-- Added Humanizer for LvlSpell. 1-3 sec (Menu) (On request from: lRK1K )
-- Added "Minion Skin Changer", Ally + Enemy team. (Thanks for big help: HeRoBaNd )
-- Fixed AutoSave
 
local AllSkins = { -- 

    -- A
  ["Aatrox"] = {"Classic", "Justicar", "Mecha", "Sea Hunter"},
  ["Ahri"] = {"Classic", "Dynasty", "Midnight", "Foxfire", "Popstar", "Challenger", "Academy", "Arcade"},
  ["Akali"] = {"Classic", "Stinger", "Crimson", "All-star", "Nurse", "Blood Moon", "Silverfang", "Headhunter"},
  ["Alistar"] = {"Classic", "Black", "Golden", "Matador", "Longhorn", "Unchained", "Infernal", "Sweeper", "Marauder"},
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
  ["Elise"] = {"Classic", "Death Blossom", "Victorious", "Blood Moon"},
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
  ["Renekton"] = {"Classic", "Galactic", "Outback", "Bloodfury", "Rune Wars", "Scorched Earth", "Pool Party", "Scorched Earth", "Prehistoric"},
  ["Rengar"] = {"Classic", "Headhunter", "Night Hunter", "SSW"},
  ["Riven"] = {"Classic", "Redeemed", "Crimson Elite", "Battle Bunny", "Championship", "Dragonblade", "Arcade"},
  ["Rumble"] = {"Classic", "Rumble in the Jungle", "Bilgerat", "Super Galaxy"},
  ["Ryze"] = {"Classic", "Human", "Tribal", "Uncle", "Triumphant", "Professor", "Zombie", "Dark Crystal", "Pirate", "Whitebeard"},
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
}
local champions = {
  ["Aatrox"] = {600, 1, 1000, 550},  
  ["Ahri"] = {880, 700, 975, 450},  
  ["Akali"] = {600, 700, 325, 700},  
  ["Alistar"] = {365, 650, 575, 10},  
  ["Amumu"] = {1100, 300, 350, 550},
  ["Anivia"] = {1075, 1000, 650, 625},  
  ["Annie"] = {625, 560, 0, 600},  
  ["Ashe"] = {0, 1200, 25000, 20000}, 
  ["Azir"] = {875, 450, 1100, 250},  
  ["AurelionSol"] = {1075, 600, 3000, 1500},  
  ["Bard"] = {600, 800, 900, 3400},  
  ["Blitzcrank"] = {925, 0, 0, 600},  
  ["Brand"] = {1050, 900, 625, 750},  
  ["Braum"] = {1000, 650, 150, 1250},  
  ["Caitlyn"] = {1250,800, 750, 3000,},  
  ["Cassiopeia"] = {850, 850, 700, 825,},                                                                                                                                                                                                                                                                                                                              
  ["Chogath"] = {950, 300, 0, 175,},                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
  ["Corki"] = {825, 600, 600, 1225,},                                                                                                                                                                                                                                                                                        
  -- D
  ["Darius"] = {360, 0, 535, 460,},                                                                                                                                                                                                                                                                                             
  ["Diana"] = {830, 0, 450, 825,},                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
  ["DrMundo"] = {975, 325, 0, 0,},                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
  ["Draven"] = {0, 0, 1050, 20000,},                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
  -- E
  ["Ekko"] = {1075, 1600, 325, 0,},                                                                                                                                                                                                                                                                                                                                                                                                   
  ["Elise"] = {625, 950, 1075, 0,},                                                                                                                                                                                                                                                                                              
  ["Evelynn"] = {500, 0, 225, 650,},                                                                                                                                                                                                                                                                                                                                                                                                    
  ["Ezreal"] = {1150, 1000, 475, 20000,},                                                                                                                                                                                                                                                                                   
  -- F
  ["FiddleSticks"] = {575, 575, 750, 800,},                                                                                                                                                                                                                                     
  ["Fiora"] = {400, 500, 0, 500,},                                                                                                                                                                                                                                         
  ["Fizz"] = {550, 0, 400, 1275,},                                                                                                                                                                                                                                                                                                                                                        
  -- G
  ["Galio"] = {940, 800, 1180, 560,},                                                                                                                                                                                                                                                                                                                                                       
  ["Gangplank"] = {625, 0, 1000, 30000,},                                                                                                                                                                                                                                                                               
  ["Garen"] = {0, 0, 325, 400,},                                                                                                                                                                                                                                                                                                                                                       
  ["Gnar"] = {1100, 0, 475, 800,},                                                                                                                                                                                                                                                                                                                                                        
  ["Gragas"] = {850, 0, 600, 1150,},                                                                                                                                                                                                                                                                                                                                                      
  ["Graves"] = {925, 950, 425, 1000,},                                                                                                                                                                                                                                                                                                                                                      
  -- H
  ["Hecarim"] = {350, 525, 0, 1000,},                                                                                                                                                                                                                                                                  
  ["Heimerdinger"] = {350, 1325, 970, 0,},                                                                                                                                                                                                                                                                            
  -- I
  ["Illaoi"] = {850,0,900,500,},                                                                                                                                                                                                                                                                                                                            
  ["Irelia"] = {650,0,325,1000,},                                                                                                                                                                                                                                                                                                                          
  -- J
  ["Janna"] = {1700,600,800,725,},                                                                                                                                                                                                                                                                                                                           
  ["JarvanIV"] = {770, 525, 800, 650,},                                                                                                                                                                                                                
  ["Jax"] = {700, 0, 0, 0,},                                                                                                                                                                                                                                                                                                                         
  ["Jayce"] = {600, 285, 240, 0,},                                                                                                                                                                                                               
  ["Jinx"] = {0, 1450, 900, 25000,},                                                                                                                                                                                                                                                                                                             
  -- K                                                                                                                                                                                                                        
  ["Kalista"] = {1150, 5000, 1000, 0,},                                                                                                                                                                                                               
  ["Karma"] = {950, 675, 800, 0,},                                                                                                                                                                                                              
  ["Karthus"] = {875, 1000, 550, 0,},                                                                                                                                                                                                                                                                                                                
  ["Kassadin"] = {650, 0, 400, 500,},                                                                                                                                                                                                               
  ["Katarina"] = {675, 400, 700, 550,},                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
  ["Kayle"] = {650, 900, 0, 900,},                                                                                                                                                                                                             
  ["Kennen"] = {950, 900, 0, 550,},                                                                                                                                                                                                                                                                                                                          
  ["Khazix"] = {326, 1000, 600, 0,},                                                                                                                                                                                                                                                                                                                
  ["Kindred"] = {340, 0, 500, 500,},                                                                                                                                                                                                                                                                                                                        
  ["KogMaw"] = {1175, 0, 1200, 1800,},                                                                                                                                                                                                                                                                                                              
  ["Kled"]  = {800, 0, 550, 5000},                                                                                                                                                                                                                                                                 
  -- L                                                                                                                                                                         
  ["Leblanc"] = {700, 600, 925, 0,},                                                                                                                                                                                                                                                                           
  ["LeeSin"] = {1000, 700, 425, 375,},                                                                                                                                                                                                                                                                           
  ["Leona"] = {0, 450, 875, 1200,},                                                                                                                                                                                                                                                                            
  ["Lissandra"] = {725, 450, 1050, 550,},                                                                                                                                                                                                                                                                          
  ["Lucian"] = {500, 1000, 445, 1400,},                                                                                                                                                                                                                                                                            
  ["Lulu"] = {925, 650, 650, 900,},                                                                                                                                                                                                                                                                            
  ["Lux"] = {1175, 1075, 1100, 3340,},                                                                                                                                                                                                                                                                            
  -- M
  ["Malphite"] = {625, 0, 400, 1000,},                                                                                                                                                                                                                                                                                               
  ["Malzahar"] = {900, 800, 650, 700,},                                                                                                                                                                                                                                                                                               
  ["Maokai"] = {600, 525, 1100, 500,},                                                                                                                                                                                                                                                                                               
  ["MasterYi"] = {600, 0, 0, 0,},                                                                                                                                                                                                                                                                                               
  ["MissFortune"] = {650, 0, 1000, 400,},                                                                                                                                                                                                                                                                                               
  ["Mordekaiser"] = {0, 1000, 700, 650,},                                                                                                                                                                                                                                                                                               
  ["Morgana"] = {1175, 900, 750, 625,},                                                                                                                                                                                                                                                                                               
  -- N
  ["Nami"] = {875, 725, 800, 2750,},                                                                                                                                                                                                                                                                    
  ["Nasus"] = {0, 600, 650, 0,},                                                                                                                                                                                                                                                                    
  ["Nautilus"] = {950, 0, 600, 825,},                                                                                                                                                                                                                                                                    
  ["Nidalee"] = {1500, 900, 600, 0,},                                                                                                                                                                                                                                                                    
  ["Nocturne"] = {1125, 0, 425, 2500,},                                                                                                                                                                                                                                                                    
  ["Nunu"] = {125, 700, 550, 650,},                                                                                                                                                                                                                                                                    
  -- O
  ["Olaf"] = {1000, 0, 325, 0,},                                                                                                                                                                                                                                                                    
  ["Orianna"] = {815, 0, 1095, 0,},                                                                                                                                                                                                                                                                    
  -- P
  ["Pantheon"] = {600, 600, 400, 5500,},                                                                                                                                                                                                                                                                    
  ["Poppy"] = {430, 400, 475, 500,},                                                                                                                                                                                                                                                                    
  -- Q                                                                                                                                            
  ["Quinn"] = {1025, 2100, 675, 0,},                                                                                                                                                                                                                                                
  -- R
  ["Rammus"] = {0, 0, 325, 0,},                                                                                                                                                                                                                                                
  ["Reksai"] = {325, 1650, 250, 0,},                                                                                                                                                                                                                                                 
  ["Renekton"] = {325, 0, 450, 0,},                                                                                                                                                                                                                                                
  ["Rengar"] = {0, 500, 1000, 2000,},                                                                                                                                                                                                                                                
  ["Riven"] = {275, 260, 250, 0,},                                                                                                                                                                                                                                                
  ["Rumble"] = {600, 0, 850, 1750,},                                                                                                                                                                                                                                                
  ["Ryze"] = {1000, 615, 615, 1500},                                                                                                                                                                                                                                                
  -- S
  ["Sejuani"] = {650, 350, 1000, 1175,},                                                                                                                                                                                                                       
  ["Shaco"] = {400, 425, 625, 0,},                                                                                                                                                                                                                       
  ["Shen"] = {475, 0, 600, 0,},                                                                                                                                                                                                                       
  ["Shyvana"] = {0, 325, 925, 1000,},                                                                                                                                                                                                                       
  ["Singed"] = {0, 1000, 125, 0,},                                                                                                                                                                                                                       
  ["Sion"] = {10000, 0, 800, 7500,},                                                                                                                                                                                                                       
  ["Sivir"] = {1200, 0, 0, 1000,},                                                                                                                                                                                                                       
  ["Skarner"] = {350, 0, 980, 350,},                                                                                                                                                                                                                       
  ["Sona"] = {825, 1000, 360, 900,},                                                                                                                                                                                                                       
  ["Soraka"] = {810, 550, 925, 0,},                                                                                                                                                                                                                       
  ["Swain"] = {625, 900, 625, 0,},                                                                                                                                                                                                                       
  ["Syndra"] = {800, 925, 650, 675,},                                                                                                                                                                                                                       
  -- T
  ["TahmKench"] = {800, 250, 0, 4500,},                                                                                                                                                                                                                                                                                           
  ["Taliyah"] = {1000, 900, 800, 3000},                                                                                                                                                                                                                                                                                           
  ["Talon"] = {300, 650, 700, 650},                                                                                                                                                                                                                                                                                           
  ["Taric"] = {750, 400, 625, 400,},                                                                                                                                                                                                                                                                                           
  ["Teemo"] = {680, 0, 0, 300,},                                                                                                                                                                                                                                                                                           
  ["Thresh"] = {1075, 950, 800, 450,},                                                                                                                                                                                                                                                                                           
  ["Tristana"] = {0, 900, 550, 550,},                                                                                                                                                                                                                                                                                           
  ["Trundle"] = {0, 750, 1000, 650,},                                                                                                                                                                                                                                                                                           
  ["Tryndamere"] = {0, 850, 650, 0,},                                                                                                                                                                                                                                                                                           
  ["TwistedFate"] = {10000, 0, 0, 5500,},                                                                                                                                                                                                                                                                                           
  ["Twitch"] = {0, 950, 1200, 0,},                                                                                                                                                                                                                                                                                           
  -- U
  ["Udyr"] = {0, 0, 0, 325,},                                                                                                                                                                                                                                                                                              
  ["Urgot"] = {1000, 0, 900, 550,},                                                                                                                                                                                                                                                                                              
  -- V
  ["Varus"] = {925, 0, 925, 1100,},                                                                                                                                                                                                                                                                                              
  ["Vayne"] = {300, 0, 710, 0,},                                                                                                                                                                                                                                                                                                             
  ["Veigar"] = {900, 900, 725, 650,},                                                                                                                                                                                                                                                                                              
  ["Velkoz"] = {1050, 1050, 850, 1575,},                                                                                                                                                                                                                                                                                              
  ["Vi"] = {250, 0, 0, 800,},                                                                                                                                                                                                                                                                                              
  ["Viktor"] = {600, 700, 525, 700,},                                                                                                                                                                                                                                                                                              
  ["Vladimir"] = {600, 350, 610, 625,},                                                                                                                                                                                                                                                                                              
  ["Volibear"] = {0, 350, 425, 500,},                                                                                                                                                                                                                                                                                              
  -- W
  ["Warwick"] = {400, 1250, 1600, 700,},                                                                                                                                                                                                                                                                                              
  ["MonkeyKing"] = {0, 0, 650, 315,},                                                                                                                                                                                                                                                                                              
  -- X
  ["Xerath"] = {750, 1100, 1050, 3200,},                                                                                                                                                                                                              
  ["XinZhao"] = {0, 0, 650, 500,},                                                                                                                                                                                                              
  -- Y
  ["Yasuo"] = {475, 400, 475, 1200,},                                                                                                                                                                                                              
  ["Yorick"] = {0, 600, 550, 850,},                                                                                                                                                                                                              
  -- Z
  ["Zac"] = {550, 350, 300, 300,},                                                                                                                                                                                                                        
  ["Zed"] = {900, 650, 290, 625,},                                                                                                                                                                                                                        
  ["Ziggs"] = {850, 1000, 900, 5300,},                                                                                                                                                                                                                        
  ["Zilean"] = {900, 0, 700, 900,},                                                                                                                                                                                                                        
  ["Zyra"] = {800, 850, 1100, 700,},                  
    };
local Table = {[""] = true, ["Yasuo"] = true,["Kled"] = true, ["Wukong"] = true, ["Urgot"] = true, ["Varus"] = true, ["Talon"] = true, ["Vayne"] = true, ["Trundle"] = true, ["Twitch"] = true, ["Tristana"] = true, ["Shyvana"] = true, ["Riven"] = true, ["Rengar"] = true, ["Renekton"] = true, ["Quinn"] = true, ["Pantheon"] = true, ["Lucian"] = true, ["LeeSin"] = true, ["KogMaw"] = true, ["Jinx"] = true, ["Jhin"] = true, ["Jayce"] = true, ["Jax"] = true, ["Irelia"] = true, ["Graves"] = true, ["Gnar"] = true, ["Gangplank"] = true, ["Fiora"] = true, ["Ezreal"] = true, ["Draven"] = true, ["Aatrox"] = true, ["Ashe"] = true, ["Corki"] = true, ["Kalista"] = true, ["Caitlyn"] = true, ["Zyra"] = false, ["Xerath"] = false, ["Ziggs"] = false, ["Zilean"] = false, ["Viktor"] = false, ["VelKoz"] = false, ["Veigar"] = false, ["Taliyah"] = false, ["TwistedFate"] = false, ["Syndra"] = false, ["Swain"] = false, ["Ryze"] = false, ["Orianna"] = false, ["Morgana"] = false, ["Malzahar"] = false, ["Lux"] = false, ["Lulu"] = false, ["Kayle"] = false, ["LeBlanc"] = false, ["Lissandra"] = false, ["Kassadin"] = false, ["Karthus"] = false, ["Karma"] = false, ["Heimerdinger"] = false, ["Galio"] = false, ["Fizz"] = false, ["Fiddlesticks"] = false, ["Ekko"] = false, ["Diana"] = false, ["Cassiopeia"] = false, ["Brand"] = false, ["Ahri"] = false, ["Annie"] = false, ["Azir"] = false, ["AurelionSol"] = false, ["Anivia"] = false};
local SkinList100 = {"Blue Classic","Red Pool Party","Blue Pool Party","Red PROJECT","Blue PROJECT","Red Snow","Blue Snow","Red DRAVEN","Blue DRAVEN","Red Classic"}
local SkinList200 = {"Red Classic","Blue Pool Party","Red Pool Party","Blue PROJECT","Red PROJECT","Blue Snow","Red Snow","Blue DRAVEN","Red DRAVEN","Blue Classic"}
local version = "0.09";
local gameV = "6.16";
local scriptname = "Glaxy Utility";
local author ="Glaxy";
local contact = "dimitri.psarev";
----------------------
-- http://bol-tools.com/ tracker
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("xBNkwp2ydh4kMOo0")

function OnLoad()  
  AutoUpdater()
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

function AutoUpdater()
    local ToUpdate = {}
    ToUpdate.Version = 0.8
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Prot0o/Scripts/master/GlaxyUtility.version" ---CHANGE THIS
    ToUpdate.ScriptPath =  "/Prot0o/Scripts/master/GlaxyUtility.lua" ---CHANGE this
    ToUpdate.SavePath = SCRIPT_PATH.."/GlaxyUtility.lua" ---CHANGE THIS
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) print("<font color=\"#2E64FE\"><b>[Glaxy Utility!]</b></font><font color=\"#FFCCE5\">: "..NewVersion.."</font></b>") end
    ToUpdate.CallbackNoUpdate = function(OldVersion) print("<font color=\"#2E64FE\"><b>[Glaxy Utility!]</b></font><font color=\"#FFCCE5\">: Your script is already upgraded to the latest version</font></b>") end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<b><font color=\"#6A56EB\">[</font><font color=\"#F7CB72\">My HeRo - </font> <font color=\"#F7CB72\">Vayne</font><font color=\"#c0392b\"></font><font color=\"#27ae60\"></font><font color=\"#6A56EB\">]</font><font color=\"#FFCCE5\">: New Version Found ("..NewVersion.."). Please wait until it's Downloaded!</font></b>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color=\"#2E64FE\"><b>[Glaxy Utility!]</b></font> <font color=\"#FFCCE5\">: Error while Downloading! Please try again!</font></b>") end
    ScriptUpdate(ToUpdate.Version, ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate, ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion, ToUpdate.CallbackError)
end

class "ScriptUpdate"

function ScriptUpdate:__init(LocalVersion, UseHttps, Host, VersionPath, ScriptPath, SavePath, CallbackUpdate, CallbackNoUpdate, CallbackNewVersion, CallbackError)
    self.LocalVersion = LocalVersion
    self.Host = Host
    self.VersionPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..VersionPath)..'&rand='..math.random(99999999)
    self.ScriptPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..ScriptPath)..'&rand='..math.random(99999999)
    self.SavePath = SavePath
    self.CallbackUpdate = CallbackUpdate
    self.CallbackNoUpdate = CallbackNoUpdate
    self.CallbackNewVersion = CallbackNewVersion
    self.CallbackError = CallbackError
    --AddDrawCallback(function() self:OnDraw() end)
    self:CreateSocket(self.VersionPath)
    self.DownloadStatus = 'Connect to Server for VersionInfo'
    AddTickCallback(function() self:GetOnlineVersion() end)
end

function ScriptUpdate:print(str)
    print('<font color="#FFFFFF">'..os.clock()..': '..str)
end

function ScriptUpdate:OnDraw()
    if self.DownloadStatus ~= 'Downloading Script (100%)' and self.DownloadStatus ~= 'Downloading VersionInfo (100%)'then
        DrawText('Download Status: '..(self.DownloadStatus or 'Unknown'),50,10,50,ARGB(0xFF,0xFF,0xFF,0xFF))
    end
end

function ScriptUpdate:CreateSocket(url)
    if not self.LuaSocket then
        self.LuaSocket = require("socket")
    else
        self.Socket:close()
        self.Socket = nil
        self.Size = nil
        self.RecvStarted = false
    end
    self.LuaSocket = require("socket")
    self.Socket = self.LuaSocket.tcp()
    self.Socket:settimeout(0, 'b')
    self.Socket:settimeout(99999999, 't')
    self.Socket:connect('sx-bol.eu', 80)
    self.Url = url
    self.Started = false
    self.LastPrint = ""
    self.File = ""
end

function ScriptUpdate:Base64Encode(data)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

function ScriptUpdate:GetOnlineVersion()
    if self.GotScriptVersion then return end

    self.Receive, self.Status, self.Snipped = self.Socket:receive(1024)
    if self.Status == 'timeout' and not self.Started then
        self.Started = true
        self.Socket:send("GET "..self.Url.." HTTP/1.1\r\nHost: sx-bol.eu\r\n\r\n")
    end
    if (self.Receive or (#self.Snipped > 0)) and not self.RecvStarted then
        self.RecvStarted = true
        self.DownloadStatus = 'Downloading VersionInfo (0%)'
    end

    self.File = self.File .. (self.Receive or self.Snipped)
    if self.File:find('</s'..'ize>') then
        if not self.Size then
            self.Size = tonumber(self.File:sub(self.File:find('<si'..'ze>')+6,self.File:find('</si'..'ze>')-1))
        end
        if self.File:find('<scr'..'ipt>') then
            local _,ScriptFind = self.File:find('<scr'..'ipt>')
            local ScriptEnd = self.File:find('</scr'..'ipt>')
            if ScriptEnd then ScriptEnd = ScriptEnd - 1 end
            local DownloadedSize = self.File:sub(ScriptFind+1,ScriptEnd or -1):len()
            self.DownloadStatus = 'Downloading VersionInfo ('..math.round(100/self.Size*DownloadedSize,2)..'%)'
        end
    end
    if self.File:find('</scr'..'ipt>') then
        self.DownloadStatus = 'Downloading VersionInfo (100%)'
        local a,b = self.File:find('\r\n\r\n')
        self.File = self.File:sub(a,-1)
        self.NewFile = ''
        for line,content in ipairs(self.File:split('\n')) do
            if content:len() > 5 then
                self.NewFile = self.NewFile .. content
            end
        end
        local HeaderEnd, ContentStart = self.File:find('<scr'..'ipt>')
        local ContentEnd, _ = self.File:find('</sc'..'ript>')
        if not ContentStart or not ContentEnd then
            if self.CallbackError and type(self.CallbackError) == 'function' then
                self.CallbackError()
            end
        else
            self.OnlineVersion = (Base64Decode(self.File:sub(ContentStart + 1,ContentEnd-1)))
            self.OnlineVersion = tonumber(self.OnlineVersion)
            if self.OnlineVersion > self.LocalVersion then
                if self.CallbackNewVersion and type(self.CallbackNewVersion) == 'function' then
                    self.CallbackNewVersion(self.OnlineVersion,self.LocalVersion)
                end
                self:CreateSocket(self.ScriptPath)
                self.DownloadStatus = 'Connect to Server for ScriptDownload'
                AddTickCallback(function() self:DownloadUpdate() end)
            else
                if self.CallbackNoUpdate and type(self.CallbackNoUpdate) == 'function' then
                    self.CallbackNoUpdate(self.LocalVersion)
                end
            end
        end
        self.GotScriptVersion = true
    end
end

function ScriptUpdate:DownloadUpdate()
    if self.GotScriptUpdate then return end
    self.Receive, self.Status, self.Snipped = self.Socket:receive(1024)
    if self.Status == 'timeout' and not self.Started then
        self.Started = true
        self.Socket:send("GET "..self.Url.." HTTP/1.1\r\nHost: sx-bol.eu\r\n\r\n")
    end
    if (self.Receive or (#self.Snipped > 0)) and not self.RecvStarted then
        self.RecvStarted = true
        self.DownloadStatus = 'Downloading Script (0%)'
    end

    self.File = self.File .. (self.Receive or self.Snipped)
    if self.File:find('</si'..'ze>') then
        if not self.Size then
            self.Size = tonumber(self.File:sub(self.File:find('<si'..'ze>')+6,self.File:find('</si'..'ze>')-1))
        end
        if self.File:find('<scr'..'ipt>') then
            local _,ScriptFind = self.File:find('<scr'..'ipt>')
            local ScriptEnd = self.File:find('</scr'..'ipt>')
            if ScriptEnd then ScriptEnd = ScriptEnd - 1 end
            local DownloadedSize = self.File:sub(ScriptFind+1,ScriptEnd or -1):len()
            self.DownloadStatus = 'Downloading Script ('..math.round(100/self.Size*DownloadedSize,2)..'%)'
        end
    end
    if self.File:find('</scr'..'ipt>') then
        self.DownloadStatus = 'Downloading Script (100%)'
        local a,b = self.File:find('\r\n\r\n')
        self.File = self.File:sub(a,-1)
        self.NewFile = ''
        for line,content in ipairs(self.File:split('\n')) do
            if content:len() > 5 then
                self.NewFile = self.NewFile .. content
            end
        end
        local HeaderEnd, ContentStart = self.NewFile:find('<sc'..'ript>')
        local ContentEnd, _ = self.NewFile:find('</scr'..'ipt>')
        if not ContentStart or not ContentEnd then
            if self.CallbackError and type(self.CallbackError) == 'function' then
                self.CallbackError()
            end
        else
            local newf = self.NewFile:sub(ContentStart+1,ContentEnd-1)
            local newf = newf:gsub('\r','')
            if newf:len() ~= self.Size then
                if self.CallbackError and type(self.CallbackError) == 'function' then
                    self.CallbackError()
                end
                return
            end
            local newf = Base64Decode(newf)
            if type(load(newf)) ~= 'function' then
                if self.CallbackError and type(self.CallbackError) == 'function' then
                    self.CallbackError()
                end
            else
                local f = io.open(self.SavePath,"w+b")
                f:write(newf)
                f:close()
                if self.CallbackUpdate and type(self.CallbackUpdate) == 'function' then
                    self.CallbackUpdate(self.OnlineVersion,self.LocalVersion)
                end
            end
        end
        self.GotScriptUpdate = true
    end
end
