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
local gui = require("__enemyracemanager__/gui/army_control_window")

local populations = {
    ['battlecruiser'] = 5,
    ['marine'] = 1,
    ['tank'] = 2,
    ['wraith'] = 2,
}

local refresh_data = function()
    -- Register Army Units
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "unit"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME and populations[nameToken[2]] then
            remote.call('enemy_race_manager','army_units_register', prototype.name, populations[nameToken[2]]);
        end
    end

    -- Register Command Center
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "radar"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME then
            remote.call('enemy_race_manager','army_command_center_register', prototype.name);
        end
    end

    -- Register Auto Deployer
end

Event.on_init(function(event)
    refresh_data()
end)

Event.on_configuration_changed(function(event)
    refresh_data()
    for _, player in pairs(game.connected_players) do
        gui.update_overhead_button(player.index)
    end
end)


Event.register(defines.events.on_player_created, function(event)
    gui.update_overhead_button(event.player_index)
end)