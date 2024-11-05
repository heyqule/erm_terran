---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 7:35 PM
---
require("__erm_terran__/global")

data:extend({
    ---- Barrack ----
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk1",
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {type="item", name="light-armor", amount=1},
            {type="item", name="submachine-gun", amount=1},
            {type="item", name="firearm-magazine", amount=20},
            {type="item", name="radar", amount=1},
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--marine--mk1",
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk1", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk2",
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {type="item", name="heavy-armor", amount=1},
            {type="item", name="submachine-gun", amount=1},
            {type="item", name="piercing-rounds-magazine", amount=25},
            {type="item", name="radar", amount=1},
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--marine--mk2",
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk3",
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {type="item", name="modular-armor", amount=1},
            {type="item", name="submachine-gun", amount=1},
            {type="item", name="uranium-rounds-magazine", amount=25},
            {type="item", name="radar", amount=1},
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--marine--mk3",
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk3", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--firebat--mk1",
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {type="item", name="heavy-armor", amount=1},
            {type="item", name="flamethrower", amount=1},
            {type="item", name="petroleum-gas-barrel", amount=25},
            {type="item", name="explosives", amount=25},
            {type="item", name="radar", amount=1},
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--firebat--mk1",
        results = {
            {type="item", name=MOD_NAME .. "--firebat--mk1", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--firebat--mk2",
        enabled = false,
        energy_required = 24,
        ingredients =
        {
            {type="item", name="modular-armor", amount=1},
            {type="item", name="flamethrower", amount=1},
            {type="item", name="light-oil-barrel", amount=50},
            {type="item", name="explosives", amount=50},
            {type="item", name="radar", amount=1},
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--firebat--mk2",
        results = {
            {type="item", name=MOD_NAME .. "--firebat--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--ghost--regular",
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {type="item", name="submachine-gun", amount=1},
            {type="item", name="uranium-rounds-magazine", amount=50},
            {type="item", name="discharge-defense-equipment", amount=1},
            {type="item", name="modular-armor", amount=1},
            {type="item", name="night-vision-equipment", amount=1},
            {type="item", name="battery-equipment", amount=10}
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--ghost--regular",
        results = {
            {type="item", name=MOD_NAME .. "--ghost--regular", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--ghost--nuke",
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {type="item", name="rocket-launcher", amount=1},
            {type="item", name="atomic-bomb", amount=2},
            {type="item", name="modular-armor", amount=1},
            {type="item", name="night-vision-equipment", amount=1},
            {type="item", name="battery-equipment", amount=4}
        },
        category = "erm_controllable_infantry",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--ghost--nuke",
        results = {
            {type="item", name=MOD_NAME .. "--ghost--nuke", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    --- Barrack Autodeploy ---
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk1--autodeploy",
        energy_required = 8,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--marine--mk1", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--marine--mk1",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk1", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk2--autodeploy",
        energy_required = 8,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--marine--mk2", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--marine--mk2",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--marine--mk3--autodeploy",
        energy_required = 8,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--marine--mk3", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--marine--mk3",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine_mkIII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--marine--mk3", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--firebat--mk1--autodeploy",
        energy_required = 8,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--firebat--mk1", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--firebat--mk1",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--firebat--mk1", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--firebat--mk2--autodeploy",
        energy_required = 8,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--firebat--mk2", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--firebat--mk2",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--firebat--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--ghost--regular--autodeploy",
        energy_required = 15,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--ghost--regular", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--ghost--regular",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/ghost256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        results = {
            {type="item", name=MOD_NAME .. "--ghost--regular", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--ghost--nuke--autodeploy",
        energy_required = 15,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--ghost--nuke", amount=1},
        },
        category = "erm_controllable_infantry",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--ghost--nuke",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/ghost_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/atomic-bomb.png",
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
        results = {
            {type="item", name=MOD_NAME .. "--ghost--nuke", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },

    --- Factory ---
    {
        type = "recipe",
        name = MOD_NAME .. "--goliath",
        enabled = false,
        energy_required = 40,
        ingredients =
        {
            {type="item", name="exoskeleton-equipment", amount=1},
            {type="item", name="accumulator", amount=10},
            {type="item", name="low-density-structure", amount=25},
            {type="item", name="uranium-rounds-magazine", amount=50},
            {type="item", name="rocket", amount=25},
        },
        category = "erm_controllable_factory",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--goliath",
        results = {
            {type="item", name=MOD_NAME .. "--goliath", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--siege_tank",
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {type="item", name="tank", amount=1},
            {type="item", name="explosive-cannon-shell", amount=100},
            {type="item", name="low-density-structure", amount=20},
            {type="item", name="solid-fuel", amount=50},
        },
        category = "erm_controllable_factory",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--siege_tank",
        results = {
            {type="item", name=MOD_NAME .. "--siege_tank", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,

    },
    {
        type = "recipe",
        name = MOD_NAME .. "--siege_tank--mk2",
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {type="item", name="tank", amount=1},
            {type="item", name="processing-unit", amount=10},
            {type="item", name="uranium-cannon-shell", amount=100},
            {type="item", name="low-density-structure", amount=40},
            {type="item", name="rocket-fuel", amount=20},
        },
        category = "erm_controllable_factory",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--siege_tank--mk2",
        results = {
            {type="item", name=MOD_NAME .. "--siege_tank--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--vulture",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="petroleum-gas-barrel", amount=10},
            {type="item", name="engine-unit", amount=12},
            {type="item", name="land-mine", amount=20},
            {type="item", name="grenade", amount=20},
        },
        category = "erm_controllable_factory",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--vulture",
        results = {
            {type="item", name=MOD_NAME .. "--vulture", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    --- Factory Autodeploy ---
    {
        type = "recipe",
        name = MOD_NAME .. "--vulture--autodeploy",
        energy_required = 12,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--vulture", amount=1},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/vulture256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--vulture",
        results = {
            {type="item", name=MOD_NAME .. "--vulture", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--goliath--autodeploy",
        energy_required = 12,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--goliath", amount=1},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/goliath256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--goliath",
        results = {
            {type="item", name=MOD_NAME .. "--goliath", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--siege_tank--autodeploy",
        energy_required = 16,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--siege_tank", amount=1},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--siege_tank",
        results = {
            {type="item", name=MOD_NAME .. "--siege_tank", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--siege_tank--mk2--autodeploy",
        energy_required = 16,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--siege_tank--mk2", amount=1},
        },
        category = "erm_controllable_factory",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--siege_tank--mk2",
        results = {
            {type="item", name=MOD_NAME .. "--siege_tank--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },

    --- Starport ---
    {
        type = "recipe",
        name = MOD_NAME .. "--battlecruiser--yamato",
        enabled = false,
        energy_required = 133,
        ingredients =
        {
            {type="item", name="nuclear-reactor", amount=2},
            {type="item", name="nuclear-fuel", amount=40},
            {type="item", name="processing-unit", amount=50},
            {type="item", name="low-density-structure", amount=50},
            {type="item", name="laser-turret", amount=40},
            {type="item", name="flying-robot-frame", amount=50},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--battlecruiser--yamato",
        results = {
            {type="item", name=MOD_NAME .. "--battlecruiser--yamato", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--battlecruiser--laser",
        enabled = false,
        energy_required = 133,
        ingredients =
        {
            {type="item", name="nuclear-reactor", amount=1},
            {type="item", name="nuclear-fuel", amount=10},
            {type="item", name="processing-unit", amount=30},
            {type="item", name="low-density-structure", amount=30},
            {type="item", name="laser-turret", amount=10},
            {type="item", name="flying-robot-frame", amount=30},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--battlecruiser--laser",
        results = {
            {type="item", name=MOD_NAME .. "--battlecruiser--laser", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--wraith",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="rocket-launcher", amount=2},
            {type="item", name="processing-unit", amount=10},
            {type="item", name="rocket", amount=100},
            {type="item", name="rocket-fuel", amount=20},
            {type="item", name="low-density-structure", amount=10},
            {type="item", name="flying-robot-frame", amount=10},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--wraith",
        results = {
            {type="item", name=MOD_NAME .. "--wraith", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--wraith--scout",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="laser-turret", amount=5},
            {type="item", name="processing-unit", amount=10},
            {type="item", name="battery", amount=50},
            {type="item", name="rocket-fuel", amount=40},
            {type="item", name="low-density-structure", amount=15},
            {type="item", name="flying-robot-frame", amount=15},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--wraith--scout",
        results = {
            {type="item", name=MOD_NAME .. "--wraith--scout", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--valkyrie",
        enabled = false,
        energy_required = 50,
        ingredients =
        {
            {type="item", name="rocket-launcher", amount=2},
            {type="item", name="low-density-structure", amount=15},
            {type="item", name="flying-robot-frame", amount=15},
            {type="item", name="rocket-fuel", amount=20},
            {type="item", name="slowdown-capsule", amount=25},
            {type="item", name="processing-unit", amount=10},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--valkyrie",
        results = {
            {type="item", name=MOD_NAME .. "--valkyrie", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--science_vessel",
        enabled = false,
        energy_required = 80,
        ingredients =
        {
            {type="item", name="rocket-launcher", amount=2},
            {type="item", name="low-density-structure", amount=15},
            {type="item", name="flying-robot-frame", amount=15},
            {type="item", name="rocket-fuel", amount=20},
            {type="item", name="poison-capsule", amount=25},
            {type="item", name="processing-unit", amount=12},
        },
        category = "erm_controllable_starport",
        allow_as_intermediate = false,
        always_show_made_in = true,
        order = MOD_NAME .. "--science_vessel",
        results = {
            {type="item", name=MOD_NAME .. "--science_vessel", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    --- Starport Autodeploy ---
    {
        type = "recipe",
        name = MOD_NAME .. "--wraith--scout--autodeploy",
        energy_required = 20,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--wraith--scout", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--wraith--scout",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/wraith_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/laser-turret.png",
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
        results = {
            {type="item", name=MOD_NAME .. "--wraith--scout", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--wraith--autodeploy",
        energy_required = 20,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--wraith", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--wraith",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/wraith256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/rocket.png",
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
        order = MOD_NAME .. "--wraith",
        results = {
            {type="item", name=MOD_NAME .. "--wraith", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--battlecruiser--yamato--autodeploy",
        energy_required = 45,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--battlecruiser--yamato", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,

        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/battlecruiser256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--attlecruiser--yamato",
        results = {
            {type="item", name=MOD_NAME .. "--battlecruiser--yamato", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--battlecruiser--laser--autodeploy",
        energy_required = 45,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--battlecruiser--laser", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/battlecruiser_mkII256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--attlecruiser--laser",
        results = {
            {type="item", name=MOD_NAME .. "--battlecruiser--laser", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--valkyrie--autodeploy",
        energy_required = 16,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--valkyrie", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        order = "zzz"..MOD_NAME .. "--valkyrie",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/valkyrie256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--valkyrie",
        results = {
            {type="item", name=MOD_NAME .. "--valkyrie", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--science_vessel--autodeploy",
        energy_required = 26,
        ingredients =
        {
            {type="item", name=MOD_NAME .. "--science_vessel", amount=1},
        },
        category = "erm_controllable_starport",
        hide_from_player_crafting = true,
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/science_vessel256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_D.png",
                icon_size = 64,
                scale = 0.25,
                shift = {9,9}
            },
        },
        order = MOD_NAME .. "--science_vessel",
        results = {
            {type="item", name=MOD_NAME .. "--science_vessel", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },

    --- Building
    {
        type = "recipe",
        name = MOD_NAME .. "--command-center",
        enabled = false,
        energy_required = 120,
        ingredients =
        {
            {type="item", name="radar", amount=50},
            {type="item", name="steel-plate", amount=200},
            {type="item", name="low-density-structure", amount=50},
            {type="item", name="processing-unit", amount=20},
        },
        energy_required = 120,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/command_centre256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--command-center",
        results = {
            {type="item", name=MOD_NAME .. "--command-center", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--barrack",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="assembling-machine-2", amount=1},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="fast-inserter", amount=50},
            {type="item", name="electronic-circuit", amount=100},
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/barracks256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = "a-erm-building-barrack",
        order = MOD_NAME .. "--barrack",
        results = {
            {type="item", name=MOD_NAME .. "--barrack", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--factory",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type="item", name="assembling-machine-2", amount=1},
            {type="item", name="steel-plate", amount=200},
            {type="item", name="fast-inserter", amount=50},
            {type="item", name="advanced-circuit", amount=50},
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/factory256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--factory",
        results = {
            {type="item", name=MOD_NAME .. "--factory", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--starport",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="assembling-machine-3", amount=1},
            {type="item", name="steel-plate", amount=200},
            {type="item", name="fast-inserter", amount=50},
            {type="item", name="low-density-structure", amount=50},
            {type="item", name="processing-unit", amount=20},
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/starport256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--starport",
        results = {
            {type="item", name=MOD_NAME .. "--starport", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--missile-turret",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="gun-turret", amount=1},
            {type="item", name="rocket-launcher", amount=6},
            {type="item", name="low-density-structure", amount=10},
            {type="item", name="processing-unit", amount=4},
            {type="item", name="accumulator", amount=4},
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/missile_turret256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--missile-turret",
        results = {
            {type="item", name=MOD_NAME .. "--missile-turret", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--siege-tank-turret",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="tank", amount=1},
            {type="item", name="low-density-structure", amount=10},
            {type="item", name="processing-unit", amount=4},
            {type="item", name="accumulator", amount=4},
            {type="item", name="steel-plate", amount=20}
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/siege_tank_siege_mode256.png",
        icon_size = 256,
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--siege-tank-turret",
        results = {
            {type="item", name=MOD_NAME .. "--siege-tank-turret", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--shockbomb-ammo",
        enabled = false,
        energy_required = 4,
        ingredients =
        {
            {type="item", name="explosive-uranium-cannon-shell", amount=1},
            {type="item", name="explosives", amount=2},
            {type="item", name="plastic-bar", amount=1},
        },
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/shockbomb.png",
        icon_size = 64,
        subgroup = "ammo",
        order = "d[explosive-cannon-shell]-c[uranium-shockbomb]",
        order = MOD_NAME .. "--shockbomb-ammo",
        results = {
            {type="item", name=MOD_NAME .. "--shockbomb-ammo", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--bunker-turret--mk1",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="erm_terran--marine--mk1", amount=4},
            {type="item", name="steel-plate", amount=10},
            {type="item", name="concrete", amount=20}
        },
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
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--bunker-turret--mk1",
        results = {
            {type="item", name=MOD_NAME .. "--bunker-turret--mk1", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--bunker-turret--mk2",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="erm_terran--marine--mk2", amount=4},
            {type="item", name="steel-plate", amount=25},
            {type="item", name="concrete", amount=30},
            {type="item", name="refined-concrete", amount=10}
        },
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/bunker256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            }
        },
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--bunker-turret--mk2",
        results = {
            {type="item", name=MOD_NAME .. "--bunker-turret--mk2", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = MOD_NAME .. "--bunker-turret--mk3",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            {type="item", name="erm_terran--marine--mk3", amount=4},
            {type="item", name="steel-plate", amount=50},
            {type="item", name="refined-concrete", amount=50}
        },
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/bunker256.png",
                icon_size = 256,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_3.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            }
        },
        subgroup = "erm_controllable_buildings",
        order = MOD_NAME .. "--bunker-turret--mk3",
        results = {
            {type="item", name=MOD_NAME .. "--bunker-turret--mk3", amount=1},
        },
        allow_quality = false,
        auto_recycle = false,
    },
})
