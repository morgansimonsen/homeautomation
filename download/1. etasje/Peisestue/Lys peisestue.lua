--[[
%% properties
132 sceneActivation
%% globals
--]]

fibaro:debug(string.format("---- Scene %s start ----",__fibaroSceneId))
local ButtonPressed = fibaro:getValue(132, "sceneActivation")
local startSource = fibaro:getSourceTrigger()

fibaro:debug("Trigger info:")
fibaro:debug("Type:         "..startSource['type'])
fibaro:debug("DeviceID:     "..startSource['deviceID'])
fibaro:debug("PropertyName: "..startSource['propertyName'])

local deviceid_peis = 184
local deviceid_kino = 312
local initiallevel = 50

local level_peis = tonumber(fibaro:getValue(deviceid_peis, "value"))
local level_kino = tonumber(fibaro:getValue(deviceid_kino, "value"))

fibaro:debug('Level current '..fibaro:getName(deviceid_peis)..': '..level_peis)
fibaro:debug('Level current '..fibaro:getName(deviceid_kino)..': '..level_kino)

-- Button 1 = Kino turn on
if (tonumber(ButtonPressed) == 1 and (level_kino == 0 or level_kino == "off"))
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
	fibaro:call(deviceid_kino, "setValue", initiallevel);
    fibaro:debug('Kino turning on')
  	fibaro:sleep(500)
    fibaro:debug('Level new Kino: '..tonumber(fibaro:getValue(deviceid_kino, "value")))
    fibaro:abort()
end

-- ### KINO ###
-- Button 1 = Kino up
if (tonumber(ButtonPressed) == 1)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
  	level_kino = level_kino + 10
	fibaro:call(deviceid_kino, "setValue", level_kino);
    fibaro:debug('Kino upped')
  	fibaro:sleep(500)
    fibaro:debug('Level new Kino: '..tonumber(fibaro:getValue(deviceid_kino, "value")))
end

-- Button 5 = Kino down
if (tonumber(ButtonPressed) == 5)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
  	level_kino = level_kino - 10
	fibaro:call(deviceid_kino, "setValue", level_kino);
    fibaro:debug('Kino downed')
  	fibaro:sleep(500)
    fibaro:debug('Level new Kino: '..tonumber(fibaro:getValue(deviceid_kino, "value")))
end

-- Button 6 = Kino off
if (tonumber(ButtonPressed) == 6)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
	fibaro:call(deviceid_kino, "turnOff");
    fibaro:debug('Kino turning off')
  	fibaro:sleep(500)
    fibaro:debug('Level new Kino: '..tonumber(fibaro:getValue(deviceid_kino, "value")))
end

-- ### PEIS ###
-- Button 3 = Peis turn on
if (tonumber(ButtonPressed) == 3 and (level_peis == 0 or level_peis == "off"))
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
	fibaro:call(deviceid_peis, "setValue", initiallevel);
    fibaro:debug('Peis turning on')
  	fibaro:sleep(500)
    fibaro:debug('Level new Peis: '..tonumber(fibaro:getValue(deviceid_peis, "value")))
    fibaro:abort()
end

-- Button 3 = Peis up
if (tonumber(ButtonPressed) == 3)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
  	level_peis = level_peis + 10
	fibaro:call(deviceid_peis, "setValue", level_peis);
    fibaro:debug('Peis upped')
  	fibaro:sleep(500)
    fibaro:debug('Level new Peis: '..tonumber(fibaro:getValue(deviceid_peis, "value")))
end

-- Button 7 = Peis down
if (tonumber(ButtonPressed) == 7)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
  	level_peis = level_peis - 10
	fibaro:call(deviceid_peis, "setValue", level_peis);
    fibaro:debug('Peis downed')
  	fibaro:sleep(500)
    fibaro:debug('Level new Peis: '..tonumber(fibaro:getValue(deviceid_peis, "value")))
end

-- Button 8 = Peis off
if (tonumber(ButtonPressed) == 8)
then
    fibaro:debug("MiniMote button "..ButtonPressed.." pressed")
	fibaro:call(deviceid_peis, "turnOff");
    fibaro:debug('Peis turning off')
  	fibaro:sleep(500)
    fibaro:debug('Level new Peis: '..tonumber(fibaro:getValue(deviceid_peis, "value")))
end

fibaro:debug(string.format("---- Scene %s end ----",__fibaroSceneId))
--[[ FIBARO_GIT_HOOK - DO NOT CHANGE AS IT WILL BE DISCARDED 
@sceneID=19
@name="Lys peisestue"
@roomID=6
@autostart=false
@runConfig=TRIGGER_AND_MANUAL
@maxRunningInstance=2
@type="com.fibaro.luaScene"
@isLua=true
--]]
