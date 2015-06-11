class "ScriptUpdate"
function ScriptUpdate:__init(LocalVersion,UseHttps, Host, VersionPath, ScriptPath, SavePath, CallbackUpdate, CallbackNoUpdate, CallbackNewVersion,CallbackError)
    self.LocalVersion = LocalVersion
    self.Host = Host
    self.VersionPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..VersionPath)..'&rand='..math.random(99999999)
    self.ScriptPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..ScriptPath)..'&rand='..math.random(99999999)
    self.SavePath = SavePath
    self.CallbackUpdate = CallbackUpdate
    self.CallbackNoUpdate = CallbackNoUpdate
    self.CallbackNewVersion = CallbackNewVersion
    self.CallbackError = CallbackError
    AddDrawCallback(function() self:OnDraw() end)
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

function OnLoad()
    local ToUpdate = {}
    ToUpdate.Version = 1.4
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Prot0o/Scripts/master/DrawSuppMasterByProto.version"
    ToUpdate.ScriptPath =  "/Prot0o/Scripts/master/DrawSuppMasterByProto.lua"
    ToUpdate.SavePath = SCRIPT_PATH.._ENV.FILE_NAME
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">Updated to "..NewVersion..". </b></font>") end
    ToUpdate.CallbackNoUpdate = function(OldVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">No Updates Found</b></font>") end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">New Version found ("..NewVersion.."). Please wait until its downloaded</b></font>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">Error while Downloading. Please try again.</b></font>") end
    ScriptUpdate(ToUpdate.Version,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError)


--More
--More


	if myHero.charName == 'Leona' then 

		SayHello()
		Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)

	elseif myHero.charName == 'Blitzcrank' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
		
		elseif myHero.charName == 'Soraka' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
elseif myHero.charName == 'Alistar' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
elseif myHero.charName == 'Taric' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
		elseif myHero.charName == 'Zilean' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	elseif myHero.charName == 'Thresh' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	elseif myHero.charName == 'Nidalee' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		elseif myHero.charName == 'Nautilus' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
	elseif myHero.charName == 'Nunu' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleQ", "Q", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleW", "W", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleE", "E", SCRIPT_PARAM_ONOFF, true)
		Config.Drawings:addParam("drawCircleR", "R", SCRIPT_PARAM_ONOFF, true)
			elseif myHero.charName == 'Morgana' then 
	SayHello()
	  Config = scriptConfig("SUPPORT Draws", "configname")
		Config:addSubMenu("Individual Draws", "Drawings")
		Config.Drawings:addParam("drawCircleAA", "AA", SCRIPT_PARAM_ONOFF, true)
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
	
	if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end
		
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 150, 0xFFFFFF)

		end

		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 450, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 800, 0xFFFF00)

		end

		if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1200, 0xd62d20)

		end

	elseif myHero.charName == 'Blitzcrank' then 

	  if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0xFFFFFF)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 150, 0xFFFF00)

		end

		if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 600, 0xd62d20)

		end

elseif myHero.charName == 'Soraka' then 

		if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 920, 0xFFFF00)

		end
elseif myHero.charName == 'Alistar' then 

	  if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 370, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 650, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 580, 0xFFFF00)

		end
elseif myHero.charName == 'Taric' then 

	if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 750, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 420, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 620, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 400, 0xd62d20)

		end
		elseif myHero.charName == 'Zilean' then 

	if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 920, 0xFFFFFF)

		end
		

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 700, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 900, 0xd62d20)

		end
				elseif myHero.charName == 'Thresh' then
			
			if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end	

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1100, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 950, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 400, 0xd62d20)

		end
						elseif myHero.charName == 'Nidalee' then 
						
	  if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end
		
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1500, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 900, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 600, 0xFFFF00)

		end
				elseif myHero.charName == 'Nautilus' then 
				
					if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1000, 0xFFFFFF)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 600, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 820, 0xd62d20)

		end
						elseif myHero.charName == 'Nunu' then 
						
							if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end

		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 200, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 700, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 550, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 650, 0xd62d20)

		end
								elseif myHero.charName == 'Morgana' then 
								
									if Config.Drawings.drawCircleAA then

			DrawCircle(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 0xFF0040)

		end

		
		if Config.Drawings.drawCircleQ then

			DrawCircle(myHero.x, myHero.y, myHero.z, 1170, 0xFFFFFF)

		end
		if Config.Drawings.drawCircleW then

			DrawCircle(myHero.x, myHero.y, myHero.z, 900, 0x131343)

		end

		if Config.Drawings.drawCircleE then

			DrawCircle(myHero.x, myHero.y, myHero.z, 750, 0xFFFF00)

		end
	if Config.Drawings.drawCircleR then

			DrawCircle(myHero.x, myHero.y, myHero.z, 630, 0xd62d20)

		end
	end

end
function SayHello()

	-- Print to the chat area


  PrintChat("<font color=\"#FFFFFF\">VERSION <font color=\"#FFFF00\">1.3 </font> - SUPP DRAWS </font><font color=\"#FFFF00\">By: Proto </font>")
  PrintChat("<font color=\"#40FF00\">WELCOME:</b> "..myHero.charName)
	PrintChat("<font color=\"#01DFD7\"><b>Working with:</font><b><font color=\"#F7D358\"> Alistar |  Leona | Blitzcrank | Morgana | Nautilus | Nidalee| Nunu | Soraka | Thresh | Taric | Zilean </font> ")
	 PrintChat("<font color=\"#FF0000\">Soon: </font><font color=\"#FFFF00\"> Braum | Bardo | Annie | Janna | Karma | Lulu | Nami  | Sona | Zyra  </font>")
end
