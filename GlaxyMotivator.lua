local P1 = true
local P2 = true
local P3 = true
local EN = true
local POR = true
local ES = true
local ALE = true
local POL = true
local FR = true
local CH = true
local TUR = true
local KOR = true
local version = 0.032
local gameV = "6.17";
local scriptname = "Glaxy Motivator";
local author ="Glaxy";
local contact = "dimitri.psarev";

assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("ouchiffud20AITSt")
function OnLoad()
		GMMenu()
		CheckSprites()
		AutoUpdate()
 Print("¡Thanks for use " ..scriptname.."!. Regards, Glaxy!")
 Print("<font color=\"#FFFFFF\">Ver: <font color=\"#FFFF00\">"..version.." </font> Loaded. Have fun!")
   end


		P1Sprite = createSprite("\\GlaxyMT\\1.png") 
		P2Sprite = createSprite("\\GlaxyMT\\2.png") 
		P3Sprite = createSprite("\\GlaxyMT\\3.png")
		ENSprite = createSprite("\\GlaxyMT\\4.png")
		PORSprite = createSprite("\\GlaxyMT\\5.png")
		ESSprite = createSprite("\\GlaxyMT\\6.png")
		ALESprite = createSprite("\\GlaxyMT\\7.png")
		POLSprite = createSprite("\\GlaxyMT\\8.png")
		FRSprite = createSprite("\\GlaxyMT\\9.png")
		CHSprite = createSprite("\\GlaxyMT\\10.png")
		TURSprite = createSprite("\\GlaxyMT\\11.png")
		KORSprite = createSprite("\\GlaxyMT\\12.png")

			EN_list = {{archivo = "4.png", name = "English", posicion_x = 1213, posicion_y = 200, sizeX = 284, sizeY = 110, EN = function() end},}	
			POR_list = {{archivo = "5.png", name = "Portuguese", posicion_x = 500, posicion_y = 310, sizeX = 290, sizeY = 160, POR = function() end},}	
			ES_list = {{archivo = "6.png", name = "Spanish", posicion_x = 790, posicion_y = 310, sizeX = 213, sizeY = 160, ES = function() end},}	
			ALE_list = {{archivo = "7.png", name = "German", posicion_x = 1000, posicion_y = 310, sizeX = 213, sizeY = 160, ALE = function() end},}	
			POL_list = {{archivo = "8.png", name = "Polish", posicion_x = 1213, posicion_y = 310, sizeX = 284, sizeY = 160, POL = function() end},}	
			FR_list = {{archivo = "9.png", name = "French", posicion_x = 500, posicion_y = 465, sizeX = 290, sizeY = 230, FR = function() end},}	
			CH_list = {{archivo = "10.png", name = "Chinese", posicion_x = 790, posicion_y = 465, sizeX = 213, sizeY = 230, CH = function() end},}	
			TUR_list = {{archivo = "11.png", name = "Turkish", posicion_x = 1000, posicion_y = 465, sizeX = 213, sizeY = 230, TUR = function() end},}	
			KOR_list = {{archivo = "12.png", name = "Korean", posicion_x = 1213, posicion_y = 465, sizeX = 284, sizeY = 230, KOR = function() end},}		

	
function Print(v)
    print("<font color=\"#A5DF00\"><b>[Glaxy Motivator!]</b></font> <font color=\"#FFFFFF\">" .. v .. "</font>")
