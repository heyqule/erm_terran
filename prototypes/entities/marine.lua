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
local TerranSound = require('__erm_terran_hd_assets__/sound')
local DataHelper = require('__erm_terran__/prototypes/data_helper')
local AnimationDB = require('__erm_terran_hd_assets__/animation_db')
local name = 'marine'

local attack_range = ERMPlayerUnitHelper.get_attack_range(0.86, 0)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)
local pollution_to_join_attack = 250
local distraction_cooldown = 30


local collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
local selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }

local attackAnimation = AnimationDB.get_layered_animations('units', 'marine', 'attack')

attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)

local runningAnimation = AnimationDB.get_layered_animations('units', 'marine', 'run')

runningAnimation = AnimationDB.apply_runtime_tint(runningAnimation, true)

local attackAnimation2 = AnimationDB.get_layered_animations('units', 'marine_mkii', 'attack')

attackAnimation2 = AnimationDB.apply_runtime_tint(attackAnimation2, true)

local runningAnimation2 = AnimationDB.get_layered_animations('units', 'marine_mkii', 'run')

runningAnimation2 = AnimationDB.apply_runtime_tint(runningAnimation2, true)

local attackAnimation3 = AnimationDB.get_layered_animations('units', 'marine_mkiii', 'attack')

attackAnimation3 = AnimationDB.apply_runtime_tint(attackAnimation3, true)

local runningAnimation3 = AnimationDB.get_layered_animations('units', 'marine_mkiii', 'run')

runningAnimation3 = AnimationDB.apply_runtime_tint(runningAnimation3, true)

local corpseAnimation = AnimationDB.get_single_animation('death', 'marine_death', 'explosion')

-- Marine MK 1 --
data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name .. '/mk1',
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'MK 1'},
        localised_description = { 'entity-description.' .. MOD_NAME .. '/' .. name},
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine256.png",
                icon_size = 256,
            },
            --{
            --    icon = "__base__/graphics/icons/signal/signal_1.png",
            --    icon_size = 64,
            --    scale = 0.25,
            --    shift = {-9,-9}
            --},
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "breaths-air" },
        has_belt_immunity = false,
        max_health = 40 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "/" .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        resistances = DataHelper.getResistance(40),
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.15 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 1,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        can_open_gates = true,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = 'bullet',
            range = attack_range,
            min_attack_distance = attack_range - 2,
            cooldown = 75,
            cooldown_deviation = 0.2,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            ammo_type =
            {
                category = "bullet",
                action = {
                    {
                        type = "direct",
                        repeat_count = 4,
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "damage",
                                    damage = { amount = 10, type = "physical"}
                                }
                            }
                        }
                    },
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = MOD_NAME.."/marine_attack_hit-explosion",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                            }
                        }
                    }
                }
            },
            sound = TerranSound.marine_attack(0.5),
            animation = attackAnimation
        },
        distance_per_frame = 0.16,
        run_animation = runningAnimation,
        dying_sound = TerranSound.marine_death(1),
        corpse = name .. '-corpse',
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
        light = DataHelper.getLight()
    },
    {
        type = "corpse",
        name = name .. '-corpse',
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/" .. name .. ".png",
        icon_size = 64,
        flags = { "placeable-off-grid", "building-direction-8-way", "not-on-map" },
        selection_box = selection_box,
        selectable_in_game = false,
        dying_speed = 0.04,
        time_before_removed = defines.time.minute * settings.startup["enemyracemanager-enemy-corpse-time"].value,
        subgroup = "corpses",
        order = "x" .. name,
        final_render_layer = "lower-object-above-shadow",
        animation = corpseAnimation,
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
marine_mk2.movement_speed = 0.175 * ERMPlayerUnitHelper.get_speed_multiplier()
marine_mk2.max_health = 60 * ERMPlayerUnitHelper.get_health_multiplier()
marine_mk2.resistances = DataHelper.getResistance(55)
marine_mk2.run_animation = runningAnimation2
marine_mk2['attack_parameters']['ammo_type']['action'][1]['repeat_count'] = 5
marine_mk2['attack_parameters']['ammo_type']['action'][1]['action_delivery']['target_effects'][1] =
{
    type = "damage",
    damage = { amount = 15, type = "physical"}
}
marine_mk2['attack_parameters']['animation'] = attackAnimation2

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
marine_mk3.max_health = 100 * ERMPlayerUnitHelper.get_health_multiplier()
marine_mk3.movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier()
marine_mk3.resistances = DataHelper.getResistance(75)
marine_mk3.run_animation = runningAnimation3
marine_mk3['attack_parameters']['ammo_type']['action'][1]['repeat_count'] = 6
marine_mk3['attack_parameters']['ammo_type']['action'][1]['action_delivery']['target_effects'][1] =
{
    type = "damage",
    damage = { amount = 42, type = "physical"}
}
marine_mk3['attack_parameters']['animation'] = attackAnimation3
data:extend({marine_mk3})
