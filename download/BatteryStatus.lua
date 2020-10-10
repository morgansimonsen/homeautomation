--[[ 
%% properties 
%% globals 
--]] 
 
local minBatteryLevel = 25
local maxID = 200

for id = 1, maxID do 
   local batteryLevel = fibaro:get(id, 'batteryLevel')
  if ( batteryLevel ~= nil) then
	fibaro:debug ('name:'..fibaro:getName(id))
  fibaro:debug ('battlevel:'..batteryLevel)
    fibaro:debug ('----')
    end
end
--[[ FIBARO_GIT_HOOK - DO NOT CHANGE AS IT WILL BE DISCARDED 
@sceneID=16
@name="BatteryStatus"
@roomID=0
@autostart=false
@runConfig=TRIGGER_AND_MANUAL
@maxRunningInstance=2
@type="com.fibaro.luaScene"
@isLua=true
--]]