end
function CheckSprites()

		local Path = SPRITE_PATH.."\\GlaxyMT\\"
		local Url = "http://dmitrypsarev.com\\GlaxyMT\\" 
		local spriteP1 = "1.png"
		local spriteP2 = "2.png"
		local spriteP3 = "3.png"
		local spriteEN = "4.png"
		local spritePOR = "5.png"
		local spriteES = "6.png"
		local spriteALE = "7.png"
		local spritePOL = "8.png"
		local spriteFR = "9.png"
		local spriteCH = "10.png"
		local spriteTUR = "11.png"
		local spriteKOR = "12.png"
		if not FileExist(Path..spriteP1) or not
			FileExist(Path..spriteP2) or not
			FileExist(Path..spriteP3) or not
			FileExist(Path..spriteEN) or not
			FileExist(Path..spritePOR) or not
			FileExist(Path..spriteES) or not
			FileExist(Path..spriteALE) or not
			FileExist(Path..spritePOL) or not
			FileExist(Path..spriteFR) or not
			FileExist(Path..spriteCH) or not
			FileExist(Path..spriteTUR) or not
	  		FileExist(Path..spriteKOR) then

	  		 Print("Downloading sprites, don't reload the script.")
		    CreateDirectory(Path)
		    DownloadFile(Url..spriteP1, Path..spriteP1, function() end)
		    DownloadFile(Url..spriteP2, Path..spriteP2, function() end)
		    DownloadFile(Url..spriteP3, Path..spriteP3, function() end)
		    DownloadFile(Url..spriteEN, Path..spriteEN, function() end)
		    DownloadFile(Url..spritePOR, Path..spritePOR, function() end)
		    DownloadFile(Url..spriteES, Path..spriteES, function() end)
		    DownloadFile(Url..spriteALE, Path..spriteALE, function() end)
		    DownloadFile(Url..spritePOL, Path..spritePOL, function() end)
		    DownloadFile(Url..spriteFR, Path..spriteFR, function() end)
		    DownloadFile(Url..spriteCH, Path..spriteCH, function() end)
		    DownloadFile(Url..spriteTUR, Path..spriteTUR, function() end)
		    DownloadFile(Url..spriteKOR, Path..spriteKOR, function() Print("Download was successful, please reload the script by pressing F9 twice.") end)
		    return
		else
		P1Sprite = createSprite("\\GlaxyMT\\1.png") 
		P2Sprite = createSprite("\\GlaxyMT\\2.png") 
		P3Sprite = createSprite("\\GlaxyMT\\3.png")
		ENSprite = createSprite("\\GlaxyMT\\4.png")
		PORSprite = createSprite("\\GlaxyMT\\5.png")
		ESSprite = createSprite("\\GlaxyMT\\6.png")
		ALESprite = createSprite("\\GlaxyMT\\7.png")
		POLSprite = createSprite("\\GlaxyMT\\8.png")
		FRSprite = createSprite("\\GlaxyMT\\9.png")
		CHSprite = createSprite("\\GlaxyMT\\10.png")
		TURSprite = createSprite("\\GlaxyMT\\11.png")
		KORSprite = createSprite("\\GlaxyMT\\12.png")

		end
