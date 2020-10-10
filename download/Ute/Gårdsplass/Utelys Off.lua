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
 ( ((currentDate.wday == 1 or currentDate.wday == 2 or currentDate.wday == 3 or currentDate.wday == 4 or currentDate.wday == 5 or currentDate.wday == 6 or currentDate.wday == 7) and string.format("%02d", currentDate.hour) .. ":" .. string.format("%02d", currentDate.min) == fibaro:getValue(1, "sunriseHour")) )
)
then
	fibaro:call(168, "turnOff");
	fibaro:call(97, "turnOff");
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
	fibaro:call(168, "turnOff");
	fibaro:call(97, "turnOff");
end

end


--[[ FIBARO_GIT_HOOK - DO NOT CHANGE AS IT WILL BE DISCARDED 
@sceneID=2
@name="Utelys Off"
@roomID=8
@autostart=true
@runConfig=TRIGGER_AND_MANUAL
@maxRunningInstance=2
@type="com.fibaro.blockScene"
@isLua=false
--]]
