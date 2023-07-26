---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---
require('__stdlib__/stdlib/utils/defines/time')
require('util')
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local ERMPlayerUnitHelper = require('__enemyracemanager__/lib/rig/player_unit_helper')
local TerranSound = require('__erm_terran__/prototypes/sound')
local name = 'tank'

local attack_range = ERMPlayerUnitHelper.get_attack_range(1.3, 6)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)
local pollution_to_join_attack = 250
local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }


data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name,
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name,  'MK1' },
        localised_description = { 'entity-description.' .. MOD_NAME .. '/' .. name},
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 150 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        can_open_gates = true,
        resistances = {
            { type = "acid", percent = 60 },
            { type = "poison", percent = 100 },
            { type = "physical", percent = 60 },
            { type = "fire", percent = 60 },
            { type = "explosion", percent = 60 },
            { type = "laser", percent = 60 },
            { type = "electric", percent = 60 },
            { type = "cold", percent = 60 }
        },
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.175 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 1,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = 'cannon-shell',
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 360,
            cooldown_deviation = 0.1,
            warmup = 6,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            ammo_type = {
                category = "cannon-shell",
                target_type = "position",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "terran-tank-explosive-cannon-projectile",
                        starting_speed = 1.5,
                        max_range = ERM_Config.get_max_projectile_range(2),
                        min_range = 10,
                        source_effects =
                        {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot"
                        }
                    }
                }
            },
            sound = TerranSound.attack(name, 0.66, 0.66),
            animation = {
                layers = {
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                        width = 128,
                        height = 128,
                        frame_count = 1,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.2,
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                        width = 128,
                        height = 128,
                        frame_count = 1,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        tint = ERM_UnitTint.tint_shadow(),
                        animation_speed = 0.2,
                        draw_as_shadow = true,
                        shift = { 0.5, 0 }
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-flash.png",
                        width = 128,
                        height = 128,
                        frame_count = 1,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.2,
                        draw_as_glow = true
                    },
                }
            }
        },
        distance_per_frame = 0.5,
        run_animation = {
            layers = {
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 128,
                    height = 128,
                    frame_count = 2,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.6
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 128,
                    height = 128,
                    frame_count = 2,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    tint = ERM_UnitTint.tint_shadow(),
                    shift = { 0.5, 0 },
                    animation_speed = 0.6,
                    draw_as_shadow = true
                }
            }
        },
        dying_explosion = "erm-terran-large-explosion",
        dying_sound = TerranSound.death(name, 0.75),
        corpse = name .. '-corpse',
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
    },
    {
        type = "corpse",
        name = name .. '-corpse',
        icon = "__erm_terran__/graphics/entity/icons/units/" .. name .. ".png",
        icon_size = 64,
        flags = { "placeable-off-grid", "building-direction-8-way", "not-on-map" },
        selection_box = selection_box,
        selectable_in_game = false,
        dying_speed = 0.04,
        time_before_removed = defines.time.second,
        subgroup = "corpses",
        order = "x" .. name,
        animation = Sprites.empty_pictures(),
    }
})

local tank_projectile_mk2 = util.table.deepcopy(data.raw["projectile"]['terran-tank-explosive-cannon-projectile'])
tank_projectile_mk2['name'] = 'terran-tank-explosive-cannon-projectile-mk2'
tank_projectile_mk2['action']['action_delivery']['target_effects'][1]['damage'] = {amount = 200, type = "physical"}
-- Ground AOE --
tank_projectile_mk2['final_action']['action_delivery']['target_effects'][2]['action']['action_delivery']['target_effects'][1]['damage'] = {amount = 200, type = "explosion"}
-- Air AOE --
tank_projectile_mk2['final_action']['action_delivery']['target_effects'][3]['action']['action_delivery']['target_effects'][1]['damage'] = {amount = 100, type = "explosion"}

data:extend({tank_projectile_mk2})

local tank_mk2 = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name])
tank_mk2.name = MOD_NAME .. '/' .. name .. '/mk2'
tank_mk2.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name,  'MK2' }
tank_mk2['icons'][2]['icon'] = "__base__/graphics/icons/signal/signal_2.png"
tank_mk2.max_health = 350 * ERMPlayerUnitHelper.get_health_multiplier()
tank_mk2.movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier()
tank_mk2['attack_parameters']['ammo_type']['action']['action_delivery']['projectile'] = 'terran-tank-explosive-cannon-projectile-mk2'
tank_mk2.resistances = {
    { type = "acid", percent = 80 },
    { type = "poison", percent = 100 },
    { type = "physical", percent = 80 },
    { type = "fire", percent = 80 },
    { type = "explosion", percent = 80 },
    { type = "laser", percent = 80 },
    { type = "electric", percent = 80 },
    { type = "cold", percent = 80 }
},

data:extend({tank_mk2})