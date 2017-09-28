
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
local version = 0.039
local death = false
local gameV = GetGameVersion():split(' ')[1]
local scriptname = "Glaxy Motivator"
local author ="Glaxy"
local contact = "dimitri.psarev"

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

local Support_list = {
	{archivo = "4.png", name = "English", posicion_x = 1213, posicion_y = 200, sizeX = 284, sizeY = 110, Lan = "EN"},
	{archivo = "6.png", name = "Spanish", posicion_x = 790, posicion_y = 310, sizeX = 213, sizeY = 160, Lan = "ES"},
}

local No_Support_list = {
	{archivo = "5.png", name = "Portuguese", posicion_x = 500, posicion_y = 310, sizeX = 290, sizeY = 160, Lan = "POR"},
	{archivo = "7.png", name = "German", posicion_x = 1000, posicion_y = 310, sizeX = 213, sizeY = 160, Lan = "GER"},
	{archivo = "8.png", name = "Polish", posicion_x = 1213, posicion_y = 310, sizeX = 284, sizeY = 160, Lan = "PoL"},
	{archivo = "9.png", name = "French", posicion_x = 500, posicion_y = 465, sizeX = 290, sizeY = 230, Lan = "FR"},
	{aprchivo = "10.png", name = "Chinese", posicion_x = 790, posicion_y = 465, sizeX = 213, sizeY = 230, Lan = "CH"},
	{archivo = "11.png", name = "Turkish", posicion_x = 1000, posicion_y = 465, sizeX = 213, sizeY = 230, Lan = "TUR"},
	{archivo = "12.png", name = "Korean", posicion_x = 1213, posicion_y = 465, sizeX = 284, sizeY = 230, Lan = "KOR"},
}

assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("ouchiffud20AITSt")

function OnLoad()
	AutoUpdate()
	GMMenu()
	CheckSprites()
 	Print("¡Thanks for use " ..scriptname.."!. Regards, Glaxy!")
 	Print("<font color=\"#FFFFFF\">VerScript: <font color=\"#FFFF00\">"..version.." </font>VerGame: <font color=\"#FFFF00\">"..gameV.." - </font>Loaded. Have fun!")
end

function GMMenu()
	GM = scriptConfig("Glaxy Motivator", "GlaxyM")
    GM:addParam("info2", ""..scriptname.." [ver. "..version.."]", SCRIPT_PARAM_INFO, "")
    GM:addParam("info2", "Game Version: ["..gameV.."]", SCRIPT_PARAM_INFO, "")
    GM:addParam("info3", "Created by "..author.."", SCRIPT_PARAM_INFO, "")
    GM:addParam("info4", "Contact me (SKYPE): "..contact.."", SCRIPT_PARAM_INFO, "")
end
	
function Print(v)
    print("<font color=\"#A5DF00\"><b>[Glaxy Motivator!]</b></font> <font color=\"#FFFFFF\">" .. v .. "</font>")
end

function CheckSprites()
	local Path = SPRITE_PATH.."\\GlaxyMT\\"
	local Url = "http://glaxy.000webhostapp.com\\GlaxyMT\\" 
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
		
	if not FileExist(Path..spriteP1) or not FileExist(Path..spriteP2) or not FileExist(Path..spriteP3) or not FileExist(Path..spriteEN) or not FileExist(Path..spritePOR) or not FileExist(Path..spriteES) or not FileExist(Path..spriteALE) or not FileExist(Path..spritePOL) or not FileExist(Path..spriteFR) or not FileExist(Path..spriteCH) or not FileExist(Path..spriteTUR) or not FileExist(Path..spriteKOR) then
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
		for n, sprite in pairs(Support_list) do
		    if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
				_G.Language = sprite.Lan
		        DelayAction(function() Print("<font color=\"#FFA07A\"><i>You select: "..sprite.name..". LOADED. </i>") end, 0.5) 

	            Support_list = {}
	            No_Support_list = {}

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
		for q, sprite in pairs(No_Support_list) do
		    if CursorIsUnder(sprite.posicion_x, sprite.posicion_y, sprite.sizeX, sprite.sizeY) then 
				Print("Not supported. ¿Knows this Language and wanna help me? Add skype: "..contact.."")
	        end
	    end
	end
end
function OnTick()
	 v = math.random(1, 50)
end
function OnAnimation(unit, animation)
    if unit.isMe and unit.type == myHero.type and animation == "Death" then
		if _G.Language == "EN" then
			Lan_EN()
		elseif _G.Language == "ES" then
			Lan_ES()

	   	end
	end
end

