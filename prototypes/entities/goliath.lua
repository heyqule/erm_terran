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
local name = 'goliath'

local attack_range = 18

-- Misc Settings
local vision_distance = 30
local pollution_to_join_attack = 250
local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }


local goliath_rocket_projectile = util.table.deepcopy(data.raw["projectile"]['wraith-rocket'])
goliath_rocket_projectile['localised_name'] = {'entity-name.goliath-rocket-projectile'}
goliath_rocket_projectile['name'] = 'goliath-rocket-projectile'
goliath_rocket_projectile['action']['action_delivery']
['target_effects'][5]['action']['action_delivery']
['target_effects'][1]['damage'] = { amount = 60, type = "explosion" }

data:extend({goliath_rocket_projectile})

data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name,
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
        max_health = 250 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        can_open_gates = true,
        resistances = {
            { type = "acid", percent = 75 },
            { type = "poison", percent = 100 },
            { type = "physical", percent = 75 },
            { type = "fire", percent = 75 },
            { type = "explosion", percent = 75 },
            { type = "laser", percent = 75 },
            { type = "electric", percent = 75 },
            { type = "cold", percent = 75 }
        },
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 1,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = 'bullet',
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 150,
            cooldown_deviation = 0.1,
            warmup = 6,
            damage_modifier = 2 + ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.attack(name, 0.66, 0.66),
            ammo_type =
            {
                category = "bullet",
                action =
                {
                    {
                        type = "direct",
                        repeat_count = 2,
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 48, type = "physical"}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 24, type = "explosion"}
                                }
                            }
                        }
                    },
                    {
                        type = "direct",
                        probability = 0.25,
                        action_delivery = {
                            type = "projectile",
                            projectile = "goliath-rocket-projectile",
                            starting_speed = 0.3,
                            max_range = ERM_Config.get_max_projectile_range() * 2,
                            source_effects = {
                                {
                                    type = "play-sound",
                                    sound = {
                                        audible_distance_modifier = 0.5,
                                        variations = {
                                            {
                                                filename = "__erm_terran__/sound/" .. name .. "/attack_missile.ogg",
                                                volume = 0.66
                                            }
                                        }
                                    }
                                }
                            },
                        }
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-bottom.png",
                        width = 76,
                        height = 76,
                        frame_count = 10,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.5,
                        frame_sequence = {1,1,1,1,1,1,1,1,1,1},
                        draw_as_glow = true
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-attack-top.png",
                        width = 76,
                        height = 76,
                        frame_count = 10,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.5,
                        frame_sequence = {1,2,1,2,1,2,1,2,1,2},
                        draw_as_glow = true,
                    },
                    {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-bottom.png",
                    width = 76,
                    height = 76,
                    frame_count = 10,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.5,
                    tint = ERM_UnitTint.tint_shadow(),
                    frame_sequence = {1,1,1,1,1,1,1,1,1,1},
                    draw_as_shadow = true,
                    shift = { 0.5, 0 }
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-attack-top.png",
                        width = 76,
                        height = 76,
                        frame_count = 10,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        tint = ERM_UnitTint.tint_shadow(),
                        animation_speed = 0.5,
                        frame_sequence = {1,2,1,2,1,2,1,2,1,2},
                        draw_as_shadow = true,
                        shift = { 0.5, 0 }
                    },
                }
            }
        },
        distance_per_frame = 0.25,
        run_animation = {
            layers = {
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-bottom.png",
                    width = 76,
                    height = 76,
                    frame_count = 10,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.65,
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-top.png",
                    width = 76,
                    height = 76,
                    frame_count = 10,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.65,
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-bottom.png",
                    width = 76,
                    height = 76,
                    frame_count = 10,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    tint = ERM_UnitTint.tint_shadow(),
                    shift = { 0.5, 0 },
                    animation_speed = 0.65,
                    draw_as_shadow = true
                },
                {
                filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run-top.png",
                width = 76,
                height = 76,
                frame_count = 10,
                axially_symmetrical = false,
                direction_count = 16,
                scale = unit_scale,
                tint = ERM_UnitTint.tint_shadow(),
                shift = { 0.5, 0 },
                animation_speed = 0.65,
                draw_as_shadow = true
                },
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