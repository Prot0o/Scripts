


-------------------------------------------------------------------------------
----------------------------GLAXY STARTERS-------------------------------------
-------------------------------------------------------------------------------
local version = 0.03
local gameV = "6.16";
local scriptname = "Glaxy Starters";
local author ="Glaxy";
local contact = "dimitri.psarev";

local Sword = true
local SwordN = true
local Ring = true
local Book = true
local Darkseal = true
local Shield = true
local Boots = true
local Cull = true
local Suppy = true
local Suppg = true
local Suppb = true
local Pot1 = true	
local Pot2 = true
local Armor = true
local Machete = true
local Talisman = true
local Select = true
local Select1 = true
local Order1 = true
local Order2 = true
local Order3 = true
local Order4 = true
local Order5 = true
local Order6 = true
local Banner = true
local Banner1 = true



function RandomPrint2(x, v)
	if v == 0 then
		DelayAction(function() Print("¡Thanks for use this script!, Regards, Glaxy!") end, x)
	elseif v == 1 then
		DelayAction(function() Print("If you want more awesome features, Check <font color=\"#2E64FE\"><b>Glaxy Utility</b></font> script.") end, x)
	elseif v == 2 then
		DelayAction(function() Print("¡Script was loaded, Good luck! -><font color=\"#58FAD0\"> Ver: </font>"..version.."<font color=\"#58FAD0\"> By</font> "..author.." <-") end, x)
	end
end




SwordSprite = createSprite("\\GlaxyAB\\1.png") 
SwordNSprite = createSprite("\\GlaxyAB\\2.png") 
RingSprite = createSprite("\\GlaxyAB\\3.png") 
BookSprite = createSprite("\\GlaxyAB\\4.png") 
DarksealSprite = createSprite("\\GlaxyAB\\5.png")
ShieldSprite = createSprite("\\GlaxyAB\\6.png") 
BootsSprite = createSprite("\\GlaxyAB\\7.png")
CullSprite = createSprite("\\GlaxyAB\\8.png")
SuppySprite = createSprite("\\GlaxyAB\\9.png")
SuppgSprite = createSprite("\\GlaxyAB\\10.png")
SuppbSprite = createSprite("\\GlaxyAB\\11.png")
Pot1Sprite = createSprite("\\GlaxyAB\\12.png")
Pot2Sprite = createSprite("\\GlaxyAB\\13.png")
ArmorSprite = createSprite("\\GlaxyAB\\14.png")
MacheteSprite = createSprite("\\GlaxyAB\\15.png")
TalismanSprite = createSprite("\\GlaxyAB\\16.png")
BannerSprite = createSprite("\\GlaxyAB\\banner.png")
Banner1Sprite = createSprite("\\GlaxyAB\\banner.png")
SelectSprite = createSprite("\\GlaxyAB\\11select.png")			   
Order1Sprite = createSprite("\\GlaxyAB\\22.png") 
Order2Sprite = createSprite("\\GlaxyAB\\33.png")
Order3Sprite = createSprite("\\GlaxyAB\\44.png")
Order4Sprite = createSprite("\\GlaxyAB\\55.png")
Order5Sprite = createSprite("\\GlaxyAB\\66.png")
Order6Sprite = createSprite("\\GlaxyAB\\77.png")
--}
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("jLBTYcuExAwGLJZH")

