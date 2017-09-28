--..######...##..........###....##.....##.##....##....##.......##.....##.########.##.......########.########.
--.##....##..##.........##.##....##...##...##..##.....##.......##.....##.##.......##.......##.......##.....##
--.##........##........##...##....##.##.....####......##.......##.....##.##.......##.......##.......##.....##
--.##...####.##.......##.....##....###.......##.......##.......##.....##.######...##.......######...########.
--.##....##..##.......#########...##.##......##.......##........##...##..##.......##.......##.......##...##..
--.##....##..##.......##.....##..##...##.....##.......##.........##.##...##.......##.......##.......##....##.
--..######...########.##.....##.##.....##....##.......########....###....########.########.########.##.....##


local version = 0.4
local gameV = "7.19";
local scriptname = "Glaxy Leveler";
local author ="Glaxy";
local gameV = GetGameVersion():split(' ')[1]
local contact = "dimitri.psarev";
----------------------
-- http://bol-tools.com/ tracker
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("Wb7201J8nEHwFTzO")
-----------------------------
local Img1 = true
local Img2 = true
local Img3 = true
local Img4 = true
local Img5 = true
local Img6 = true
local Img7 = true
local Img8 = true

function Print(v)
    print("<font color=\"#FFBF00\"><b>[Glaxy Leveler!]</b></font> <font color=\"#FFFFFF\">" .. v .. "</font>")
end

   if NONVIP_USER then return
   		Print("Impossible to load this Script. You need VIP Subscription for use this tool. Att: "..author.."")
   end

   
function RandomPrint2(x, v)
	if v == 0 then
		DelayAction(function() Print("¡Thanks for use this script!, Regards, Glaxy!") end, x)
	elseif v == 1 then
		DelayAction(function() Print("If you want more awesome features, Check <font color=\"#2E64FE\"><b>Glaxy Utility</b></font> script.") end, x)
	elseif v == 2 then
		if GetInGameTimer() < 60 then
		DelayAction(function() Print("¡Script was loaded, Good luck <font color=\"#58FAD0\">"..myHero.charName.."!</font> -><font color=\"#58FAD0\"> Ver: </font>"..version.."<font color=\"#58FAD0\"> - VerGame:  </font>"..gameV.." <font color=\"#58FAD0\"> By</font> "..author.." <-") end, x)
	end
	end
end

Img1Sprite = createSprite("\\GlaxyST\\1.png")
Img2Sprite = createSprite("\\GlaxyST\\2.png")
Img3Sprite = createSprite("\\GlaxyST\\3.png")
Img4Sprite = createSprite("\\GlaxyST\\4.png")
Img5Sprite = createSprite("\\GlaxyST\\5.png")
Img6Sprite = createSprite("\\GlaxyST\\6.png")
Img7Sprite = createSprite("\\GlaxyST\\7.png")
Img8Sprite = createSprite("\\GlaxyST\\8.png")

local lvlspell = {
	{archivo = "2.png", names = "R-Q-W-E", posicion_x = 1043, posicion_y = 330, sizeX = 184, sizeY = 121, levelSequence = {1, 2, 3, 1, 1, 4, 1, 2, 1, 2, 4, 2, 2, 3, 3, 4, 3, 3}},
	{archivo = "4.png", names = "R-Q-E-W", posicion_x = 1043, posicion_y = 451, sizeX = 184, sizeY = 74, levelSequence =  {1, 3, 2, 1, 1, 4, 1, 3, 1, 3, 4, 3, 3, 2, 2, 4, 2, 2}},
	{archivo = "5.png", names = "R-W-Q-E", posicion_x = 1043, posicion_y = 525, sizeX = 184, sizeY = 74, levelSequence =  {2, 1, 3, 2, 2, 4, 2, 1, 2, 1, 4, 1, 1, 3, 3, 4, 3, 3}},
	{archivo = "6.png", names = "R-W-E-Q", posicion_x = 1043, posicion_y = 599, sizeX = 184, sizeY = 74, levelSequence =  {2, 3, 1, 2, 2, 4, 2, 3, 2, 3, 4, 3, 3, 1, 1, 4, 1, 1}},
	{archivo = "7.png", names = "R-E-Q-W", posicion_x = 1043, posicion_y = 673, sizeX = 184, sizeY = 74, levelSequence =  {3, 1, 2, 3, 3, 4, 3, 1, 3, 1, 4, 1, 1, 2, 2, 4, 2, 2}},
	{archivo = "8.png", names = "R-E-W-Q", posicion_x = 1043, posicion_y = 747, sizeX = 184, sizeY = 97, levelSequence =  {3, 2, 1, 3, 3, 4, 3, 2, 3, 2, 4, 2, 2, 1, 1, 4, 1, 1}},

}

