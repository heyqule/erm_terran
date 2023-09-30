---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/13/2023 3:27 PM
---

require('__stdlib__/stdlib/utils/defines/time')
require('util')
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local ERMDataHelper = require('__enemyracemanager__/lib/rig/data_helper')
local ERMPlayerUnitHelper = require('__enemyracemanager__/lib/rig/player_unit_helper')
local TerranSound = require('__erm_terran_hd_assets__/sound')
local AnimationDB = require('__erm_terran_hd_assets__/animation_db')
local name = 'spidermine'

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(ERMPlayerUnitHelper.get_attack_range(1))
local pollution_to_join_attack = 250
local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }


local runAnimation = AnimationDB.get_layered_animations('units', 'spidermine', 'run')

runAnimation = AnimationDB.apply_runtime_tint(runAnimation, true)

data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            }
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 80 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "/" .. name,
        subgroup = "enemies",
        shooting_cursor_size = 2,
        can_open_gates = true,
        alert_when_damaged = false,
        alert_when_attacking = false,
        resistances = {
            { type = "acid", percent = 66 },
            { type = "poison", percent = 100 },
            { type = "physical", percent = 66 },
            { type = "fire", percent = 66 },
            { type = "explosion", percent = 66 },
            { type = "laser", percent = 66 },
            { type = "electric", percent = 66 },
            { type = "cold", percent = 66 }
        },
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.3 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 1,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        min_pursue_time = 60 * defines.time.second,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "landmine",
            range = 1,
            cooldown = 90,
            cooldown_deviation = 0.2,
            warmup = 15,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.spidermine_burrow(0.5),
            ammo_type = {
                category = "landmine",
                target_type = "direction",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "instant",
                        source_effects =
                        {
                            {
                                type = "script",
                                effect_id = SELF_DESTRUCT_ATTACK,
                            },
                            {
                                type = "create-entity",
                                entity_name =  MOD_NAME.."/spidermine-explosion"
                            }
                        },
                        target_effects = {
                            {
                                type = "play-sound",
                                sound = TerranSound.spidermine_attack(0.5)
                            },
                            {
                                type = "nested-result",
                                action = {
                                    type = "area",
                                    force = 'not-same',
                                    radius = 4,
                                    ignore_collision_condition = true,
                                    action_delivery = {
                                        type = "instant",
                                        target_effects = {
                                            {
                                                type = "damage",
                                                damage = { amount = 500, type = "explosion" },
                                                apply_damage_to_trees = true
                                            },
                                        }
                                    }
                                }
                            },
                        }
                    }
                },
            },
            animation = runAnimation,
        },
        distance_per_frame = 0.2,
        render_layer = "wires-above",
        run_animation = runAnimation,
        created_effect = {
            type = "direct",
            action_delivery = {
                type = "instant",
                source_effects = {
                    {
                        type = "script",
                        effect_id = TIME_TO_LIVE_CREATED,
                    }
                }
            }
        },
        dying_trigger_effect = {
            {
                type = "script",
                effect_id = TIME_TO_LIVE_DIED,
            }
        },
        dying_explosion = MOD_NAME.."/spidermine-explosion",
        dying_sound = TerranSound.spidermine_attack(0.5),
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
        time_before_removed = defines.time.second,
        subgroup = "corpses",
        order = "x" .. name,
        animation = Sprites.empty_pictures(),
    }
})