function Lan_EN()

	if v == 0 then
		Print("¡Thanks for use " ..scriptname.."!, Regards, Glaxy!")
	elseif v == 1 then
		Print("¿You are dead?, Dont worry, ¡next time you will destroy him!")
	elseif v == 2 then
		Print("¿Dead?¡Stop cry and destroy him next time!")
	elseif v == 3 then
		Print("¿You are Dead ?, sometimes happens ... Come on!")
	elseif v == 4 then
		Print("¿You are Dead again?, Remember: always need get up again and fight!")
	elseif v == 5 then
		Print("Remember, ¡you are the best!, ¡you will kill him next time!")
	elseif v == 6 then
		Print("¿Dead?:(, this noob just have lucky!")
	elseif v == 7 then
		Print("Remember follow ur team, and then u got the win!")
	elseif v == 8 then
		Print("Go and fuck them right in tha ****")
	elseif v == 9 then
		Print("Maybe u need change some item in built")
	elseif v == 10 then
		Print("Remeber pick SOME AD / AP Defense in LateGame")
	elseif v == 11 then
		Print("Remember -> think first -> after press SPACE.")
	elseif v == 12 then
		Print("Play as a team, you have more chances for win the game.")
	elseif v == 13 then
		Print("Scripts not give you the win, ur brain + hands yes.")
	elseif v == 14 then
		Print("The cycle of life and death continues. We will live. They will die. - Nasus")
	elseif v == 15 then
		Print("Beware a man with nothing to lose - Varus")
	elseif v == 16 then
		Print("Tradition is the corpse of wisdom - Zed")
	elseif v == 17 then
		Print("Sometimes, Icy heart just need warm smile - Braum")
	elseif v == 18 then
		Print("Today we fight each other. Tomorrow, we may fight together. - Braum")
	elseif v == 19 then
		Print("Drown in pussy - Gragas")
	elseif v == 20 then
		Print("Force is meaningless without skill - Lee Sin")
	elseif v == 21 then
		Print("Comfort breeds weakness - Rengar.")
	elseif v == 22 then
		Print("So many noobs... will matchmaking ever find true balance? - Akali")
	elseif v == 23 then
		Print("Easy partner - Graves")
	elseif v == 24 then
		Print("Anger is motivation without reason. - Master Yi")
	elseif v == 25 then
		Print("Stay positive! - Lux")
	elseif v == 26 then
		Print("Make it count. - Ashe")
	elseif v == 27 then
		Print("When you fall, you get right back up. - Orianna")
	elseif v == 28 then
		Print("Gotta' die sometime! - Jinx")
	elseif v == 29 then
		Print("Hesitation is the seed of defeat. -Akali.")
	elseif v == 30 then
		Print("Try be more defensive maybe.")
	elseif v == 31 then
		Print("Game is done, dont worry.")
	elseif v == 32 then
		Print("Some times you cant carry game alone. But try do your best!")
	elseif v == 33 then
		Print("¿Dead again?, Remember Poro´s love you!")
	elseif v == 34 then
		Print("When shit happens, turn it into fertilizer. - Kute Blackson")
	elseif v == 35 then
		Print("CALM, is a super POWER. - Anonymous")
	elseif v == 36 then
		Print("Friends are like ^potatoes^... if you eat them, they die. - Sora")
	elseif v == 37 then
		Print("Devourer not stacked yet. (Cry) - Udyr")
	elseif v == 38 then
		Print("Sapphire, for virginity - Taric")
	elseif v == 39 then
		Print("Die with fear in your heart, or win with blood on your hands. - Aatrox")
	elseif v == 40 then
		Print("............ - Sona")
	elseif v == 41 then
		Print("OK - Rammus")
	elseif v == 42 then
		Print("You only need to click once, fool! - Mordekaiser")
	elseif v == 43 then
		Print("You can't milk those. - Alistar")
	elseif v == 44 then
		Print("Sometimes you're the catch, sometimes you're the bait. - Nami")
	elseif v == 45 then
		Print("If we approach strategically from the flank... ah, forget it. Let's just morph and eat them. - Swain")
	elseif v == 46 then
		Print("We can do this! - Lux")
	elseif v == 47 then
		Print("Fuck them by DEMACIA - Garen")
	elseif v == 48 then
		Print("Remember: Attitude is the most important. - Glaxy")
	elseif v == 49 then
		Print("I am in my period, dont disturb me. - Vladimir")
	elseif v == 50 then
		Print("Check ur built, maybe you need change some item for win the game.")
	end
