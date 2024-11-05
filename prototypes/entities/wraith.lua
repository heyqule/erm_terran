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
local ERMDataHelper = require("__enemyracemanager__/lib/rig/data_helper")
local ERMPlayerUnitHelper = require("__enemyracemanager__/lib/rig/player_unit_helper")
local TerranSound = require("__erm_terran_hd_assets__/sound")
local AnimationDB = require("__erm_terran_hd_assets__/animation_db")

local name = "wraith"

local attack_range = ERMPlayerUnitHelper.get_attack_range(1, 2)

-- Misc Settings
local vision_distance = ERMPlayerUnitHelper.get_vision_distance(attack_range)

local distraction_cooldown = 30

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }
local selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } }

function wraith_animation()
    local attackAnimation = AnimationDB.get_layered_animations("units", "wraith", "run")

    attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)

    return attackAnimation
end

function wraith_mkii_animation()
    local attackAnimation = AnimationDB.get_layered_animations("units", "wraith_mkii", "run")

    attackAnimation = AnimationDB.apply_runtime_tint(attackAnimation, true)

    return attackAnimation
end


data:extend({
    {
        type = "unit",
        name = MOD_NAME .. "--" .. name,
        localised_name = { "entity-name." .. MOD_NAME .. "--" .. name },
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "player-creation", "not-flammable" },
        has_belt_immunity = true,
        max_health = 200 * ERMPlayerUnitHelper.get_health_multiplier(),
        order = MOD_NAME .. "--" .. name,
        subgroup = "erm_controllable_units",
        shooting_cursor_size = 2,
        can_open_gates = true,
        radar_range = 2,
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
        movement_speed = 0.3 * ERMPlayerUnitHelper.get_speed_multiplier(),
        repair_speed_modifier = 0.33,

        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        attack_parameters = {
            type = "projectile",
            range_mode = "bounding-box-to-bounding-box",
            ammo_category = "rocket",
            range = attack_range,
            min_attack_distance = attack_range - 4,
            cooldown = 120,
            cooldown_deviation = 0.2,
            damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
            warmup = 6,
            ammo_type = {
                category = "rocket",
                target_type = "direction",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = MOD_NAME.."--wraith-rocket",
                        starting_speed = 0.3,
                        max_range = attack_range * 1.5
                    }
                }
            },
            animation = wraith_animation(),
            sound = TerranSound.wraith_attack_laser(0.6),
        },
        render_layer = "wires-above",
        distance_per_frame = 0.5,
        run_animation = wraith_animation(),
        map_color = ERM_UnitTint.tint_army_color(),
        enemy_map_color = { r=1, b=0, g=0 },
        dying_explosion = "erm-fire-explosion-air_normal-1",
        dying_sound = TerranSound.enemy_death(name, 1),
        corpse = name .. "-corpse"
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

-- Scout Wraith --
local scout_wraith = util.table.deepcopy(data.raw["unit"][MOD_NAME .. "--" .. name])
scout_wraith.name = MOD_NAME .. "--" .. name .. "--scout"
scout_wraith.localised_name = { "entity-name." .. MOD_NAME .. "--" .. name .. "--scout"}
scout_wraith.movement_speed = 0.6 * ERMPlayerUnitHelper.get_speed_multiplier()
scout_wraith.attack_range = ERMPlayerUnitHelper.get_attack_range(1)
scout_wraith.icons = {
    {
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/"..name.."_mkII256.png",
        icon_size = 256,
    },
    {
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        scale = 0.2,
        shift = {-9,-9}
    },
}
scout_wraith.attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    ammo_category = "laser",
    range = attack_range,
    min_attack_distance = attack_range - 4,
    cooldown = 60,
    cooldown_deviation = 0.2,
    warmup = 6,
    damage_modifier = ERMPlayerUnitHelper.get_damage_multiplier(),
    ammo_type = {
        category = "laser",
        target_type = "direction",
        action = {
            type = "direct",
            action_delivery = {
                type = "projectile",
                projectile = MOD_NAME.."--wraith-laser-projectile",
                starting_speed = 0.5,
                max_range = attack_range * 1.5
            }
        }
    },
    sound = TerranSound.wraith_attack_laser(0.6),
    animation = wraith_mkii_animation()
}

scout_wraith["run_animation"] = wraith_mkii_animation()

data:extend({scout_wraith})
