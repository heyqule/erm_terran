---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---
require('__stdlib__/stdlib/utils/defines/time')
require('util')
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local TerranSound = require('__erm_terran__/prototypes/sound')
local name = 'marine'

local attack_range = 12

-- Misc Settings
local vision_distance = 25
local pollution_to_join_attack = 250
local distraction_cooldown = 20

-- Animation Settings
local unit_scale = 1.25

local collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } }
local selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }

function get_resistance(value)
    return {
        { type = "acid", percent = value },
        { type = "poison", percent = value },
        { type = "physical", percent = value },
        { type = "fire", percent = value },
        { type = "explosion", percent = value },
        { type = "laser", percent = value },
        { type = "electric", percent = value },
        { type = "cold", percent = value }
    }
end

-- Marine MK 1 --
data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name .. '/mk1',
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'MK 1'},
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
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "breaths-air" },
        has_belt_immunity = false,
        max_health = 300,
        order = MOD_NAME .. name,
        subgroup = "erm_controlable_units",
        shooting_cursor_size = 2,
        resistances = get_resistance(30),
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.15,
        repair_speed_modifier = 0.5,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        can_open_gates = true,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            ammo_category = 'bullet',
            range = attack_range,
            cooldown = 20,
            cooldown_deviation = 0.1,
            ammo_type =
            {
                category = "bullet",
                action =
                {
                    type = "direct",
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
                                damage = { amount = 8, type = "physical"}
                            }
                        }
                    }
                }
            },
            sound = TerranSound.attack(name, 0.5, 0.3),
            animation = {
                layers = {
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-attack-effect.png",
                        width = 64,
                        height = 64,
                        frame_count = 4,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        frame_sequence = { 1, 2, 3, 4, 3, 4, 3, 4 },
                        draw_as_glow = true,
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-attack.png",
                        width = 64,
                        height = 64,
                        frame_count = 4,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        frame_sequence = { 1, 2, 3, 4, 3, 4, 3, 4 }
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-attack.png",
                        width = 64,
                        height = 64,
                        frame_count = 4,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        frame_sequence = { 1, 2, 3, 4, 3, 4, 3, 4 },
                        draw_as_shadow = true,
                        shift = { 0.25, 0 },
                        tint = ERM_UnitTint.tint_shadow(),
                    },
                }
            }
        },
        distance_per_frame = 0.2,
        run_animation = {
            layers = {
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 64,
                    height = 64,
                    frame_count = 9,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 64,
                    height = 64,
                    frame_count = 9,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    draw_as_shadow = true,
                    shift = { 0.25, 0 },
                    tint = ERM_UnitTint.tint_shadow(),
                }
            }
        },
        dying_sound = TerranSound.marine_death(1),
        corpse = name .. '-corpse'
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
        time_before_removed = defines.time.minute * settings.startup["enemyracemanager-enemy-corpse-time"].value,
        subgroup = "corpses",
        order = "x" .. name,
        final_render_layer = "lower-object-above-shadow",
        animation = {
            filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-death.png",
            width = 64,
            height = 64,
            frame_count = 8,
            direction_count = 1,
            axially_symmetrical = false,
            scale = unit_scale,
            animation_speed = 0.2
        },
    },
})

-- Marine MK2 --
local marine_mk2 = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name .. '/mk1'])

marine_mk2.name = MOD_NAME .. '/' .. name .. '/mk2'
marine_mk2.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'MK 2'}
marine_mk2['icons'][2] = {
    icon = "__base__/graphics/icons/signal/signal_2.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-9,-9}
}
marine_mk2.max_health = 500
marine_mk2.resistances = get_resistance(50)
marine_mk2['attack_parameters']['ammo_type']['action']['action_delivery']['target_effects'][2] =
{
    type = "damage",
    damage = { amount = 12, type = "physical"}
}

data:extend({marine_mk2})

-- Marine MK3 --
local marine_mk3 = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name .. '/mk1'])

marine_mk3.name = MOD_NAME .. '/' .. name .. '/mk3'
marine_mk3.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'MK 3'}
marine_mk3['icons'][2] = {
    icon = "__base__/graphics/icons/signal/signal_3.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-9,-9}
}
marine_mk3.max_health = 750
marine_mk3.resistances = get_resistance(70)
marine_mk3['attack_parameters']['ammo_type']['action']['action_delivery']['target_effects'][2] =
{
    type = "damage",
    damage = { amount = 48, type = "physical"}
}

data:extend({marine_mk3})
