---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/20/2023 12:56 AM
---

require ("util")
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")

local Sprites = require("__stdlib__/stdlib/data/modules/sprites")
local TerranSound = require("__erm_terran_hd_assets__/sound")
local AnimationDB = require("__erm_terran_hd_assets__/animation_db")
local ERMPlayerUnitHelper = require("__enemyracemanager__/lib/rig/player_unit_helper")
local ERM_WeaponRig = require("__enemyracemanager__/lib/rig/weapon")
local DataHelper = require("__erm_terran__/prototypes/data_helper")
local ERM_UnitTint = require("__enemyracemanager__/lib/rig/unit_tint")

local collision_box = { { -3, -2 }, { 3, 2 } }
local selection_box = { { -3, -2 }, { 3, 2 } }

local attack_range = math.ceil(ERMPlayerUnitHelper.get_attack_range(1, 8))
local prepare_range = attack_range + 4


local folded_animation = AnimationDB.get_layered_animations("buildings", "bunker", "folded")
folded_animation = AnimationDB.apply_runtime_tint(folded_animation, true)

local attack_animation = AnimationDB.get_layered_animations("buildings", "bunker", "attack")
attack_animation = AnimationDB.apply_runtime_tint(attack_animation, true)



data:extend({
    {
        type = "turret",
        name = MOD_NAME .. "/bunker-turret/mk1",
        localised_name = { "entity-name." .. MOD_NAME .. "/bunker-turret", "MK 1"},
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/bunker256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            }
        },
        resistances = DataHelper.getResistance(25),
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 2, result = MOD_NAME .. "/marine/mk1", count=3},
        max_health = 80 * ERMPlayerUnitHelper.get_health_multiplier(),
        repair_speed_modifier = 0.33,
        dying_explosion = MOD_NAME.."/building-large-explosion",
        corpse = MOD_NAME.."/small-base-corpse",
        collision_box = collision_box,
        selection_box = selection_box,
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.015,
        preparing_speed = 0.08,
        folding_speed = 0.08,
        inventory_size = 1,
        automated_ammo_count = 10,
        attacking_speed = 0.5,
        alert_when_attacking = true,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        base_picture = Sprites.empty_pictures(),
        vehicle_impact_sound = sounds.generic_impact,
        folded_animation = folded_animation,
        prepare_range = prepare_range,
        attacking_animation = attack_animation,
        fast_replaceable_group = "turret",
        next_upgrade = MOD_NAME .. "/bunker-turret/mk2",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "bullet",
            cooldown = 40,
            cooldown_deviation = 0.2,
            projectile_creation_distance = 1.39375,
            projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
            range = attack_range,
            sound = TerranSound.goliath_attack(0.5),
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
        },
        dying_trigger_effect = {
            {
                type = "script",
                effect_id = BUNKER_SPAWN_MARINE,
            }
        },
        call_for_help_radius = 0,
        map_color = ERM_UnitTint.tint_army_color(),
    },
})


-- Bunker MK2 --
local bunker_mk2 = util.table.deepcopy(data.raw["turret"][MOD_NAME .. "/bunker-turret/mk1"])

bunker_mk2.name = MOD_NAME .. "/bunker-turret/mk2"
bunker_mk2.localised_name = { "entity-name." .. MOD_NAME .. "/bunker-turret", "MK 2"}
bunker_mk2["icons"][2] = {
    icon = "__base__/graphics/icons/signal/signal_2.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-9,-9}
}
bunker_mk2.minable = {mining_time = 2, result = MOD_NAME .. "/marine/mk2", count=3}
bunker_mk2.max_health = 120 * ERMPlayerUnitHelper.get_health_multiplier()
bunker_mk2.resistances = DataHelper.getResistance(50)
bunker_mk2.fast_replaceable_group = "turret"
bunker_mk2.next_upgrade = MOD_NAME .. "/bunker-turret/mk3"
bunker_mk2["attack_parameters"]["ammo_type"]["action"][1]["repeat_count"] = 6
bunker_mk2["attack_parameters"]["cooldown"] = 30
bunker_mk2["attack_parameters"]["ammo_type"]["action"][1]["action_delivery"]["target_effects"][1] =
{
    type = "damage",
    damage = { amount = 15, type = "physical"}
}

data:extend({bunker_mk2})


local bunker_mk3 = util.table.deepcopy(data.raw["turret"][MOD_NAME .. "/bunker-turret/mk1"])

bunker_mk3.name = MOD_NAME .. "/bunker-turret/mk3"
bunker_mk3.localised_name = { "entity-name." .. MOD_NAME .. "/bunker-turret", "MK 3"}
bunker_mk3["icons"][2] = {
    icon = "__base__/graphics/icons/signal/signal_3.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-9,-9}
}
bunker_mk3.minable = {mining_time = 2, result = MOD_NAME .. "/marine/mk3", count=3}
bunker_mk3.max_health = 200 * ERMPlayerUnitHelper.get_health_multiplier()
bunker_mk3.resistances = DataHelper.getResistance(75)
bunker_mk3["attack_parameters"]["cooldown"] = 24
bunker_mk3["attack_parameters"]["ammo_type"]["action"][1]["repeat_count"] = 8
bunker_mk3["attack_parameters"]["ammo_type"]["action"][1]["action_delivery"]["target_effects"][1] =
{
    type = "damage",
    damage = { amount = 42, type = "physical"}
}

data:extend({bunker_mk3})
