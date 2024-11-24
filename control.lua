--
-- Created by IntelliJ IDEA.
-- User: heyqule
-- Date: 02/14/2021
-- Time: 5:04 PM
-- To change this template use File | Settings | File Templates.
--
require("global")
local String = require("__erm_libs__/stdlib/string")
local gui = require("__enemyracemanager__/gui/army_control_window")
local CustomAttacks = require("__erm_terran__/scripts/custom_attacks")
local RaceSettingsHelper = require("__enemyracemanager__/lib/helper/race_settings_helper")

local populations = {
    ["battlecruiser"] = 5,
    ["marine"] = 1,
    ["firebat"] = 1,
    ["ghost"] = 1,
    ["siege_tank"] = 3,
    ["wraith"] = 2,
    ["goliath"] = 2,
    ["valkyrie"] = 2,
    ["science_vessel"] = 2,
    ["vulture"] = 2,
    ['spidermine'] = 0,
}

local refresh_data = function()
    -- Register Army Units
    for _, prototype in pairs(prototypes.get_entity_filtered({{filter = "type", type = "unit"}})) do
        local nameToken = String.split(prototype.name, "--")
        if nameToken[1] == MOD_NAME and populations[nameToken[2]] then
            remote.call("enemyracemanager","army_units_register", prototype.name, populations[nameToken[2]]);
        end
    end

    -- Register Command Center
    for _, prototype in pairs(prototypes.get_entity_filtered({{filter = "type", type = "radar"}})) do
        local nameToken = String.split(prototype.name, "--")
        if nameToken[1] == MOD_NAME then
            remote.call("enemyracemanager","army_command_center_register", prototype.name);
        end
    end

    -- Register Auto Deployers
    for _, prototype in pairs(prototypes.get_entity_filtered({{filter = "type", type = "assembling-machine"}})) do
        local nameToken = String.split(prototype.name, "--")
        if nameToken[1] == MOD_NAME then
            remote.call("enemyracemanager","army_deployer_register", prototype.name);
        end
    end
end

local addRaceSettings = function()
    local race_settings = remote.call("enemyracemanager", "get_race", MOD_NAME)
    if race_settings == nil then
        race_settings = {}
    end

    race_settings.race =  race_settings.race or MOD_NAME

    race_settings.timed_units = {
        spidermine=true,
    }


    RaceSettingsHelper.process_unit_spawn_rate_cache(race_settings)

    remote.call("enemyracemanager", "register_race", race_settings)

    -- reload local cache
    CustomAttacks.get_race_settings(MOD_NAME, true)
end

local adjust_color = function(player_index)
    local color = game.players[player_index].color
    local max_strength = 0.5
    if color.r > max_strength or color.g > max_strength or color.b > max_strength then
        color.r = color.r * max_strength
        color.g = color.g * max_strength
        color.b = color.b * max_strength
    end

    local force = game.players[player_index].force
    force.custom_color = color
end

script.on_init(function(event)
    refresh_data()
    addRaceSettings()

    storage.new_color_change = false
    --- Used for ghost"s nuke launch tracking, data structure
    --- storage.nuke_tracker[unit.unit_number] = {
    ---     entity = entity
    ---     launched_tick = event.tick
    ---     drawing = target_drawing
    --- }
    storage.nuke_tracker = storage.nuke_tracker or {}
    storage.nuke_tracker_total = storage.nuke_tracker_total or 0
end)

script.on_configuration_changed(function(event)
    refresh_data()
    addRaceSettings()
    storage.nuke_tracker = storage.nuke_tracker or {}
    storage.nuke_tracker_total = storage.nuke_tracker_total or 0
end)
---
--- Cap max color to belong 66% to avoid opaque color mask.
---
script.on_event(defines.events.on_console_command, function(event)
    if event.command == "color" and game.players[event.player_index].admin then
        adjust_color(event.player_index)
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    if storage.new_color_change ~= false and game.players[event.player_index].admin then
        adjust_color(event.player_index)
        storage.new_color_change = true
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
    end,
    [BUNKER_SPAWN_MARINE] = function(args)
        CustomAttacks.spawn_marine(args)
    end
}

script.on_event(defines.events.on_script_trigger_effect, function(event)
    if  attack_functions[event.effect_id] and
            CustomAttacks.valid(event, MOD_NAME)
    then
        attack_functions[event.effect_id](event)
    end
end)

script.on_nth_tick(903, function(event)
    CustomAttacks.clear_time_to_live_units(event)
end)

script.on_nth_tick(93, function(event)
    CustomAttacks.spawn_nuke(event)
end)

local RemoteApi = require("scripts/remote")
remote.add_interface("erm_terran", RemoteApi)