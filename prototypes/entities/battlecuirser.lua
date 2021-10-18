---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---
require('__stdlib__/stdlib/utils/defines/time')
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local ERMDataHelper = require('__enemyracemanager__/lib/helper/data_helper')
local TerranSound = require('__erm_terran__/prototypes/sound')
local name = 'battlecruiser'


local attack_range = 16

-- Misc Settings
local vision_distance = 35
local pollution_to_join_attack = 250
local distraction_cooldown = 20

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } }
local selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } }

local battlecruiser_animation =  {
    layers = {
        {
            filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
            width = 120,
            height = 120,
            frame_count = 1,
            repeat_count = 2,
            axially_symmetrical = false,
            direction_count = 16,
            scale = unit_scale,
            animation_speed = 0.6,
        },
        {
            filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-effect.png",
            width = 120,
            height = 120,
            frame_count = 2,
            axially_symmetrical = false,
            direction_count = 16,
            scale = unit_scale,
            animation_speed = 0.6,
            draw_as_glow = true,
            blend_mode = 'additive',
            tint = ERM_UnitTint.tint_plane_burner(),
        },
        {
            filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
            width = 120,
            height = 120,
            frame_count = 1,
            repeat_count = 2,
            axially_symmetrical = false,
            direction_count = 16,
            scale = unit_scale,
            tint = ERM_UnitTint.tint_shadow(),
            animation_speed = 0.6,
            draw_as_shadow = true,
            shift = { 6, 0 }
        }
    }
}


data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name .. '/yamato',
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name .. '/yamato' },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_Y.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "not-flammable" },
        has_belt_immunity = true,
        max_health = 5000,
        order = MOD_NAME .. name,
        subgroup = "erm_controlable_units",
        shooting_cursor_size = 2,
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
        collision_mask = ERMDataHelper.getFlyingCollisionMask(),
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.225,
        repair_speed_modifier = 0.33,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            ammo_category = 'laser',
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 360,
            cooldown_deviation = 0.1,
            warmup = 6,
            ammo_type = {
                category = "laser",
                target_type = "direction",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = name .. "-yamato-projectile",
                        starting_speed = 0.25,
                    }
                }
            },
            sound = TerranSound.attack(name, 0.75, 1.25),
            animation = battlecruiser_animation,
        },
        render_layer = "air-object",
        final_render_layer = "air-object",
        distance_per_frame = 0.5,
        run_animation = battlecruiser_animation,
        dying_explosion = "massive-explosion",
        dying_sound = TerranSound.death(name, 0.75),
        corpse = name .. '-corpse',
        map_color = ERM_UnitTint.tint_army_color()
    },
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name .. '/laser',
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name .. '/laser' },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_L.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "not-flammable" },
        has_belt_immunity = true,
        max_health = 3500,
        order = MOD_NAME .. name,
        subgroup = "erm_controlable_units",
        shooting_cursor_size = 2,
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
        collision_mask = ERMDataHelper.getFlyingCollisionMask(),
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.225,
        repair_speed_modifier = 0.33,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            ammo_category = 'laser',
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 90,
            cooldown_deviation = 0.1,
            warmup = 6,
            ammo_type = {
                category = "laser",
                target_type = "direction",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = name .. "-laser-projectile",
                        starting_speed = 0.5,
                    }
                }
            },
            sound = TerranSound.laser_attack(name, 0.75, 1.25),
            animation = battlecruiser_animation,
        },
        render_layer = "air-object",
        final_render_layer = "air-object",
        distance_per_frame = 0.5,
        run_animation = battlecruiser_animation,
        dying_explosion = "massive-explosion",
        dying_sound = TerranSound.death(name, 0.75),
        corpse = name .. '-corpse',
        map_color = ERM_UnitTint.tint_army_color()
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