---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 11/17/2022 7:59 PM
---
local util = require('util')
local hit_effects = require ("__base__/prototypes/entity/hit-effects")
local sounds = require ("__base__/prototypes/entity/sounds")
local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')

local AnimationDB = require('__erm_terran_hd_assets__/animation_db')

local idle = AnimationDB.get_layered_animations('buildings', 'barracks', 'run')

idle = AnimationDB.change_frame_count(idle, 1)

idle = AnimationDB.alter_team_color(idle, nil, true)

local working = AnimationDB.get_layered_animations('buildings', 'barracks', 'run')

working = AnimationDB.alter_team_color(working, nil, true)

data:extend({
    {
        type = "assembling-machine",
        name = MOD_NAME .. '/barrack',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_B.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 1, result = MOD_NAME .. '/barrack'},
        max_health = 2000,
        corpse = "terran-large-base-corpse",
        dying_explosion = "erm-terran-building-large-explosion",
        allow_run_time_change_of_is_military_target = false,
        is_military_target = true,
        resistances =
        {
            { type = "poison", percent = 50 },
            { type = "physical", percent = 50 },
            { type = "fire", percent = 50 },
            { type = "explosion", percent = 50},
            { type = "laser", percent = 50 },
            { type = "electric", percent = 50 },
            { type = "cold", percent = 50},
            { type = "impact", percent = 90, decrease = 50 },
        },
        collision_box = {{-3, -2.7}, {3.2, 2.7}},
        selection_box = {{-3, -3}, {3.2, 3}},
        map_generator_bounding_box = {{-4,-4}, {4.2,4}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 2
        },
        energy_usage = "1MW",
        crafting_categories = {'erm_controllable_infantry'},
        crafting_speed = 1,
        animation = working,
        idle_animation = idle,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/assembling-machine-t3-1.ogg",
                    volume = 0.45
                }
            },
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
    },
})