end
function Lan_ES()

	if v == 0 then
		Print("¡Thanks for use " ..scriptname.."!, Regards, Glaxy!")
	elseif v == 1 then
		Print("No es fácil llegar a la cima, pero las vistas son gloriosas.")
	elseif v == 2 then
		Print("Si te rindes estas dejando en evidencia todo tu esfuerzo por llegar hasta aqui, VAMOS !")
	elseif v == 3 then
		Print("No te preocupes si fallas una vez o dos veces... Solo fallas de verdad cuando dejas de intentarlo.")
	elseif v == 4 then
		Print("El minimapa si... Una herramienta muy util, miralo siempre que puedas y pushea todo lo que puedas.")
	elseif v == 5 then
		Print("A veces para ayudarte a ti mismo significa tener que ayudar al equipo para poder ganar.")
	elseif v == 6 then
		Print("Morir solo es un acontecimmiento, lo importante es darlo todo siempre que tengas oportunidad.")
	elseif v == 7 then
		Print("EL dolor y la muerte son muy reales, pero el miedo a perder i/o a morir otra vez es solo una opcion.")
	elseif v == 8 then
		Print("El dolor es temporal pero la victoria es infinita.")
	elseif v == 9 then
		Print("Si quieres ganar esta partida trabaja con tu equipo, guardea todo lo que puedas y pushea todo lo puedas.")
	elseif v == 10 then
		Print("Piensa por un momento antes luchar que talvez sea mejor defender para poder ganar.")
	elseif v == 11 then
		Print("Puedes dejar las cosas como estan o intentar hacer algo para cambiarlas.")
	elseif v == 12 then
		Print("Lo que no te mata ta hace mas habil en el campo de batalla.")
	elseif v == 13 then
		Print("Tu puedes ganar. Claro que si no me crees compruebalo tu mismo. Vamos Demuestralo !")
	elseif v == 14 then
		Print("La violencia lo arregla todo ! - Katarina")
	elseif v == 15 then
		Print("Las cosas no son siempre lo que parecen.")
	elseif v == 16 then
		Print("Todo el mundo es un heroe hasta que vuelas una... o dos piernas... jeje - Graves")
	elseif v == 17 then
		Print("La habilidad es solo una mera ilusion de la mente, tu solo haz lo que tienes que hacer en el momento oportuno.")
	elseif v == 18 then
		Print("Solo hay dos bufones en la baraja y me tocas tu. - Twisted Fate")
	elseif v == 19 then
		Print("La ceguera no es un problema contra un enemigo apestoso - Lee Sin")
	elseif v == 20 then
		Print("Podemos hacer esto por las buenas o... Espera no... Solo por las malas -Vi")
	elseif v == 21 then
		Print("¿Mi profesión? Bueno... Simpre quise ser panadero... Si panadero. - Pantheon")
	elseif v == 22 then
		Print("Solo tú puedes oírme invocador. ¿Que obra maestra vamos a tocar hoy? - Sona")
	elseif v == 23 then
		Print("La muerte.... Es solo el principio. - Yorick")
	elseif v == 24 then
		Print("No todo esta perdido, siempre hay alguna posibilidad.")
	elseif v == 25 then
		Print("No cometas el mismo error 2 veces, antes de eso encuentra una solucion y te llevaras la victoria.")
	elseif v == 26 then
		Print("Un guerrero solo para de luchar cuando la muerte se lo manda.")
	elseif v == 27 then
		Print("Es una hablidad muy importante, la de mantener la calma cuando todos la han perdido.")
	elseif v == 28 then
		Print("La muerte es solo una etapa hacia la victoria.")
	elseif v == 29 then
		Print("Cuando vivas... Haz que sufran de una manera inteligente.")
	elseif v == 30 then
		Print("Recuerda, no hay victoria sin un perdedor y eso no puedes serlo si haces las cosas bien.")
	elseif v == 31 then
		Print("La derrota es solo una etapa hacia la verdadera victoria.")
	elseif v == 32 then
		Print("La llave de la immortalidad ? ... No morir nunca... - Maestro Yi.")
	elseif v == 33 then
		Print("Cuando se acava el tiempo, solo queda observar lo sembrado, ya sea bueno... O malo....")
	elseif v == 34 then
		Print("Solo un espiritu fuerte puede alzarse con la victoria.")
	elseif v == 35 then
		Print("Solo hay una manera de ganar. Destruye el nexo enemigo !! jeje")
	elseif v == 36 then
		Print("La muerte no será el fin. - Cho'Gath")
	elseif v == 37 then
		Print("El solo hecho de pensar en la derrota es rendirse antes de tiempo.")
	elseif v == 38 then
		Print("La excelencia esta alla donde yo decida poner el liston cada día. - Draven")
	elseif v == 39 then
		Print("La llave del exito ? No rendirte nunca, y menos cuando toda la gente ha perdido la esperanza.")
	elseif v == 40 then
		Print("............ - Sona")
	elseif v == 41 then
		Print("OK - Rammus")
	elseif v == 42 then
		Print("Eso no significa que tengas que rendirte ahora eh....")
	elseif v == 43 then
		Print("Bueno pero que tenemos aqui ?? No pienses que estas solo en esto. Nosotros te daremos apoyo des de aqui ^^")
	elseif v == 44 then
		Print("Sometimes you're the catch, sometimes you're the bait. - Nami")
	elseif v == 45 then
		Print("Todo el mundo tiene buenos momentos t malos, quedate siempre los bueno.")
	elseif v == 46 then
		Print("No te pases, animo tu puedes ganar esto. Yo creo en ti.")
	elseif v == 47 then
		Print("Hay lo que se llama mala suerte.")
	elseif v == 48 then
		Print("El solo hecho de pensar en la derrota es rendirse antes de tiempo.")
	elseif v == 49 then
		Print("Antes muerta, que aburrida. - Katarina.")
	elseif v == 50 then
		Print("Solo en combate descubres quien eres en realidad.")
	end
