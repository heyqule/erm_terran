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

local name = "siege_tank"

local attack_range = ERMPlayerUnitHelper.get_attack_range(1.3, 6)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)

local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -1, -1 }, { 1, 1 } }
local selection_box = { { -1, -1 }, { 1, 1 } }

local runAnimation = AnimationDB.get_layered_animations("units", "siege_tank_body", "run")
local runTurretAnimation = AnimationDB.get_layered_animations("units", "siege_tank_turret", "run")

for _, ani_data in pairs(runTurretAnimation["layers"]) do
    table.insert(runAnimation["layers"],ani_data)
end

runAnimation = AnimationDB.apply_runtime_tint(runAnimation, true)

local attackAnimation = AnimationDB.get_layered_animations("units", "siege_tank_body", "attack")
local attackTurretAnimation = AnimationDB.get_layered_animations("units", "siege_tank_turret", "attack")

for _, ani_data in pairs(attackTurretAnimation["layers"]) do
    table.insert(attackAnimation["layers"],ani_data)
end

attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)


local runAnimation2 = AnimationDB.get_layered_animations("units", "siege_tank_mkii", "run")
local attackAnimation2 = AnimationDB.get_layered_animations("units", "siege_tank_mkii", "attack")

runAnimation2 = AnimationDB.apply_runtime_tint(runAnimation2, true)
attackAnimation2 = AnimationDB.apply_runtime_tint(attackAnimation2, true)


data:extend({
    {
        type = "unit",
        name = MOD_NAME .. "--" .. name,
        localised_name = { "entity-name." .. MOD_NAME .. "--" .. name,  "MK1" },
        localised_description = { "entity-description." .. MOD_NAME .. "--" .. name},
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank256.png",
                icon_size = 256,
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 150 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "--" .. name,
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
        repair_speed_modifier = 0.5,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        radar_range = 3,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "cannon-shell",
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 360,
            cooldown_deviation = 0.2,
            warmup = 6,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            ammo_type = {
                category = "cannon-shell",
                target_type = "entity",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = MOD_NAME.."--tank-cannon-projectile",
                        starting_speed = 1.5,
                        max_range = attack_range * 1.5,
                        min_range = 6,
                    }
                }
            },
            sound = TerranSound.siege_tank_attack(0.66, 0.66),
            animation = attackAnimation
        },
        distance_per_frame = 0.2,
        run_animation = runAnimation,
        dying_explosion = "erm-fire-explosion-ground_normal-1",
        dying_sound = TerranSound.enemy_death(name, 0.75),
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
        time_before_removed = second,
        subgroup = "corpses",
        order = "x" .. name,
        animation = util.empty_sprite(),
    }
})

local tank_projectile_mk2 = util.table.deepcopy(data.raw["projectile"][MOD_NAME.."--tank-cannon-projectile"])
tank_projectile_mk2["name"] = MOD_NAME.."--tank-cannon-projectile-mk2"
tank_projectile_mk2["action"]["action_delivery"]["target_effects"][1]["damage"] = {amount = 200, type = "physical"}
-- Ground AOE --
tank_projectile_mk2["final_action"]["action_delivery"]["target_effects"][2]["action"]["action_delivery"]["target_effects"][1]["damage"] = {amount = 200, type = "explosion"}
-- Air AOE --
tank_projectile_mk2["final_action"]["action_delivery"]["target_effects"][3]["action"]["action_delivery"]["target_effects"][1]["damage"] = {amount = 100, type = "explosion"}

data:extend({tank_projectile_mk2})

local tank_mk2 = util.table.deepcopy(data.raw["unit"][MOD_NAME .. "--" .. name])
tank_mk2.name = MOD_NAME .. "--" .. name .. "--mk2"
tank_mk2.localised_name = { "entity-name." .. MOD_NAME .. "--" .. name,  "MK2" }
tank_mk2["icons"] = {
    {
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank256.png",
        icon_size = 256,
    },
}
tank_mk2.max_health = 350 * ERMPlayerUnitHelper.get_health_multiplier()
tank_mk2.movement_speed = 0.225 * ERMPlayerUnitHelper.get_speed_multiplier()
tank_mk2["attack_parameters"]["ammo_type"]["action"]["action_delivery"]["projectile"] = MOD_NAME.."--tank-cannon-projectile-mk2"
tank_mk2.resistances = {
    { type = "acid", percent = 80 },
    { type = "poison", percent = 100 },
    { type = "physical", percent = 80 },
    { type = "fire", percent = 80 },
    { type = "explosion", percent = 80 },
    { type = "laser", percent = 80 },
    { type = "electric", percent = 80 },
    { type = "cold", percent = 80 }
}
tank_mk2.run_animation = runAnimation2
tank_mk2["attack_parameters"]["animation"] = attackAnimation2

data:extend({tank_mk2})