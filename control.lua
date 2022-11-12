--
-- Created by IntelliJ IDEA.
-- User: heyqule
-- Date: 02/14/2021
-- Time: 5:04 PM
-- To change this template use File | Settings | File Templates.
--
require('global')
local Event = require('__stdlib__/stdlib/event/event')
local String = require('__stdlib__/stdlib/utils/string')
local ErmConfig = require('__enemyracemanager__/lib/global_config')

local populations = {
    ['battlecruiser'] = 5,
    ['marine'] = 1,
    ['tank'] = 2,
    ['wraith'] = 2,
}

local refresh_data = function()
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "unit"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME and populations[nameToken[2]] then
            remote.call('enemy_race_manager','army_register_unit', prototype.name, populations[nameToken[2]]);
        end
    end
end

Event.on_init(function(event)
    refresh_data()
end)

Event.on_configuration_changed(function(event)
    refresh_data()
end)
