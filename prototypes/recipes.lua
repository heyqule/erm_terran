---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 7:35 PM
---
require('__erm_terran__/global')

data:extend({
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk1',
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {"light-armor", 1},
            {"submachine-gun", 1},
            {"firearm-magazine", 20},
            {"radar", 1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/marine/mk1',
        order = MOD_NAME .. '/marine/mk1'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk2',
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {"heavy-armor", 1},
            {"submachine-gun", 1},
            {"piercing-rounds-magazine", 25},
            {"radar", 1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/marine/mk2',
        order = MOD_NAME .. '/marine/mk2'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk3',
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {"modular-armor", 1},
            {"submachine-gun", 1},
            {"uranium-rounds-magazine", 25},
            {"radar", 1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/marine/mk3',
        order = MOD_NAME .. '/marine/mk3'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/tank',
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {"tank", 1},
            {"explosive-cannon-shell", 100},
            {"low-density-structure", 20},
            {"solid-fuel", 50},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/tank',
        order = MOD_NAME .. '/tank',
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/tank/mk2',
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {"tank", 1},
            {"rocket-control-unit", 10},
            {"uranium-cannon-shell", 100},
            {"low-density-structure", 40},
            {"rocket-fuel", 20},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/tank/mk2',
        order = MOD_NAME .. '/tank/mk2',
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/battlecruiser/yamato',
        enabled = false,
        energy_required = 133,
        ingredients =
        {
            {"nuclear-reactor", 2},
            {"nuclear-fuel", 40},
            {"rocket-control-unit", 50},
            {"low-density-structure", 50},
            {"laser-turret", 40},
            {"flying-robot-frame", 50},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/battlecruiser/yamato',
        order = MOD_NAME .. '/battlecruiser/yamato'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/battlecruiser/laser',
        enabled = false,
        energy_required = 133,
        ingredients =
        {
            {"nuclear-reactor", 1},
            {"nuclear-fuel", 10},
            {"rocket-control-unit", 30},
            {"low-density-structure", 30},
            {"laser-turret", 10},
            {"flying-robot-frame", 30},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/battlecruiser/laser',
        order = MOD_NAME .. '/battlecruiser/laser'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"rocket-launcher", 2},
            {"rocket-control-unit", 10},
            {"rocket", 100},
            {"rocket-fuel", 20},
            {"low-density-structure", 10},
            {"flying-robot-frame", 10},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/wraith',
        order = MOD_NAME .. '/wraith',
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/scout',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"laser-turret", 5},
            {"rocket-control-unit", 10},
            {"battery", 50},
            {"rocket-fuel", 40},
            {"low-density-structure", 15},
            {"flying-robot-frame", 15},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/wraith/scout',
        order = MOD_NAME .. '/wraith/scout'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/cold',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"rocket-launcher", 2},
            {"rocket-control-unit", 10},
            {"slowdown-capsule", 100},
            {"rocket-fuel", 20},
            {"low-density-structure", 10},
            {"flying-robot-frame", 10},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/wraith/cold',
        order = MOD_NAME .. '/wraith/cold',
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/acid',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"rocket-launcher", 2},
            {"rocket-control-unit", 10},
            {"poison-capsule", 100},
            {"rocket-fuel", 20},
            {"low-density-structure", 10},
            {"flying-robot-frame", 10},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        result = MOD_NAME .. '/wraith/acid',
        order = MOD_NAME .. '/wraith/acid'
    },

    --- Building
    {
        type = "recipe",
        name = MOD_NAME .. '/command-center',
        enabled = false,
        energy_required = 120,
        ingredients =
        {
            {"radar", 50},
            {"steel-plate", 500},
            {"low-density-structure", 250},
            {"rocket-control-unit", 100},
        },
        energy_required = 120,
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_C.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_buildings",
        order = "a-erm-building-commandcenter",
        result = MOD_NAME .. '/command-center'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/barrack',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"assembling-machine-2", 1},
            {"steel-plate", 100},
            {"iron-plate", 100},
            {"electronic-circuit", 100},
        },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_B.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_buildings",
        order = "a-erm-building-barrack",
        result = MOD_NAME .. '/barrack'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/factory',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"assembling-machine-2", 1},
            {"steel-plate", 200},
            {"low-density-structure", 100},
            {"advanced-circuit", 50},
        },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_F.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_buildings",
        order = "a-erm-building-commandcenter",
        result = MOD_NAME .. '/factory'
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/starport',
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {"assembling-machine-3", 1},
            {"steel-plate", 200},
            {"low-density-structure", 100},
            {"rocket-control-unit", 20},
        },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/advisor.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_S.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_buildings",
        order = "a-erm-building-starport",
        result = MOD_NAME .. '/starport'
    },


    --- Auto Deploy Recipe
    --- 1/3 of SC1 build time
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/acid/autodeploy',
        energy_required =  20,
        ingredients =
        {
            {MOD_NAME .. '/wraith/acid', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/wraith/acid',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_green.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/scout/autodeploy',
        energy_required = 20,
        ingredients =
        {
            {MOD_NAME .. '/wraith/scout', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/wraith/scout',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_S.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/cold/autodeploy',
        energy_required = 20,
        ingredients =
        {
            {MOD_NAME .. '/wraith/cold', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/wraith/cold',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_blue.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/wraith/autodeploy',
        energy_required = 20,
        ingredients =
        {
            {MOD_NAME .. '/wraith', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/wraith',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_red.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/battlecruiser/yamato/autodeploy',
        energy_required = 45,
        ingredients =
        {
            {MOD_NAME .. '/battlecruiser/yamato', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/battlecruiser/yamato',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/battlecruiser.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_Y.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/battlecruiser/laser/autodeploy',
        energy_required = 45,
        ingredients =
        {
            {MOD_NAME .. '/battlecruiser/laser', 1}
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/battlecruiser/laser',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/battlecruiser.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_L.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/tank/autodeploy',
        energy_required = 16,
        ingredients =
        {
            {MOD_NAME .. '/tank', 1}
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/tank',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/tank.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/tank/mk2/autodeploy',
        energy_required = 16,
        ingredients =
        {
            {MOD_NAME .. '/tank/mk2', 1}
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/tank/mk2',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/tank.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk1/autodeploy',
        energy_required = 8,
        ingredients =
        {
            {MOD_NAME .. '/marine/mk1', 1}
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/marine/mk1',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk2/autodeploy',
        energy_required = 8,
        ingredients =
        {
            {MOD_NAME .. '/marine/mk2', 1}
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/marine/mk2',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
    {
        type = "recipe",
        name = MOD_NAME .. '/marine/mk3/autodeploy',
        energy_required = 8,
        ingredients =
        {
            {MOD_NAME .. '/marine/mk3', 1}
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = 'zzz',
        result = MOD_NAME .. '/marine/mk3',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_3.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
    },
})