local lvlspell = {
	{archivo = "22.png", names = "R-Q-W-E", posicion_x = 550, posicion_y = 555, sizeX = 800, sizeY = 47, levelSequence = {1, 2, 3, 1, 1, 4, 1, 2, 1, 2, 4, 2, 2, 3, 3, 4, 3, 3}},
	{archivo = "33.png", names = "R-Q-E-W", posicion_x = 550, posicion_y = 600, sizeX = 800, sizeY = 47, levelSequence =  {1, 3, 2, 1, 1, 4, 1, 3, 1, 3, 4, 3, 3, 2, 2, 4, 2, 2}},
	{archivo = "44.png", names = "R-W-Q-E", posicion_x = 550, posicion_y = 645, sizeX = 800, sizeY = 47, levelSequence =  {2, 1, 3, 2, 2, 4, 2, 1, 2, 1, 4, 1, 1, 3, 3, 4, 3, 3}},
	{archivo = "55.png", names = "R-W-E-Q", posicion_x = 550, posicion_y = 690, sizeX = 800, sizeY = 47, levelSequence =  {2, 3, 1, 2, 2, 4, 2, 3, 2, 3, 4, 3, 3, 1, 1, 4, 1, 1}},
	{archivo = "66.png", names = "R-E-Q-W", posicion_x = 550, posicion_y = 735, sizeX = 800, sizeY = 47, levelSequence =  {3, 1, 2, 3, 3, 4, 3, 1, 3, 1, 4, 1, 1, 2, 2, 4, 2, 2}},
	{archivo = "77.png", names = "R-E-W-Q", posicion_x = 550, posicion_y = 780, sizeX = 800, sizeY = 47, levelSequence = {3, 2, 1, 3, 3, 4, 3, 2, 3, 2, 4, 2, 2, 1, 1, 4, 1, 1}},
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
	GlaxyMenu()
	CheckSprites()
	AutoUpdate()

	if myHero:GetSpellData(SUMMONER_1).name:find("SummonerSmite") then 
		Smite = SUMMONER_1 
		SSmite = true 
	elseif 
		myHero:GetSpellData(SUMMONER_2).name:find("SummonerSmite") then 
		Smite = SUMMONER_2 
		SSmite = true
	end
if SSmite then
 		sprites_list = {
			{archivo = "1.png", name = "Doran Sword", posicion_x = 550, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1055, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "2.png", name = "Normal Sword", posicion_x = 650, posicion_y = 280, sizeX = 100, sizeY = 119,  buy=1036, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "3.png", name = "Doran Ring", posicion_x = 750, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1056, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "4.png", name = "Book", posicion_x = 850, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1052, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "5.png", name = "Darkseal", posicion_x = 950, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1082, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "6.png", name = "Shield", posicion_x = 1050, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1054, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "7.png", name = "Boots", posicion_x = 1150, posicion_y = 280, sizeX = 100, sizeY = 119, buy= 1001, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "8.png", name = "Cull", posicion_x = 1250, posicion_y = 280, sizeX = 100, sizeY = 119, buy= 1083, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "9.png", name = "Ancient Coin", posicion_x = 550, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3302, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "10.png", name = "Relic Shield", posicion_x = 650, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3301, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "11.png", name = "Spellthief Edge", posicion_x = 750, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3303, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "12.png", name = "Hunter Potion", posicion_x = 850, posicion_y = 395, sizeX = 100, sizeY = 119, buy=2032, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "13.png", name = "Corrupting Potion", posicion_x = 950, posicion_y = 395, sizeX = 100, sizeY = 119, buy=2033, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "14.png", name = "Armor", posicion_x = 1050, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1029, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "15.png", name = "Machete", posicion_x = 1150, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1041, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "16.png", name = "Talisman", posicion_x = 1250, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1039, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
		}
	else
		sprites_list = {
			{archivo = "1.png", name = "Doran Sword", posicion_x = 550, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1055, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "2.png", name = "Normal Sword", posicion_x = 650, posicion_y = 280, sizeX = 100, sizeY = 119,  buy=1036, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "3.png", name = "Doran Ring", posicion_x = 750, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1056, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "4.png", name = "Book", posicion_x = 850, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1052, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "5.png", name = "Darkseal", posicion_x = 950, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1082, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "6.png", name = "Shield", posicion_x = 1050, posicion_y = 280, sizeX = 100, sizeY = 119, buy=1054, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "7.png", name = "Boots", posicion_x = 1150, posicion_y = 280, sizeX = 100, sizeY = 119, buy= 1001, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "8.png", name = "Cull", posicion_x = 1250, posicion_y = 280, sizeX = 100, sizeY = 119, buy= 1083, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "9.png", name = "Ancient Coin", posicion_x = 550, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3302, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "10.png", name = "Relic Shield", posicion_x = 650, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3301, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "11.png", name = "Spellthief Edge", posicion_x = 750, posicion_y = 395, sizeX = 100, sizeY = 119, buy=3303, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "12.png", name = "Hunter Potion", posicion_x = 850, posicion_y = 395, sizeX = 100, sizeY = 119, buy=2032, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "13.png", name = "Corrupting Potion", posicion_x = 950, posicion_y = 395, sizeX = 100, sizeY = 119, buy=2033, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "14.png", name = "Armor", posicion_x = 1050, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1029, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},

		}
		smite_list = {
			{archivo = "15.png", name = "Machete", posicion_x = 1150, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1041, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
			{archivo = "16.png", name = "Talisman", posicion_x = 1250, posicion_y = 395, sizeX = 100, sizeY = 119, buy=1039, buy1 = 2003, buy2 = 2003, buy3 = 2003, buy4 = 3340},
		}
	end
end
function CheckSprites()

	local Path = SPRITE_PATH.."\\GlaxyAB\\"
	local Url = "http://dmitrypsarev.com\\GlaxyAB\\" 
	local spriteSword = "1.png"
	local spriteSwordN = "2.png"
	local spriteRing = "3.png"
	local spriteBook = "4.png"
	local spriteDarkseal = "5.png"
	local spriteShield = "6.png"
	local spriteBoots = "7.png"
	local spriteCull = "8.png"
	local spriteSuppy = "9.png"
	local spriteSuppg = "10.png"
	local spriteSuppb = "11.png"
	local spritePot1 = "12.png"
	local spritePot2 = "13.png"
	local spriteArmor = "14.png"
	local spriteMachete = "15.png"
	local spriteTalisman = "16.png"
	local spriteSelect = "11select.png"
	local spriteBanner = "banner.png"
	--
	local spriteOrder1 = "11.png"
	local spriteOrder2 = "22.png"
	local spriteOrder3 = "33.png"
	local spriteOrder4 = "44.png"
	local spriteOrder5 = "55.png"
	local spriteOrder6 = "66.png"

  	if not FileExist(Path..spriteSword) or not 

  		FileExist(Path..spriteSwordN) or not 
  		FileExist(Path..spriteRing) or not 
  		FileExist(Path..spriteBook) or not 
  		FileExist(Path..spriteDarkseal) or not
  	  	FileExist(Path..spriteShield) or not
  		FileExist(Path..spriteBoots) or not
    	FileExist(Path..spriteCull) or not
  		FileExist(Path..spriteSuppy) or not
  		FileExist(Path..spriteSuppg) or not
  		FileExist(Path..spriteSuppb) or not
  		FileExist(Path..spritePot1) or not
  		FileExist(Path..spritePot2) or not 
  		FileExist(Path..spriteArmor) or not         
  		FileExist(Path..spriteMachete) or not 
  		FileExist(Path..spriteSelect) or not 
  		FileExist(Path..spriteBanner) or not 
  		FileExist(Path..spriteOrder1) or not 
  		FileExist(Path..spriteOrder2) or not 
  		FileExist(Path..spriteOrder3) or not 
  		FileExist(Path..spriteOrder4) or not 
  		FileExist(Path..spriteOrder5) or not
  		FileExist(Path..spriteOrder6) or not 
  		FileExist(Path..spriteTalisman) then

	    Print("Downloading sprites, don't reload the script.")
	    CreateDirectory(Path)
	    
	    DownloadFile(Url..spriteSword, Path..spriteSword, function() end)
	    DownloadFile(Url..spriteSwordN, Path..spriteSwordN, function() end)
	    DownloadFile(Url..spriteBook, Path..spriteBook, function() end)
	    DownloadFile(Url..spriteRing, Path..spriteRing, function() end)
	    DownloadFile(Url..spriteSelect, Path..spriteSelect, function() end)
	    DownloadFile(Url..spriteDarkseal, Path..spriteDarkseal, function() end)
		DownloadFile(Url..spriteShield, Path..spriteShield, function() end)
		DownloadFile(Url..spriteBoots, Path..spriteBoots, function() end)
		DownloadFile(Url..spriteCull, Path..spriteCull, function() end)
		DownloadFile(Url..spriteSuppy, Path..spriteSuppy, function() end)
	    DownloadFile(Url..spriteSuppg, Path..spriteSuppg, function() end)
	    DownloadFile(Url..spriteSuppb, Path..spriteSuppb, function() end)
	    DownloadFile(Url..spritePot1, Path..spritePot1, function() end)
	    DownloadFile(Url..spritePot2, Path..spritePot2, function() end)
	    DownloadFile(Url..spriteArmor, Path..spriteArmor, function() end)
	    DownloadFile(Url..spriteTalisman, Path..spriteTalisman, function() end)
	    DownloadFile(Url..spriteMachete, Path..spriteMachete, function() end)
	    DownloadFile(Url..spriteBanner, Path..spriteBanner, function() end)
	    --
	    DownloadFile(Url..spriteOrder1, Path..spriteOrder1, function() end)
	    DownloadFile(Url..spriteOrder2, Path..spriteOrder2, function() end)
	    DownloadFile(Url..spriteOrder3, Path..spriteOrder3, function() end)
	    DownloadFile(Url..spriteOrder4, Path..spriteOrder4, function() end)
	    DownloadFile(Url..spriteOrder5, Path..spriteOrder5, function() end)
        DownloadFile(Url..spriteOrder6, Path..spriteOrder6, function() Print("Download was successful, please reload the script by pressing F9 twice.") end)
    	return
  	else
	SwordSprite = createSprite("\\GlaxyAB\\1.png") 
	SwordNSprite = createSprite("\\GlaxyAB\\2.png") 
	RingSprite = createSprite("\\GlaxyAB\\3.png") 
	BookSprite = createSprite("\\GlaxyAB\\4.png") 
	DarksealSprite = createSprite("\\GlaxyAB\\5.png")
	ShieldSprite = createSprite("\\GlaxyAB\\6.png") 
	BootsSprite = createSprite("\\GlaxyAB\\7.png")
	CullSprite = createSprite("\\GlaxyAB\\8.png")
	SuppySprite = createSprite("\\GlaxyAB\\9.png")
	SuppgSprite = createSprite("\\GlaxyAB\\10.png")
	SuppbSprite = createSprite("\\GlaxyAB\\11.png")
	Pot1Sprite = createSprite("\\GlaxyAB\\12.png")
	Pot2Sprite = createSprite("\\GlaxyAB\\13.png")
	ArmorSprite = createSprite("\\GlaxyAB\\14.png")
	MacheteSprite = createSprite("\\GlaxyAB\\15.png")
	TalismanSprite = createSprite("\\GlaxyAB\\16.png")
	BannerSprite = createSprite("\\GlaxyAB\\banner.png")
				   -- 
	SelectSprite = createSprite("\\GlaxyAB\\11select.png")			   
	Order1Sprite = createSprite("\\GlaxyAB\\22.png") 
	Order2Sprite = createSprite("\\GlaxyAB\\33.png")
	Order3Sprite = createSprite("\\GlaxyAB\\44.png")
	Order4Sprite = createSprite("\\GlaxyAB\\55.png")
	Order5Sprite = createSprite("\\GlaxyAB\\66.png")
	Order6Sprite = createSprite("\\GlaxyAB\\77.png")
	    if GetInGameTimer() < 60 then
			Print("Sprites Loaded, please select what <font color=\"#FFFF00\"> Item & Lvl Sequence </font> you want. You have 1 minut")
		end
  	end
end

function Print(v)
    print("<font color=\"#FFBF00\"><b>[Glaxy Starters!]</b></font> <font color=\"#FFFFFF\">" .. v .. "</font>")
end

function OnWndMsg(msg, key)
	if GetInGameTimer() < 60 then 
		    if key == 1 then
		        for n, sprite in pairs(sprites_list) do
		            if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
		               	DelayAction(function() BuyItem(sprite.buy) end, 0)
		               	DelayAction(function() Print("<font color=\"#FFA07A\"><i> Buying "..sprite.name.."</i>") end, 0) 
		                DelayAction(function() BuyItem(sprite.buy1) end, 0.5)
		                DelayAction(function() Print("<font color=\"#FFA07A\"><i> Buying Pots </i>") end, 0.5)
		                DelayAction(function() BuyItem(sprite.buy2) end, 1)
		                DelayAction(function() BuyItem(sprite.buy3) end, 1.5)
		                DelayAction(function() Print("<font color=\"#FFA07A\"><i> Buying Ward </i>") end, 1.5)
		                DelayAction(function() BuyItem(sprite.buy4) end, 2)

	                    sprites_list = {}
		                Sword = false
		                SwordN = false
		                Ring = false
		                Book = false
		                Darkseal = false
		                Shield = false
		                Boots = false
		                Cull = false
		                Pot1 = false
		                Pot2 = false
		                Armor =false
		                Machete = false
		                Talisman = false

		                Banner = false
		                Suppy = false
		                Suppg = false
		                Suppb = false
		            
		            	
		            end
		        end
		    end
		    if key == 1 then
				for x, sprites in pairs(lvlspell) do
	                if CursorIsUnder(sprites.posicion_x, sprites.posicion_y, sprites.sizeX, sprites.sizeY) then 
		                levelSequence = sprites.levelSequence
		                Print("You select: "..sprites.names..", Loading... ")
		                lvlspell = {} 
		                Order1 = false
		                Order2 = false
		                Order3 = false
		                Order4 = false
		                Order5 = false
		                Order6 = false
		            	Select = false
		            	Banner1 = false
		        
		            end
		        end
	   		end	
	   		if key == 1 and not SSmite then
				for v, spritev in pairs(smite_list) do
	                if CursorIsUnder(spritev.posicion_x, spritev.posicion_y, spritev.sizeX, spritev.sizeY) then 
		                Print("You can't select: "..spritev.name..", because you haven't Smite!")
		            end
		        end
	   		end	
	end
end

function OnTick()
	local Last_LevelSpell = 0
	if os.clock() - Last_LevelSpell > 0 then
    	DelayAction(function() autoLevelSetSequence(levelSequence) end, math.random((GlaxyStarter.MinHUMAN/1000), (GlaxyStarter.MaxHUMAN/1000)))--
		Last_LevelSpell = os.clock() + math.random((GlaxyStarter.MinHUMAN/1000), (GlaxyStarter.MaxHUMAN/1000))
	end
end

function OnDraw()

   if GetInGameTimer() < 60 then

			if Banner1 then 
				Banner1Sprite:Draw(550, 330, 255)
				Banner1Sprite:SetScale(1, 1)
			else
				Banner1Sprite:Draw(550, 395, 0)
				Banner1Sprite:SetScale(1, 1)
			end
			if Banner then 
				BannerSprite:Draw(550, 100, 255)
				BannerSprite:SetScale(1, 1)
			else
				BannerSprite:Draw(550, 100, 0)
				BannerSprite:SetScale(1, 1)
			end
			if Sword then
			   	SwordSprite:Draw(550, 280, 255) 
			   	SwordSprite:SetScale(1, 1)
			else
				SwordSprite:Draw(550, 280, 0) 
			   	SwordSprite:SetScale(1, 1) 
			end
			if SwordN then
			   	SwordNSprite:Draw(650, 280, 255)
			   	SwordNSprite:SetScale(1, 1)
			else
			   	SwordNSprite:Draw(650, 280, 0)
			   	SwordNSprite:SetScale(1, 1)
			end
			if Ring then
				RingSprite:Draw(750, 280, 255)
				RingSprite:SetScale(1, 1)
			else
				RingSprite:Draw(750, 280, 0)
				RingSprite:SetScale(1, 1)
			end
			if Book then
				BookSprite:Draw(850, 280, 255)
				BookSprite:SetScale(1, 1)
			else
				BookSprite:Draw(850, 280, 0)
				BookSprite:SetScale(1, 1)
			end
			if Darkseal then
				DarksealSprite:Draw(950, 280, 255)
				DarksealSprite:SetScale(1, 1)
			else
				DarksealSprite:Draw(950, 280, 0)
				DarksealSprite:SetScale(1, 1)
			end
			if Shield then
				ShieldSprite:Draw(1050, 280, 255)
				ShieldSprite:SetScale(1, 1)
			else
				ShieldSprite:Draw(1050, 280, 0)
				ShieldSprite:SetScale(1, 1)
			end
			if Boots then
				BootsSprite:Draw(1150, 280, 255)
				BootsSprite:SetScale(1, 1)
			else
				BootsSprite:Draw(1150, 280, 0)
				BootsSprite:SetScale(1, 1)
			end
			if Cull then
				CullSprite:Draw(1250, 280, 255)
				CullSprite:SetScale(1, 1)
			else
				CullSprite:Draw(1250, 280, 0)
				CullSprite:SetScale(1, 1)
			end
			if Suppy then
				SuppySprite:Draw(550, 395, 255)
				SuppySprite:SetScale(1, 1)
			else
				SuppySprite:Draw(550, 395, 0)
				SuppySprite:SetScale(1, 1)
			end
			if Suppg then
				SuppgSprite:Draw(650, 395, 255)
				SuppgSprite:SetScale(1, 1)
			else
				SuppgSprite:Draw(650, 280, 0)
				SuppgSprite:SetScale(1, 1)
			end
			if Suppb then
				SuppbSprite:Draw(750, 395, 255)
				SuppbSprite:SetScale(1, 1)
			else
				SuppbSprite:Draw(750, 395, 0)
				SuppbSprite:SetScale(1, 1)
			end
			if Pot1 then
				Pot1Sprite:Draw(850, 395, 255)
				Pot1Sprite:SetScale(1, 1)
			else
				Pot1Sprite:Draw(850, 395, 0)
				Pot1Sprite:SetScale(1, 1)
			end
			if Pot2 then
				Pot2Sprite:Draw(950, 395, 255)
				Pot2Sprite:SetScale(1, 1)
			else
				Pot2Sprite:Draw(950, 395, 0)
				Pot2Sprite:SetScale(1, 1)
			end
			if Armor then
				ArmorSprite:Draw(1050, 395, 255)
				ArmorSprite:SetScale(1, 1)
			else
				ArmorSprite:Draw(1050, 395, 0)
				ArmorSprite:SetScale(1, 1)
			end
			if Machete then
				MacheteSprite:Draw(1150, 395, 255)
				MacheteSprite:SetScale(1, 1)
			else
				MacheteSprite:Draw(1150, 395, 0)
				MacheteSprite:SetScale(1, 1)
			end
			if Talisman then
				TalismanSprite:Draw(1250, 395, 255)
				TalismanSprite:SetScale(1, 1)
			else
				TalismanSprite:Draw(1250, 395, 0)
				TalismanSprite:SetScale(1, 1)
			end

			if Select then 
				SelectSprite:Draw(550, 510, 255)
				SelectSprite:SetScale(1, 1)
			else
				SelectSprite:Draw(550, 510, 0)
				SelectSprite:SetScale(1, 1)
			end

			----------------------------
			if Order1 then
			   	Order1Sprite:Draw(550, 555, 255)
			   	Order1Sprite:SetScale(1, 1)
			else
			   	Order1Sprite:Draw(550, 555, 0)
			   	Order1Sprite:SetScale(1, 1)
			end

			if Order2 then
			   	Order2Sprite:Draw(550, 600, 255)
			   	Order2Sprite:SetScale(1, 1)
			else
			   	Order2Sprite:Draw(550, 600, 0)
			   	Order2Sprite:SetScale(1, 1)
			end

			if Order3 then
			   	Order3Sprite:Draw(550, 645, 255)
			   	Order3Sprite:SetScale(1, 1)
			else
			   	Order3Sprite:Draw(550, 645, 0)
			   	Order3Sprite:SetScale(1, 1)
			end

			if Order4 then
			   	Order4Sprite:Draw(550, 690, 255)
			   	Order4Sprite:SetScale(1, 1)
			else
			   	Order4Sprite:Draw(550, 690, 0)
			   	Order4Sprite:SetScale(1, 1)
			end

			if Order5 then
			   	Order5Sprite:Draw(550, 735, 255)
			   	Order5Sprite:SetScale(1, 1)
			else
			   	Order5Sprite:Draw(515, 735, 0)
			   	Order5Sprite:SetScale(1, 1)
			end

			if Order6 then
			   	Order6Sprite:Draw(550, 780, 255)
			   	Order6Sprite:SetScale(1, 1)
			else
			   	Order6Sprite:Draw(550, 780, 0)
			   	Order6Sprite:SetScale(1, 1)
			end
	end
end



function GlaxyMenu()

    GlaxyStarter = scriptConfig("Glaxy Starters", "GlaxyStarter")



    GlaxyStarter:addParam("MinHUMAN", "Min Humanizer Delay for: "..myHero.charName..":", SCRIPT_PARAM_SLICE, 1000, 0, 3000, 0)
    GlaxyStarter:addParam("MaxHUMAN", "Max Humanizer Delay for: "..myHero.charName..":", SCRIPT_PARAM_SLICE, 3000, 3000, 6000, 0)


	GlaxyStarter:addParam("info1", "", SCRIPT_PARAM_INFO, "")
    GlaxyStarter:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    GlaxyStarter:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    GlaxyStarter:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
    GlaxyStarter:permaShow("info2")


end
function AutoUpdate()
	local SCRIPT_NAME = "GlaxyStarter";
	local UPDATE_HOST = "raw.githubusercontent.com";
	local UPDATE_PATH = "/Prot0o/Scripts/master/GlaxyStarter.lua".."?rand="..math.random(1,10000);
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME;
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH;
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/GlaxyStarter.version");
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