function OnLoad()

	RandomPrint2(1, 2)
	RandomPrint2(300, 0)
	RandomPrint2(600, 1)
	RandomPrint2(900, 0)
	RandomPrint2(1500, 1)
	RandomPrint2(1800, 0)
	RandomPrint2(2400, 1)
	RandomPrint2(2700, 0)
	RandomPrint2(3300, 1)
	RandomPrint2(3600, 0)
	RandomPrint2(4200, 1)
	RandomPrint2(4500, 0)
	RandomPrint2(5100, 1)
	RandomPrint2(5400, 0)
	RandomPrint2(6000, 1)
	RandomPrint2(6300, 0)
	RandomPrint2(6700, 1)
	AutoUpdate()
	GlaxyLevelerMenu()
	CheckSprites()
	if GetInGameTimer() > 60 then 
		Print("This Script only can be used the first 60 second since you join in game. Thanks.")
	end
end

function CheckSprites()
	local Path = SPRITE_PATH.."\\GlaxyST\\"
	local Url = "http://glaxy.000webhostapp.com\\GlaxyST\\" 

	local spriteImg1 = "1.png"
	local spriteImg2 = "2.png"
	local spriteImg3 = "3.png"
	local spriteImg4 = "4.png"
	local spriteImg5 = "5.png"
	local spriteImg6 = "6.png"
	local spriteImg7 = "7.png"
	local spriteImg8 = "8.png"

	if not FileExist(Path..spriteImg1) or not 
		FileExist(Path..spriteImg2) or not 
		FileExist(Path..spriteImg3) or not 
		FileExist(Path..spriteImg4) or not 
		FileExist(Path..spriteImg5) or not 
		FileExist(Path..spriteImg6) or not 
		FileExist(Path..spriteImg7) or not 
  		FileExist(Path..spriteImg8) then

	    Print("Downloading sprites, don't reload the script.")
	    CreateDirectory(Path)

	    DownloadFile(Url..spriteImg1, Path..spriteImg1, function() end)
	    DownloadFile(Url..spriteImg2, Path..spriteImg2, function() end)
	    DownloadFile(Url..spriteImg3, Path..spriteImg3, function() end)
	    DownloadFile(Url..spriteImg4, Path..spriteImg4, function() end)
	    DownloadFile(Url..spriteImg5, Path..spriteImg5, function() end)
	    DownloadFile(Url..spriteImg6, Path..spriteImg6, function() end)
	    DownloadFile(Url..spriteImg7, Path..spriteImg7, function() end)
        DownloadFile(Url..spriteImg8, Path..spriteImg8, function() Print("Download was successful, please reload the script by pressing F9 twice.") end)
    	return
  	else

  		Img1Sprite = createSprite("\\GlaxyST\\1.png")
		Img2Sprite = createSprite("\\GlaxyST\\2.png")
		Img3Sprite = createSprite("\\GlaxyST\\3.png")
		Img4Sprite = createSprite("\\GlaxyST\\4.png")
		Img5Sprite = createSprite("\\GlaxyST\\5.png")
		Img6Sprite = createSprite("\\GlaxyST\\6.png")
		Img7Sprite = createSprite("\\GlaxyST\\7.png")
		Img8Sprite = createSprite("\\GlaxyST\\8.png")
		  if GetInGameTimer() < 60 then
			Print("Sprites Loaded, please select what <font color=\"#FFFF00\"> Lvl Sequence </font> you want. You have 1 minut")
		end
  	end
end


