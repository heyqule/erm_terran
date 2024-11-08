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
require("__stdlib__/stdlib/utils/defines/time")
require("util")
local math3d = require "math3d"
local Sprites = require("__stdlib__/stdlib/data/modules/sprites")

require("__erm_terran__/global")

local ERM_UnitTint = require("__enemyracemanager__/lib/rig/unit_tint")

local ERM_Config = require("__enemyracemanager__/lib/global_config")
local ERMPlayerUnitHelper = require("__enemyracemanager__/lib/rig/player_unit_helper")

local DataHelper = require("__erm_terran__/prototypes/data_helper")

local TerranSound = require("__erm_terran_hd_assets__/sound")
local AnimationDB = require("__erm_terran_hd_assets__/animation_db")

local name = "firebat"

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(2)
local pollution_to_join_attack = 250
local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } }
local selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }

local mk1_resist = DataHelper.getResistance(55)
table.insert(mk1_resist,{type="fire", percent=100})
local mk2_resist = DataHelper.getResistance(75)
table.insert(mk2_resist,{type="fire", percent=100})

local attackAnimation = AnimationDB.get_layered_animations("units", "firebat", "attack")

attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)

local runningAnimation = AnimationDB.get_layered_animations("units", "firebat", "run")

runningAnimation = AnimationDB.apply_runtime_tint(runningAnimation, true)

-- Firebat MK 1 --
data:extend({
    {
        type = "unit",
        name = MOD_NAME .. "--" .. name .. "/mk1",
        localised_name = { "entity-name." .. MOD_NAME .. "--" .. name, "MK 1"},
        localised_description = { "entity-description." .. MOD_NAME .. "--" .. name},
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."256.png",
                icon_size = 256,
            }
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "breaths-air" },
        has_belt_immunity = false,
        max_health = 60 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "/" .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        resistances = mk1_resist,
        healing_per_tick = 0,
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.175 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 0.5,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        can_open_gates = true,
        --ai_settings = biter_ai_settings,
        radar_range = 1,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "flamethrower",
            range = 2,
            cooldown = 60,
            cooldown_deviation = 0.2,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            sound = TerranSound.firebat_attack(0.66),
            ammo_type =
            {
                category = "flamethrower",
                action = {
                    type = "line",
                    force = "not-same",
                    range = 3,
                    width = 2,
                    ignore_collision_condition = true,
                    action_delivery = {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 75, type = "fire"}
                            },
                            {
                                type = "damage",
                                damage = { amount = 75, type = "explosion"}
                            },
                            {
                                type = "create-sticker",
                                sticker = "firebat-sticker",
                                show_in_tooltip = true
                            },
                        }
                    }
                },
            },
            animation = attackAnimation
        },
        distance_per_frame = 0.16,
        run_animation = runningAnimation,
        dying_trigger_effect = {
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    radius = 4,
                    force = "not-same",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = {amount = 500 * ERMPlayerUnitHelper.get_damage_multiplier() , type = "fire"}
                            },
                            {
                                type = "damage",
                                damage = {amount = 700 * ERMPlayerUnitHelper.get_damage_multiplier() , type = "explosion"}
                            }
                        }
                    }
                }
            }
        },
        dying_sound = TerranSound.firebat_death(1),
        dying_explosion = MOD_NAME.."/firebat-explosion",
        corpse = name .. "-corpse",
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
    },
    {
        type = "corpse",
        name = name .. "-corpse",
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
    },
    {
        type = "sticker",
        name = "firebat-sticker",
        flags = {"not-on-map"},

        animation =
        {
            filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
            line_length = 8,
            width = 60,
            height = 118,
            frame_count = 25,
            blend_mode = "normal",
            animation_speed = 1,
            scale = 0.2,
            tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.18 }, --{ r = 1, g = 1, b = 1, a = 0.35 },
            shift = math3d.vector2.mul({-0.078125, -1.8125}, 0.1),
            draw_as_glow = true
        },

        duration_in_ticks = 10 * 60,
        damage_interval = 10,
        target_movement_modifier = 0.8,
        damage_per_tick = { amount = 10, type = "fire" },
        spread_fire_entity = "fire-flame-on-tree",
        fire_spread_cooldown = 30,
        fire_spread_radius = 1
    }
})

-- Firebat MK2 --
local firebat_mk2 = util.table.deepcopy(data.raw["unit"][MOD_NAME .. "--" .. name .. "/mk1"])

local mk2attackAnimation = AnimationDB.get_layered_animations("units", "firebat_mkii", "attack")

mk2attackAnimation = AnimationDB.apply_runtime_tint(mk2attackAnimation, true)

local mk2runningAnimation = AnimationDB.get_layered_animations("units", "firebat_mkii", "run")

mk2runningAnimation = AnimationDB.apply_runtime_tint(mk2runningAnimation, true)

firebat_mk2.name = MOD_NAME .. "--" .. name .. "/mk2"
firebat_mk2.localised_name = { "entity-name." .. MOD_NAME .. "--" .. name, "MK 2"}
firebat_mk2["icons"] = {
    {
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."_mkII256.png",
        icon_size = 256,
    }
}
firebat_mk2.movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier()
firebat_mk2.max_health = 125 * ERMPlayerUnitHelper.get_health_multiplier()
firebat_mk2.resistances = mk2_resist
firebat_mk2.repair_speed_modifier = 0.66
firebat_mk2["run_animation"] = mk2runningAnimation
firebat_mk2["attack_parameters"]["damage_modifier"] = 1 + ERMPlayerUnitHelper.get_damage_multiplier()
firebat_mk2["attack_parameters"]["animation"] = mk2attackAnimation


firebat_mk2["dying_trigger_effect"] = {
    {
        type = "nested-result",
        action =
        {
            type = "area",
            radius = 4,
            force = "not-same",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "damage",
                        damage = {amount = 1400 * ERMPlayerUnitHelper.get_damage_multiplier(), type = "fire"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 1600 * ERMPlayerUnitHelper.get_damage_multiplier(), type = "explosion"}
                    }
                }
            }
        }
    }
},

data:extend({firebat_mk2})


