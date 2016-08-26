local version = 0.01
local gameV = "6.17";
local scriptname = "Glaxy Motivator";
local author ="Glaxy";
local contact = "dimitri.psarev";


function OnLoad()
		GMMenu()
	AutoUpdate()

 Print("¡Thanks for use " ..scriptname.."!. Regards, Glaxy!")
 Print("<font color=\"#FFFFFF\">Ver: <font color=\"#FFFF00\">"..version.." </font> Loaded. Have fun!")
   end
function GMMenu()

	GM = scriptConfig("Glaxy Motivator", "GlaxyM")

	GM:addParam("info1", "", SCRIPT_PARAM_INFO, "")
    GM:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    GM:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    GM:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
end
function OnAnimation(unit, animation)
    if unit.isMe and unit.type == myHero.type and animation == "Death" then
               GlaxyMotivationPrint(0, v)
   end
end

 





---------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
---------------------------------------------------------------------------






































































function Print(v)
    print("<font color=\"#A5DF00\"><b>[Glaxy Motivator!]</b></font> <font color=\"#FFFFFF\">" .. v .. "</font>")
end

function GlaxyMotivationPrint(x)
	local v = math.random(1, 50)
			if v == 0 then
		DelayAction(function() Print("¡Thanks for use " ..scriptname.."!, Regards, Glaxy!") end, x)
			elseif v == 1 then
		DelayAction(function() Print("¿You are dead?, Dont worry, ¡next time you will destroy him!") end, x)
			elseif v == 2 then
		DelayAction(function() Print("¿Dead?¡Stop cry and destroy him next time!") end, x)
			elseif v == 3 then
		DelayAction(function() Print("¿You are Dead ?, sometimes happens ... Come on!") end, x)
			elseif v == 4 then
		DelayAction(function() Print("¿You are Dead again?, Remember: always need get up again and fight!") end, x)
			elseif v == 5 then
		DelayAction(function() Print("Remember, ¡you are the best!, ¡you will kill him next time!") end, x)
			elseif v == 6 then
		DelayAction(function() Print("¿Dead?:(, this noob just have lucky!") end, x)
			elseif v == 7 then
		DelayAction(function() Print("Remember follow ur team, and then u got the win!") end, x)
			elseif v == 8 then
		DelayAction(function() Print("Go and fuck them right in tha ****") end, x)
			elseif v == 9 then
		DelayAction(function() Print("Maybe u need change some item in built") end, x)
			elseif v == 10 then
		DelayAction(function() Print("Remeber pick SOME AD / AP Defense in LateGame") end, x)
			elseif v == 11 then
		DelayAction(function() Print("Remember -> think first -> after press SPACE.") end, x)
			elseif v == 12 then
		DelayAction(function() Print("Play as a team, you have more chances for win the game.") end, x)
			elseif v == 13 then
		DelayAction(function() Print("Scripts not give you the win, ur brain + hands yes.") end, x)
			elseif v == 14 then
		DelayAction(function() Print("The cycle of life and death continues. We will live. They will die. - Nasus") end, x)
			elseif v == 15 then
		DelayAction(function() Print("Beware a man with nothing to lose - Varus") end, x)
			elseif v == 16 then
		DelayAction(function() Print("Tradition is the corpse of wisdom - Zed") end, x)
			elseif v == 17 then
		DelayAction(function() Print("Sometimes, Icy heart just need warm smile - Braum") end, x)
			elseif v == 18 then
		DelayAction(function() Print("Today we fight each other. Tomorrow, we may fight together. - Braum") end, x)
			elseif v == 19 then
		DelayAction(function() Print("Drown in pussy - Gragas") end, x)
			elseif v == 20 then
		DelayAction(function() Print("Force is meaningless without skill - Lee Sin") end, x)
			elseif v == 21 then
		DelayAction(function() Print("Comfort breeds weakness - Rengar.") end, x)
			elseif v == 22 then
		DelayAction(function() Print("So many noobs... will matchmaking ever find true balance? - Akali") end, x)
			elseif v == 23 then
		DelayAction(function() Print("Easy partner - Graves") end, x)
			elseif v == 24 then
		DelayAction(function() Print("Anger is motivation without reason. - Master Yi") end, x)
			elseif v == 25 then
		DelayAction(function() Print("Stay positive! - Lux") end, x)
			elseif v == 26 then
		DelayAction(function() Print("Make it count. - Ashe") end, x)
			elseif v == 27 then
		DelayAction(function() Print("When you fall, you get right back up. - Orianna") end, x)
			elseif v == 28 then
		DelayAction(function() Print("Gotta' die sometime! - Jinx") end, x)
			elseif v == 29 then
		DelayAction(function() Print("Hesitation is the seed of defeat. -Akali.") end, x)
			elseif v == 30 then
		DelayAction(function() Print("Try be more defensive maybe.") end, x)
			elseif v == 31 then
		DelayAction(function() Print("Game is done, dont worry.") end, x)
			elseif v == 32 then
		DelayAction(function() Print("Some times you cant carry game alone. But try do your best!") end, x)
			elseif v == 33 then
		DelayAction(function() Print("¿Dead again?, Remember Poro´s love you!") end, x)
			elseif v == 34 then
		DelayAction(function() Print("When shit happens, turn it into fertilizer. - Kute Blackson") end, x)
			elseif v == 35 then
		DelayAction(function() Print("CALM, is a super POWER. - Anonymous") end, x)
			elseif v == 36 then
		DelayAction(function() Print("Friends are like ^potatoes^... if you eat them, they die. - Sora") end, x)
			elseif v == 37 then
		DelayAction(function() Print("Devourer not stacked yet. (Cry) - Udyr") end, x)
			elseif v == 38 then
		DelayAction(function() Print("Sapphire, for virginity - Taric") end, x)
			elseif v == 39 then
		DelayAction(function() Print("Die with fear in your heart, or win with blood on your hands. - Aatrox") end, x)
			elseif v == 40 then
		DelayAction(function() Print("............ - Sona") end, x)
			elseif v == 41 then
		DelayAction(function() Print("OK - Rammus") end, x)
			elseif v == 42 then
		DelayAction(function() Print("You only need to click once, fool! - Mordekaiser") end, x)
			elseif v == 43 then
		DelayAction(function() Print("You can't milk those. - Alistar") end, x)
			elseif v == 44 then
		DelayAction(function() Print("Sometimes you're the catch, sometimes you're the bait. - Nami") end, x)
			elseif v == 45 then
		DelayAction(function() Print("If we approach strategically from the flank... ah, forget it. Let's just morph and eat them. - Swain") end, x)
			elseif v == 46 then
		DelayAction(function() Print("We can do this! - Lux") end, x)
			elseif v == 47 then
		DelayAction(function() Print("Fuck them by DEMACIA - Garen") end, x)
			elseif v == 48 then
		DelayAction(function() Print("Remember: Attitude is the most important. - Glaxy") end, x)
			elseif v == 49 then
		DelayAction(function() Print("I am in my period, dont disturb me. - Vladimir") end, x)
			elseif v == 50 then
		DelayAction(function() Print("Check ur built, maybe you need change some item for win the game.") end, x)

	end
end

---------------------------------------------------
--------------- AUTOUPDATE-------------------------
---------------------------------------------------
function AutoUpdate()
	local SCRIPT_NAME = "GlaxyMotivator";
	local UPDATE_HOST = "raw.githubusercontent.com";
	local UPDATE_PATH = "/Prot0o/Scripts/master/GlaxyMotivator.lua".."?rand="..math.random(1,10000);
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME;
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH;
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/GlaxyMotivator.version");
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