function OnWndMsg(msg, key)
	if GetInGameTimer() < 60 then 
		    if key == 1 then

		        	  if key == 1 then
				for x, sprites in pairs(lvlspell) do
	                if CursorIsUnder(sprites.posicion_x, sprites.posicion_y, sprites.sizeX, sprites.sizeY) then 
		                levelSequence = sprites.levelSequence
		                DelayAction(function() Print("You select: "..sprites.names..", Loading... ") end, 0)
		                DelayAction(function() Print("Loaded 100%" )end, 1.5)

		                lvlspell = {} 
		                Img1 = false
		                Img2 = false
		                Img3 = false
		                Img4 = false
		                Img5 = false
		                Img6 = false
		            	Img7 = false
		            	Img8 = false
		        
		            end
		        end
	   		end	
	   	end
	   
	end
 end

 function OnDraw()

 if GetInGameTimer() < 60 then

			if Img1 then 
				Img1Sprite:Draw(550, 330, 255)
				Img1Sprite:SetScale(1, 1)
			else
				Img1Sprite:Draw(550, 330, 0)
				Img1Sprite:SetScale(1, 1)
			end
				if Img2 then 
				Img2Sprite:Draw(1043, 330, 255)
				Img2Sprite:SetScale(1, 1)
			else
				Img2Sprite:Draw(1043, 330, 0)
				Img2Sprite:SetScale(1, 1)
			end
				if Img3 then 
				Img3Sprite:Draw(1225, 330, 255)
				Img3Sprite:SetScale(1, 1)
			else
				Img3Sprite:Draw(1225, 330, 0)
				Img3Sprite:SetScale(1, 1)
			end
				if Img4 then 
				Img4Sprite:Draw(1043, 451, 255)
				Img4Sprite:SetScale(1, 1)
			else
				Img4Sprite:Draw(1043, 451, 0)
				Img4Sprite:SetScale(1, 1)
			end
				if Img5 then 
				Img5Sprite:Draw(1043, 525, 255)
				Img5Sprite:SetScale(1, 1)
			else
				Img5Sprite:Draw(1043, 525, 0)
				Img5Sprite:SetScale(1, 1)
			end
				if Img6 then 
				Img6Sprite:Draw(1043, 599, 255)
				Img6Sprite:SetScale(1, 1)
			else
				Img6Sprite:Draw(1043, 599, 0)
				Img6Sprite:SetScale(1, 1)
			end
				if Img7 then 
				Img7Sprite:Draw(1043, 673, 255)
				Img7Sprite:SetScale(1, 1)
			else
				Img7Sprite:Draw(1043, 673, 0)
				Img7Sprite:SetScale(1, 1)
			end
				if Img8 then 
				Img8Sprite:Draw(1043, 747, 255)
				Img8Sprite:SetScale(1, 1)
			else
				Img8Sprite:Draw(1043, 747, 0)
				Img8Sprite:SetScale(1, 1)
			end
	end
end

 function OnTick()
	local Last_LevelSpell = 0
	if os.clock() - Last_LevelSpell > 0 then
    	DelayAction(function() autoLevelSetSequence(levelSequence) end, math.random((GlaxyLeveler.MinHUMAN/1000), (GlaxyLeveler.MaxHUMAN/1000)))--
		Last_LevelSpell = os.clock() + math.random((GlaxyLeveler.MinHUMAN/1000), (GlaxyLeveler.MaxHUMAN/1000))
	end
end

function GlaxyLevelerMenu()

    GlaxyLeveler = scriptConfig("Glaxy Leveler", "GlaxyLeveler")



    GlaxyLeveler:addParam("MinHUMAN", "Min Humanizer Delay for: "..myHero.charName..":", SCRIPT_PARAM_SLICE, 1000, 0, 3000, 0)
    GlaxyLeveler:addParam("MaxHUMAN", "Max Humanizer Delay for: "..myHero.charName..":", SCRIPT_PARAM_SLICE, 3000, 3000, 6000, 0)


	GlaxyLeveler:addParam("info1", "", SCRIPT_PARAM_INFO, "")
    GlaxyLeveler:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    GlaxyLeveler:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    GlaxyLeveler:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
    GlaxyLeveler:permaShow("info2")



end
function AutoUpdate()
	local SCRIPT_NAME = "GlaxyLeveler";
	local UPDATE_HOST = "raw.githubusercontent.com";
	local UPDATE_PATH = "/Prot0o/Scripts/master/GlaxyLeveler.lua".."?rand="..math.random(1,10000);
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME;
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH;
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/GlaxyLeveler.version");
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