end

function OnDraw()
	if P1 then 
		P1Sprite:Draw(515, 200, 255)
		P1Sprite:SetScale(1, 1)
	else
		P1Sprite:Draw(500, 200, 0)
		P1Sprite:SetScale(1, 1)
	end

	if P2 then 
		P2Sprite:Draw(795, 200, 255)
		P2Sprite:SetScale(1, 1)
	else
		P2Sprite:Draw(795, 200, 0)
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
		ENSprite:Draw(1209, 200, 255)
		ENSprite:SetScale(1, 1)
	else
		ENSprite:Draw(1209, 200, 0)
		ENSprite:SetScale(1, 1)
	end

	if POR then 
		PORSprite:Draw(515, 299, 255)
		PORSprite:SetScale(1, 1)
	else
		PORSprite:Draw(515, 299, 0)
		PORSprite:SetScale(1, 1)
	end

	if ES then 
		ESSprite:Draw(794, 299, 255)
		ESSprite:SetScale(1, 1)
	else
		ESSprite:Draw(790, 299, 0)
		ESSprite:SetScale(1, 1)
	end

	if ALE then 
		ALESprite:Draw(1000, 299, 255)
		ALESprite:SetScale(1, 1)
	else
		ALESprite:Draw(1000, 299, 0)
		ALESprite:SetScale(1, 1)
	end

	if POL then 
		POLSprite:Draw(1209, 299, 255)
		POLSprite:SetScale(1, 1)
	else
		POLSprite:Draw(1209, 299, 0)
		POLSprite:SetScale(1, 1)
	end

	if FR then 
		FRSprite:Draw(515, 462, 255)
		FRSprite:SetScale(1, 1)
	else
		FRSprite:Draw(515, 462, 0)
		FRSprite:SetScale(1, 1)
	end

	if CH then 
		CHSprite:Draw(794, 462, 255)
		CHSprite:SetScale(1, 1)
	else
		CHSprite:Draw(794, 462, 0)
		CHSprite:SetScale(1, 1)
	end

	if TUR then 
		TURSprite:Draw(1000, 462, 255)
		TURSprite:SetScale(1, 1)
	else
		TURSprite:Draw(1000, 462, 0)
		TURSprite:SetScale(1, 1)
	end

	if KOR then
		KORSprite:Draw(1209, 462, 255)
		KORSprite:SetScale(1, 1)
	else
		KORSprite:Draw(1209, 462, 0)
		KORSprite:SetScale(1, 1)
	end
end

function AutoUpdate()
	local SCRIPT_NAME = "GlaxyMotivator"
	local UPDATE_HOST = "raw.githubusercontent.com"
	local UPDATE_PATH = "/Prot0o/Scripts/master/GlaxyMotivator.lua".."?rand="..math.random(1,10000)
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/GlaxyMotivator.version")
	if ServerData then
		ServerVersion = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil
		if ServerVersion then
			if tonumber(version) < ServerVersion then
				Print("New version available "..ServerVersion)
				Print(">>Updating, please don't press F9<<")
				DelayAction(function() DownloadFile(UPDATE_URL, UPDATE_FILE_PATH, function () Print("Successfully updated. ("..version.." => "..ServerVersion.."), press F9 twice to load the updated version.") end) end, 3)
			end
		else
			Print("Error while downloading version info")
		end
	end
end
