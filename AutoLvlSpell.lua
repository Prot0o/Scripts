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

--TOP/JUNGLE Champs---------------------------------------
if myHero.charName == 'Shyvana' then
  levelSequence =  { 2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Gragas' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'JarvanIV' then
  levelSequence =  { 3,1,2,1,1,4,2,3,1,3,4,1,2,2,3,4,3,2}
	elseif myHero.charName == 'Irelia' then
  levelSequence =  { 2,3,1,2,2,4,3,3,2,1,4,2,3,1,1,4,3,1}
	elseif myHero.charName == 'Garen' then
  levelSequence =  { 1,3,3,2,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Gnar' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Aatrox' then
  levelSequence =  { 2,1,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Amumu' then
  levelSequence =  { 2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
	elseif myHero.charName == 'Nunu' then
  levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Fiddlesticks' then
  levelSequence =  { 2,3,2,1,1,4,1,3,1,3,4,1,2,3,2,4,3,2}
	elseif myHero.charName == 'Teemo' then
  levelSequence =  { 3,1,2,1,1,4,3,3,2,3,4,1,1,3,2,4,2,2}
	elseif myHero.charName == 'ChoGath' then
  levelSequence =  { 1,2,3,1,1,4,1,1,2,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Darius' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,3,2,2,3,4,3,3}
	elseif myHero.charName == 'DrMundo' then
  levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Elise' then
  levelSequence =  { 2,1,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Evelynn' then
  levelSequence =  { 1,3,2,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Fiora' then
  levelSequence =  { 2,3,1,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Gangplank' then
  levelSequence =  { 1,2,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Hecarim' then
  levelSequence =  { 1,2,3,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Jax' then
  levelSequence =  { 2,3,1,1,1,4,3,2,3,2,4,2,1,1,3,4,2,3}
	elseif myHero.charName == 'Jayce' then
  levelSequence =  { 1,3,1,2,1,2,1,2,1,2,1,2,2,3,3,3,3,3}

--MID Champs----------------------------------------------
	elseif myHero.charName == 'Ahri' then
  levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Akali' then
  levelSequence =  { 1,2,1,3,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Anivia' then
  levelSequence =  { 1,3,3,1,3,4,3,2,3,2,4,2,2,2,1,4,1,1}
	elseif myHero.charName == 'Annie' then
  levelSequence =  { 1,2,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Azir' then
  levelSequence =  { 2,1,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Brand' then
  levelSequence =  { 2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Cassiopeia' then
  levelSequence =  { 3,1,2,3,3,4,1,1,3,3,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Orianna' then
  levelSequence =  { 3,1,2,1,1,4,2,1,3,1,4,2,3,2,2,4,3,3}
	elseif myHero.charName == 'Lux' then
  levelSequence =  { 3,1,2,3,3,4,1,2,3,1,4,2,3,1,1,4,2,2}
	elseif myHero.charName == 'Diana' then
  levelSequence =  { 2,1,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Ekko' then
  levelSequence =  { 2,1,3,1,1,4,2,2,1,2,4,1,2,3,3,4,3,3}
	elseif myHero.charName == 'Ezreal' then
  levelSequence =  { 1,2,3,1,1,4,2,2,1,3,4,1,2,2,3,4,3,3}
	elseif myHero.charName == 'Fizz' then
  levelSequence =  { 2,1,3,2,2,4,3,2,1,2,4,1,1,3,1,4,3,3}
	elseif myHero.charName == 'Galio' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Heimerdinger' then
  levelSequence =  { 1,2,3,1,1,4,2,2,2,1,4,1,2,3,3,4,3,3}
--ADC Champs----------------------------------------------
	elseif myHero.charName == 'Ashe' then
  levelSequence =  { 2,1,3,2,2,4,1,2,1,2,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Kalista' then
  levelSequence =  { 3,1,3,2,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Graves' then
  levelSequence =  { 1,2,3,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Caitlyn' then
  levelSequence =  { 1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Vayne' then
  levelSequence =  { 2,1,3,2,2,4,1,2,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'MissFortune' then
  levelSequence =  { 1,2,3,1,2,4,1,1,2,1,4,2,2,3,3,4,3,3}
  elseif myHero.charName == 'Corki' then
  levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Draven' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Jinx' then
  levelSequence =  { 1,2,3,1,1,4,2,1,2,1,4,2,2,3,3,4,3,3}
--SUPP Champs---------------------------------------------
	elseif myHero.charName == 'Leona' then
  levelSequence =  { 1,3,2,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Alistar' then
  levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Janna' then
  levelSequence =  { 3,1,3,2,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Braum' then
  levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Bard' then
  levelSequence =  { 1,2,3,1,1,4,2,1,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Blitzcrank' then
  levelSequence =  { 1,3,2,1,1,4,2,1,3,1,4,2,2,2,3,4,3,3}
	elseif myHero.charName == 'Morgana' then
  levelSequence =  { 2,1,3,2,2,4,1,1,3,1,4,1,2,2,3,4,3,3}
	

end

function OnLoad()
local ToUpdate = {}
    ToUpdate.Version = 0.3
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Prot0o/Scripts/master/AutoLvlSpell.version"
    ToUpdate.ScriptPath =  "/Prot0o/Scripts/master/AutoLvlSpell.lua"
    ToUpdate.SavePath = SCRIPT_PATH.._ENV.FILE_NAME
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">Updated to "..NewVersion..". </b></font>") end
    ToUpdate.CallbackNoUpdate = function(OldVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">No Updates Found</b></font>") end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">New Version found ("..NewVersion.."). Please wait until its downloaded</b></font>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color=\"#FF794C\"><b>SxOrbWalk: </b></font> <font color=\"#FFDFBF\">Error while Downloading. Please try again.</b></font>") end
    ScriptUpdate(ToUpdate.Version,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError)
 
  Config = scriptConfig(" AutoLvlSpell Manage ", "configname")
  Config:addSubMenu("Activate / Deactivate", "NF")
  Config.NF:addParam("levelSequence", "Status", SCRIPT_PARAM_ONOFF, true)
  Config.NF.levelSequence = true 
	SayHello()
  
end

function OnTick()

  if Config.NF.levelSequence then
    autoLevelSetSequence(levelSequence)
  end
  
end

function SayHello()

	-- Print to the chat area


  PrintChat("<font color=\"#FFFFFF\">VERSION <font color=\"#FFFF00\">0.3</font> - AUTOLVLSPELL </font><font color=\"#FFFF00\">By: Proto </font>")
  PrintChat("<font color=\"#40FF00\">WELCOME:</b> "..myHero.charName)
	PrintChat("<font color=\"#01DFD7\"><b>Working with:</font><b><font color=\"#F7D358\"> 52 / 126 CHAMPS , Have fun. Enjoy</font> ")


end
