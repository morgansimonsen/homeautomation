--[[
%% properties
132 sceneActivation
%% globals
--]]
 
--------- Your Device ID's Here ---------
 
local virtualDevID = 133  --Edit these values!!
local minimoteID = 132
 
------ Do not edit below this line ------
 
local buttonPressed = fibaro:getValue(minimoteID, 'sceneActivation')
fibaro:call(virtualDevID, 'pressButton', buttonPressed)
--[[ FIBARO_GIT_HOOK - DO NOT CHANGE AS IT WILL BE DISCARDED 
@sceneID=12
@name="Minimote Sync"
@roomID=6
@autostart=false
@runConfig=MANUAL_ONLY
@maxRunningInstance=2
@type="com.fibaro.luaScene"
@isLua=true
--]]
