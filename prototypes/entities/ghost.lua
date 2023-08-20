---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 12/3/2022 11:00 PM
---

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---
require('__stdlib__/stdlib/utils/defines/time')
require('util')
local math3d = require "math3d"
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local ERMPlayerUnitHelper = require('__enemyracemanager__/lib/rig/player_unit_helper')

local DataHelper = require('__erm_terran__/prototypes/data_helper')

local TerranSound = require('__erm_terran_hd_assets__/sound')
local AnimationDB = require('__erm_terran_hd_assets__/animation_db')

local name = 'ghost'

-- Misc Settings
local attack_range = ERMPlayerUnitHelper.get_attack_range(1.1, 9)
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)
local pollution_to_join_attack = 250
local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
local selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }


local attackAnimation = AnimationDB.get_layered_animations('units', 'ghost', 'attack')

attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)

local runningAnimation = AnimationDB.get_layered_animations('units', 'ghost', 'run')

runningAnimation = AnimationDB.apply_runtime_tint(runningAnimation, true)

local corpseAnimation = AnimationDB.get_layered_animations('death', 'ghost_death', 'explosion')

-- Firebat MK 1 --
data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name .. '/regular',
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'Regular'},
        localised_description = { 'entity-description.' .. MOD_NAME .. '/' .. name},
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "breaths-air" },
        has_belt_immunity = false,
        max_health = 60 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "/" .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        resistances = DataHelper.getResistance(75),
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 1,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        can_open_gates = true,
        --ai_settings = biter_ai_settings,
        radar_range = 2,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = 'bullet',
            range = attack_range,
            min_attack_distance = attack_range - 3,
            cooldown = 240,
            cooldown_deviation = 0.2,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.ghost_attack(0.5),
            animation = attackAnimation,
            ammo_type =
            {
                category = "bullet",
                action = {
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "damage",
                                    damage = { amount = 500, type = "physical"}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 300, type = "explosion"}
                                },
                                {
                                    type = "create-entity",
                                    entity_name = MOD_NAME.."/small_tri_explosion",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                            }
                        }
                    },
                    {
                        type = "direct",
                        probability = 0.2,
                        action_delivery = {
                            type = "projectile",
                            projectile = MOD_NAME..'/ghost_lockdown_projectile',
                            starting_speed = 1,
                            max_range = attack_range * 1.5
                        }
                    }
                }
            },
        },
        distance_per_frame = 0.16,
        run_animation = runningAnimation,
        dying_sound = TerranSound.marine_death(1),
        corpse = name .. '-corpse',
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
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
        animation = corpseAnimation,
    },
})

-- Ghost Mass Destruction --
local ghost_nuke = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name .. '/regular'])

local ghost_mk2_run_animation = AnimationDB.get_layered_animations('units', 'ghost_mkii', 'run')
ghost_mk2_run_animation = AnimationDB.apply_runtime_tint(ghost_mk2_run_animation, true)
local ghost_mk2_attack_animation = AnimationDB.get_layered_animations('units', 'ghost_mkii', 'attack')
ghost_mk2_attack_animation = AnimationDB.apply_runtime_tint(ghost_mk2_attack_animation, true)


ghost_nuke.name = MOD_NAME .. '/' .. name .. '/nuke'
ghost_nuke.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name, 'Mass Destruction'}
ghost_nuke['icons'][2] = {
    icon = "__base__/graphics/icons/atomic-bomb.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-9,-9}
}
ghost_nuke.movement_speed = 0.225
ghost_nuke.max_health = 60 * ERMPlayerUnitHelper.get_health_multiplier()
ghost_nuke.resistances = DataHelper.getResistance(75)
ghost_nuke.run_animation = ghost_mk2_run_animation
ghost_nuke.repair_speed_modifier = 0.25
ghost_nuke.attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    ammo_category = 'landmine',
    range = 9,
    warmup = 6,
    cooldown = NUKE_WAIT_TIME + 90,
    cooldown_deviation = 0.1,
    sound = TerranSound.nuke_alert(0.66, 1),
    animation = ghost_mk2_attack_animation,
    ammo_type =
    {
        category = "landmine",
        action =
        {
            type = "direct",
            action_delivery = {
                {
                    type = "instant",
                    target_effects = {
                        {
                            type = "script",
                            effect_id = GHOST_ATOMIC_SEQUENCE,
                        }
                    }
                }
            }
        },
    }
}

ghost_nuke.dying_trigger_effect = {
    {
        type = "script",
        effect_id = CANCEL_GHOST_ATOMIC_SEQUENCE,
    }
}

data:extend({ ghost_nuke })


