--[[
%% properties
%% events
265 CentralSceneEvent
%% globals
--]]

local startSource = fibaro:getSourceTrigger()
fibaro:debug(startSource['type'])
fibaro:debug(startSource['event']['data'])
fibaro:debug(startSource['event']['data']['keyId'])
fibaro:debug(startSource['event']['data']['keyAttribute'])
if ( ( true ) or startSource["type"] == "other" ) then
    if (startSource['event']['data']['keyId'] == 1 and startSource['event']['data']['keyAttribute'] == "Pressed") -- press on button
    then
        fibaro:debug('turning on')
        fibaro:call(114, "turnOn");
    --    fibaro:abort()
    end
    
    if (startSource['event']['data']['keyId'] == 3 and startSource['event']['data']['keyAttribute'] == "Pressed") -- press off button
    then
    fibaro:call(114, "turnOff");
        fibaro:debug('turning off')
    end
end

