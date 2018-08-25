--[[
%% properties
%% events
80 CentralSceneEvent
%% globals
--]]

local startSource = fibaro:getSourceTrigger()
fibaro:debug(startSource['type'])
fibaro:debug(startSource['event']['data'])
fibaro:debug(startSource['event']['data']['keyId'])
fibaro:debug(startSource['event']['data']['keyAttribute'])
if (
 ( true )
or
startSource["type"] == "other"
)
  then

local initiallevel = 20
local level = tonumber(fibaro:getValue(54, "value"))
  fibaro:debug(level)

--local level = 20

if (startSource['event']['data']['keyId'] == 2 and startSource['event']['data']['keyAttribute'] == "Pressed" and (level == 0 or level == "off"))-- press off button
then
  fibaro:call(84, "setValue", 20);
  fibaro:call(56, "setValue", 20);
  fibaro:call(58, "setValue", 20);
  fibaro:call(54, "setValue", 20);
     fibaro:debug('turning on')
    fibaro:debug(tonumber(fibaro:getValue(54, "value")))
    fibaro:abort()
end
  
if (startSource['event']['data']['keyId'] == 3 and startSource['event']['data']['keyAttribute'] == "Pressed") -- press off button
then
	fibaro:call(84, "turnOff");
	fibaro:call(54, "turnOff");
	fibaro:call(56, "turnOff");
	fibaro:call(58, "turnOff");
     fibaro:debug('turning off')
    fibaro:debug(tonumber(fibaro:getValue(54, "value")))
end
 
if (startSource['event']['data']['keyId'] == 2 and startSource['event']['data']['keyAttribute'] == "Pressed") -- press once up 5
  then
  level = level + 5
  --fibaro:call(dimmer, "setValue", level)
  fibaro:call(84, "setValue", level);
  fibaro:call(56, "setValue", level);
  fibaro:call(58, "setValue", level);
  fibaro:call(54, "setValue", level);
  fibaro:debug(level..' upped')
  end
 
if (startSource['event']['data']['keyId'] == 4 and startSource['event']['data']['keyAttribute'] == "Pressed") -- press once down 5
  then
level = level - 5
  fibaro:call(84, "setValue", level);
  fibaro:call(56, "setValue", level);
  fibaro:call(58, "setValue", level);
  fibaro:call(54, "setValue", level);
  fibaro:debug(level..' downed')
  end
 
if (startSource['event']['data']['keyId'] == 2 and startSource['event']['data']['keyAttribute'] == "HeldDown") -- press and hold up 10
  then
  level = level + 10
  fibaro:call(84, "setValue", level);
  fibaro:call(56, "setValue", level);
  fibaro:call(58, "setValue", level);
  fibaro:call(54, "setValue", level);
  fibaro:debug(level..' upped')
  end
 
if (startSource['event']['data']['keyId'] == 4 and startSource['event']['data']['keyAttribute'] == "HeldDown") -- press and hold down 10
  then
level = level - 10
  fibaro:call(84, "setValue", level);
  fibaro:call(56, "setValue", level);
  fibaro:call(58, "setValue", level);
  fibaro:call(54, "setValue", level);
  fibaro:debug(level..' downed')
  end
 
--if (level <1) then
--  fibaro:call(84, "turnOff");
 -- fibaro:call(56, "turnOff");
--  fibaro:call(58, "turnOff");
--  fibaro:call(54, "turnOff");
-- fibaro:debug('off') 
--end
  end