end
function OnWndMsg(msg, key)
		    if key == 1 then
		        for n, sprite in pairs(EN_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(EN())
		               	DelayAction(function() Print("<font color=\"#FFA07A\"><i> You select "..sprite.name..". LOADED. </i>") end, 0.5) 
	                    EN_list = {}
	                    POR_list = {}
	                    ES_list = {}
	                    ALE_list = {}
	                    POL_list = {}
	                    FR_list = {}
	                    CH_list = {}
	                    TUR_list = {}
	                    KOR_list = {}

	                    P1 = false
	                    P2 = false
	                    P3 = false
	                    EN = false
	                    POR = false
	                    ES = false
	                    ALE = false
	                    POL = false
	                    FR = false
	                    CH = false
	                    TUR = false
	                    KOR = false


	                end
	            end
	        end
		    if key == 1 then
		        for q, sprite in pairs(POR_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(POR())
	                end
	            end
	        end
		    if key == 1 then
		        for h, sprite in pairs(ES_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(ES())
	                end
	            end
	        end
		    if key == 1 then
		        for e, sprite in pairs(ALE_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(ALE())
	                end
	            end
	        end
		    if key == 1 then
		        for r, sprite in pairs(POL_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(POL())
	                end
	            end
	        end
		    if key == 1 then
		        for t, sprite in pairs(FR_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(FR())
	                end
	            end
	        end
		    if key == 1 then
		        for y, sprite in pairs(CH_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(CH())
	                end
	            end
	        end
		    if key == 1 then
		        for U, sprite in pairs(TUR_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(TUR())
	                end
	            end
	        end
		    if key == 1 then
		        for i, sprite in pairs(KOR_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
						print(KOR())
	                end
	            end
	        end
	    end
---------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------Do not go down, if you do not want:  SPOILER -----------
---------------------------------------------------------------------------

































-- LANGUAGES
function  EN()

 local function OnTick()
    CharDead()
end
local death = false
local function CharDead()
    if myHero.dead and not death then
        death = true
       GlaxyMotivationPrint(0)
   elseif not myHero.dead then
          death = false
     end
	end
end

local function GlaxyMotivationPrint(x)
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

function POR()
Print("Not supported. ¿Knows Portuguese Language and wanna help me? Add skype: "..contact.."")
end
function  ES()
Print("Not supported. ¿Knows Spanish Language and wanna help me? Add skype: "..contact.."")
end
function  ALE()
	Print("Not supported. ¿Knows German Language and wanna help me? Add skype: "..contact.."")
end
function POL()
	Print("Not supported. ¿Knows Polish Language and wanna help me? Add skype: "..contact.."")

end

function FR()
	Print("Not supported. ¿Knows French Language and wanna help me? Add skype: "..contact.."")

end

function CH()
	Print("Not supported. ¿Knows Chinese Language and wanna help me? Add skype: "..contact.."")

end

function TUR()
	Print("Not supported. ¿Knows Turkish Language and wanna help me? Add skype: "..contact.."")

end

function KOR()
	Print("Not supported. ¿Knows Korean Language and wanna help me? Add skype: "..contact.."")

end



function OnDraw()



			if P1 then 
				P1Sprite:Draw(500, 200, 255)
				P1Sprite:SetScale(1, 1)
			else
				P1Sprite:Draw(500, 200, 0)
				P1Sprite:SetScale(1, 1)
			end
			if P2 then 
				P2Sprite:Draw(790, 200, 255)
				P2Sprite:SetScale(1, 1)
			else
				P2Sprite:Draw(790, 200, 0)
				P2Sprite:SetScale(1, 1)
			end
				if P3 then 
				P3Sprite:Draw(1000, 200, 255)
				P3Sprite:SetScale(1, 1)
			else
				P3Sprite:Draw(1000, 200, 0)
				P3Sprite:SetScale(1, 1)
			end
				if EN then 
				ENSprite:Draw(1213, 200, 255)
				ENSprite:SetScale(1, 1)
			else
				ENSprite:Draw(550, 200, 0)
				ENSprite:SetScale(1, 1)
			end
				if POR then 
				PORSprite:Draw(500, 310, 255)
				PORSprite:SetScale(1, 1)
			else
				PORSprite:Draw(500, 310, 0)
				PORSprite:SetScale(1, 1)
			end
				if ES then 
				ESSprite:Draw(790, 310, 255)
				ESSprite:SetScale(1, 1)
			else
				ESSprite:Draw(790, 310, 0)
				ESSprite:SetScale(1, 1)
			end
				if ALE then 
				ALESprite:Draw(1000, 310, 255)
				ALESprite:SetScale(1, 1)
			else
				ALESprite:Draw(1000, 310, 0)
				ALESprite:SetScale(1, 1)
			end
				if POL then 
				POLSprite:Draw(1213, 310, 255)
				POLSprite:SetScale(1, 1)
			else
				POLSprite:Draw(1213, 310, 0)
				POLSprite:SetScale(1, 1)
			end
				if FR then 
				FRSprite:Draw(500, 465, 255)
				FRSprite:SetScale(1, 1)
			else
				FRSprite:Draw(500, 465, 0)
				FRSprite:SetScale(1, 1)
			end
				if CH then 
				CHSprite:Draw(790, 465, 255)
				CHSprite:SetScale(1, 1)
			else
				CHSprite:Draw(790, 465, 0)
				CHSprite:SetScale(1, 1)
			end
				if TUR then 
				TURSprite:Draw(1000, 465, 255)
				TURSprite:SetScale(1, 1)
			else
				TURSprite:Draw(1000, 465, 0)
				TURSprite:SetScale(1, 1)
			end
				if KOR then
				KORSprite:Draw(1213, 465, 255)
				KORSprite:SetScale(1, 1)
			else
				KORSprite:Draw(1213, 465, 0)
				KORSprite:SetScale(1, 1)
			end

end

function GMMenu()

	GM = scriptConfig("Glaxy Motivator", "GlaxyM")

	GM:addParam("info1", "", SCRIPT_PARAM_INFO, "")
    GM:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    GM:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    GM:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
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
			end
		else
			Print("Error while downloading version info");
		end
	end
end
