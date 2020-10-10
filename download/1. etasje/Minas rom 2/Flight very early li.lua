--[[
%% autostart
%% properties
%% weather
%% events
%% globals
--]]

local sourceTrigger = fibaro:getSourceTrigger();

function tempFunc()
  local currentDate = os.date("*t");
  local startSource = fibaro:getSourceTrigger();
  if (
   ( string.format("%02d:%02d", currentDate.hour, currentDate.min) == "05:20" )
  )
  then
      fibaro:call(161, "turnOn");
      fibaro:debug('turning on')
    fibaro:debug(startSource['type'])
  end
  
  setTimeout(tempFunc, 60*1000)
end

if (sourceTrigger["type"] == "autostart") then
	tempFunc()
else
  local currentDate = os.date("*t");
  local startSource = fibaro:getSourceTrigger();
  if (
  startSource["type"] == "other"
  )
  then
      fibaro:call(161, "turnOn");
      fibaro:debug('turning on')
    fibaro:debug(startSource['type'])
  end

end
--[[ FIBARO_GIT_HOOK - DO NOT CHANGE AS IT WILL BE DISCARDED 
@sceneID=14
@name="Flight very early li"
@roomID=156
@autostart=true
@runConfig=MANUAL_ONLY
@maxRunningInstance=2
@type="com.fibaro.luaScene"
@isLua=true
--]]
