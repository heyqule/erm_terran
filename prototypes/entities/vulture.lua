---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/13/2023 3:27 PM
---


require("util")
require("util")

require("__erm_terran__/global")

local ERM_UnitTint = require("__enemyracemanager__/lib/rig/unit_tint")

local ERM_Config = require("__enemyracemanager__/lib/global_config")
local ERMDataHelper = require("__enemyracemanager__/lib/rig/data_helper")
local ERMPlayerUnitHelper = require("__enemyracemanager__/lib/rig/player_unit_helper")
local TerranSound = require("__erm_terran_hd_assets__/sound")
local AnimationDB = require("__erm_terran_hd_assets__/animation_db")
local name = "vulture"

local attack_range = ERMPlayerUnitHelper.get_attack_range(1)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)

local distraction_cooldown = 30


local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }


local runAnimation = AnimationDB.get_layered_animations("units", "vulture", "run")

runAnimation = AnimationDB.apply_runtime_tint(runAnimation, true)

data:extend({
    {
        type = "unit",
        name = MOD_NAME .. "--" .. name,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."256.png",
                icon_size = 256,
            }
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 80 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "--" .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        can_open_gates = true,
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
        movement_speed = 0.325 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 0.5,

        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 2,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "shotgun-shell",
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 180,
            cooldown_deviation = 0.2,
            warmup = 6,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.vulture_attack(0.9),
            ammo_type =
            {
                category = "shotgun-shell",
                action =
                {
                    {
                        type = "direct",
                        action_delivery = {
                            type = "projectile",
                            projectile = MOD_NAME.."--vulture_grenade_projectile",
                            starting_speed = 0.3,
                            max_range = attack_range * 1.5,
                        }
                    },
                    {
                        type = "direct",
                        probability = 0.45,
                        action_delivery = {
                            type = "instant",
                            source_effects = {
                                {
                                    type = "play-sound",
                                    sound = TerranSound.goliath_attack_rockets(0.9)
                                },
                                {
                                    type = "create-entity",
                                    entity_name = MOD_NAME .. "--spidermine"
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
        dying_explosion = MOD_NAME.."--large-explosion",
        dying_sound = TerranSound.enemy_death(name, 1),
        corpse = MOD_NAME .. '-' .. name .. "-corpse",
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
    },
    {
        type = "corpse",
        name = MOD_NAME .. '-' .. name .. "-corpse",
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/" .. name .. ".png",
        icon_size = 64,
        flags = { "placeable-off-grid", "building-direction-8-way", "not-on-map" },
        selection_box = selection_box,
        selectable_in_game = false,
        dying_speed = 0.04,
        time_before_removed = second,
        subgroup = "corpses",
        order = "x" .. name,
        animation = util.empty_sprite(),
    }
})
