---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---

require("util")
require("util")

require("__erm_terran__/global")

local ERM_UnitTint = require("__enemyracemanager__/lib/rig/unit_tint")

local ERM_Config = require("__enemyracemanager__/lib/global_config")
local ERMPlayerUnitHelper = require("__enemyracemanager__/lib/rig/player_unit_helper")
local TerranSound = require("__erm_terran_hd_assets__/sound")
local AnimationDB = require("__erm_terran_hd_assets__/animation_db")
local name = "goliath"

local attack_range = ERMPlayerUnitHelper.get_attack_range(1, 4)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)

local distraction_cooldown = 30


local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }

local goliathAnimation = AnimationDB.get_layered_animations("units", "goliath_body", "run")
local goliathTurret = AnimationDB.get_layered_animations("units", "goliath_turret", "run")

for _, ani_data in pairs(goliathTurret["layers"]) do
    table.insert(goliathAnimation["layers"],ani_data)
end

goliathAnimation = AnimationDB.apply_runtime_tint(goliathAnimation, true)

local goliathAttackAnimation = AnimationDB.get_layered_animations("units", "goliath_body", "attack")
local goliathAttackTurret = AnimationDB.get_layered_animations("units", "goliath_turret", "attack")

for _, ani_data in pairs(goliathAttackTurret["layers"]) do
    table.insert(goliathAttackAnimation["layers"],ani_data)
end

goliathAttackAnimation = AnimationDB.apply_runtime_tint(goliathAttackAnimation, true)

data:extend({
    {
        type = "unit",
        name = MOD_NAME .. "--" .. name,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."256.png",
                icon_size = 256,
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 250 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "--" .. name,
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
        movement_speed = 0.28 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 0.5,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "bullet",
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 150,
            cooldown_deviation = 0.2,
            warmup = 6,
            damage_modifier = 2 + ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.goliath_attack(0.9),
            ammo_type =
            {
                category = "bullet",
                target_type = "entity",
                action =
                {
                    {
                        type = "direct",
                        action_delivery = {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = MOD_NAME.."--marine_attack_hit-explosion",
                                    offsets = {{0, 1}},
                                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                                },
                            }
                        }
                    },
                    {
                        type = "direct",
                        repeat_count = 2,
                        action_delivery =
                        {
                            type = "instant",
                            target_effects =
                            {
                                {
                                    type = "damage",
                                    damage = { amount = 70, type = "physical"}
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 30, type = "explosion"}
                                }
                            }
                        }
                    },
                    {
                        type = "direct",
                        probability = 0.25,
                        action_delivery = {
                            type = "projectile",
                            projectile = MOD_NAME.."--goliath_rocket_projectile",
                            starting_speed = 0.3,
                            max_range = attack_range * 1.5,
                            source_effects = {
                                {
                                    type = "play-sound",
                                    sound = TerranSound.goliath_attack_rockets(0.9)
                                }
                            },
                        }
                    }
                },
            },
            animation = goliathAttackAnimation,
        },
        distance_per_frame = 0.2,
        run_animation = goliathAnimation,
        dying_explosion = "terran--large-explosion",
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
