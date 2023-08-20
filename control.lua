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
local CustomAttacks = require('__erm_terran__/scripts/custom_attacks')
local ErmRaceSettingsHelper = require('__enemyracemanager__/lib/helper/race_settings_helper')

local populations = {
    ['battlecruiser'] = 5,
    ['marine'] = 1,
    ['firebat'] = 1,
    ['ghost'] = 1,
    ['siege_tank'] = 3,
    ['wraith'] = 2,
    ['goliath'] = 2,
    ['valkyrie'] = 2,
    ['science_vessel'] = 2,
    ['vulture'] = 2,
}

local refresh_data = function()
    -- Register Army Units
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "unit"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME and populations[nameToken[2]] then
            remote.call('enemyracemanager','army_units_register', prototype.name, populations[nameToken[2]]);
        end
    end

    -- Register Command Center
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "radar"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME then
            remote.call('enemyracemanager','army_command_center_register', prototype.name);
        end
    end

    -- Register Auto Deployers
    for _, prototype in pairs(game.get_filtered_entity_prototypes({{filter = "type", type = "assembling-machine"}})) do
        local nameToken = String.split(prototype.name, '/')
        if nameToken[1] == MOD_NAME then
            remote.call('enemyracemanager','army_deployer_register', prototype.name);
        end
    end
end

local addRaceSettings = function()
    local race_settings = remote.call('enemyracemanager', 'get_race', MOD_NAME)
    if race_settings == nil then
        race_settings = {}
    end

    race_settings.race =  race_settings.race or MOD_NAME

    race_settings.timed_units = {
        spidermine=true,
    }


    ErmRaceSettingsHelper.process_unit_spawn_rate_cache(race_settings)

    remote.call('enemyracemanager', 'register_race', race_settings)

    -- reload local cache
    CustomAttacks.get_race_settings(MOD_NAME, true)
end

Event.on_init(function(event)
    refresh_data()
    addRaceSettings()


    --- Used for ghost's nuke launch tracking, data structure
    --- global.nuke_tracker[unit.unit_number] = {
    ---     entity = entity
    ---     launched_tick = event.tick
    ---     drawing = target_drawing
    --- }
    global.nuke_tracker = global.nuke_tracker or {}

    global.nuke_tracker_total = global.nuke_tracker_total or 0
end)

Event.on_configuration_changed(function(event)
    refresh_data()
    addRaceSettings()
    for _, player in pairs(game.connected_players) do
        gui.update_overhead_button(player.index)
    end
end)
---
--- Cap max color to belong 66% to avoid opaque color mask.
---
Event.register(defines.events.on_console_command, function(event)
    if event.command == 'color' then
        local color = game.players[event.player_index].color
        local tint_alpha_options_as_dec = {0.1, 0.25, 0.5, 0.66, 0.75, 0.9}
        local max_strength = tint_alpha_options_as_dec[settings.startup[MOD_NAME..'-team_blend_mode'].value]
        if color.r > max_strength or color.g > max_strength or color.b > max_strength then
            color.r = color.r * max_strength
            color.g = color.g * max_strength
            color.b = color.b * max_strength
        end

        local force = game.players[event.player_index].force
        force.custom_color = color
    end
end)


local attack_functions = {
    [SELF_DESTRUCT_ATTACK] = function(args)
        CustomAttacks.process_self_destruct(args)
    end,
    [TIME_TO_LIVE_DIED] = function(args)
        CustomAttacks.process_time_to_live_unit_died(args)
    end,
    [TIME_TO_LIVE_CREATED] = function(args)
        CustomAttacks.process_time_to_live_unit_created(args)
    end,
    [GHOST_ATOMIC_SEQUENCE] = function(args)
        CustomAttacks.add_nuke_to_queue(args)
    end,
    [CANCEL_GHOST_ATOMIC_SEQUENCE] = function(args)
        CustomAttacks.cancel_nuke_from_queue(args)
    end
}
Event.register(defines.events.on_script_trigger_effect, function(event)
    if  attack_functions[event.effect_id] and
            CustomAttacks.valid(event, MOD_NAME)
    then
        attack_functions[event.effect_id](event)
    end
end)

Event.on_nth_tick(903, function(event)
    CustomAttacks.clear_time_to_live_units(event)
end)

Event.on_nth_tick(93, function(event)
    CustomAttacks.spawn_nuke(event)
end)

Event.register(defines.events.on_player_created, function(event)
    gui.update_overhead_button(event.player_index)
end)

local RemoteApi = require('scripts/remote')
remote.add_interface("erm_terran", RemoteApi)