 -- V 1.0: Start do script wiht Leona & Blitz
-- V 1.1: Added Color draws & Alistar, Blitz, Soraka, Tresh, Taric, Zilean 
-- V 1.1.1: Added Nidalee


function SayHello()

	-- Print to the chat area


  PrintChat("<font color=\"#FFFFFF\">VERSION 1.1 - SUPP DRAWS </font><font color=\"#FFFF00\">By: Proto </font>")
  PrintChat("<font color=\"#40FF00\">WELCOME:</b> "..myHero.charName)
	PrintChat("<font color=\"#01DFD7\"><b>Working with:</font><b><font color=\"#F7D358\"> Alistar |  Leona | Blitzcrank | Nidalee | Soraka | Thresh | Taric | Zilean </font> ")
	 PrintChat("<font color=\"#FF0000\">Soon: </font><font color=\"#FFFF00\">Morgana | Braum | Bardo | Annie | Karma | Lulu | Nami | Nautilus | Nunu | Sona | Zyra  </font>")
end

function OnLoad()

	if myHero.charName == 'Leona' then 

		SayHello()
		Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)

	elseif myHero.charName == 'Blitzcrank' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
		
		elseif myHero.charName == 'Soraka' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
elseif myHero.charName == 'Alistar' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
elseif myHero.charName == 'Taric' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
		elseif myHero.charName == 'Zilean' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	elseif myHero.charName == 'Thresh' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	elseif myHero.charName == 'Nidalee' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	end
end



-- Drawing graphics

function OnDraw()

--Draw circles only if activated on menu

	if myHero.charName == 'Leona' then 
		
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 150, 0x233432)

		end

		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 450, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 800, 0x999999)

		end

		if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1200, 0xd62d20)

		end

	elseif myHero.charName == 'Blitzcrank' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0x233432)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 150, 0x999999)

		end

		if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 600, 0xd62d20)

		end

elseif myHero.charName == 'Soraka' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0x233432)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 920, 0x999999)

		end
elseif myHero.charName == 'Alistar' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 370, 0x233432)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 650, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 580, 0x999999)

		end
elseif myHero.charName == 'Taric' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 750, 0x233432)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 420, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 620, 0x999999)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 400, 0xd62d20)

		end
		elseif myHero.charName == 'Zilean' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 920, 0x233432)

		end
		

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 700, 0x999999)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 900, 0xd62d20)

		end
				elseif myHero.charName == 'Thresh' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1100, 0x233432)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0x999999)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 400, 0xd62d20)

		end
						elseif myHero.charName == 'Nidalee' then 

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1500, 0x233432)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0x999999)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 400, 0xd62d20)

		end
	end

end
