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

local idle = AnimationDB.get_layered_animations('buildings', 'command_centre', 'run')

idle = AnimationDB.change_frame_count(idle, 1)

idle = AnimationDB.alter_team_color(idle, nil, true)

data:extend({
    {
        type = "radar",
        name = MOD_NAME .. '/command-center',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_C.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = MOD_NAME .. '/command-center'},
        max_health = 3000,
        corpse = "terran-large-base-corpse",
        dying_explosion = "erm-terran-building-xlarge-explosion",
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
        collision_box = {{-3.7, -2.7}, {3.2, 2.7}},
        selection_box = {{-3.7, -3}, {3.2, 3}},
        map_generator_bounding_box = {{-4.7,-4}, {4.2,4}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_per_sector = "100MJ",
        max_distance_of_sector_revealed = 14,
        max_distance_of_nearby_sector_revealed = 3,
        energy_per_nearby_scan = "10MJ",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage = "10MW",
        pictures = idle,
        vehicle_impact_sound = sounds.generic_impact,
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/radar.ogg",
                    volume = 0.8
                }
            },
            max_sounds_per_type = 3,
            --audible_distance_modifier = 0.8,
            use_doppler_shift = false
        },
        radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
        rotation_speed = 0,
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
    },
})