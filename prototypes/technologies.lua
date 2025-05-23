---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/12/2021 8:20 PM
---

require("__erm_terran__/global")

data:extend({
    {
        type = "technology",
        name = MOD_NAME .. "--marine--mk-2",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine_mkII256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--marine--mk2"
            },
        },
        prerequisites = {"military-3","heavy-armor", MOD_NAME .. "--barrack"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 45,
            count = 200
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--marine--mk-3",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine_mkIII256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--marine--mk3"
            },
        },
        prerequisites = {"military-4","modular-armor","uranium-ammo", MOD_NAME .. "--marine--mk-2", MOD_NAME .. "--barrack"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 300
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--firebat--mk-1",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--firebat--mk1"
            },
        },
        prerequisites = {"military-2", MOD_NAME .. "--barrack","flamethrower"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30,
            count = 150
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--firebat--mk-2",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat_mkII256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--firebat--mk2"
            },
        },
        prerequisites = {"military-4","modular-armor", "refined-flammables-5",MOD_NAME .. "--firebat--mk-1", MOD_NAME .. "--barrack"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 300
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--ghost--regular",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/ghost256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--ghost--regular"
            },
        },
        prerequisites = {
            "military-4", "night-vision-equipment","discharge-defense-equipment", MOD_NAME .. "--marine--mk-3", MOD_NAME .. "--barrack"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 250
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--ghost--nuke",
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
            }
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--ghost--nuke"
            },
        },
        prerequisites = {
            "military-4",  "night-vision-equipment", "atomic-bomb",  MOD_NAME .. "--marine--mk-3", MOD_NAME .. "--barrack"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 250
        },
    },

    ----- Factory Units ----
    {
        type = "technology",
        name = MOD_NAME .. "--siege_tank--mk-1",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--siege_tank"
            },
        },
        prerequisites = {
            "military-3", "tank", MOD_NAME .. "--factory",
             "low-density-structure", MOD_NAME .. "--marine--mk-2"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 45,
            count = 250
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--siege_tank--mk-2",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank_mkII256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--siege_tank--mk2"
            },
        },
        prerequisites = {
            "military-4", "tank", "processing-unit", MOD_NAME .. "--siege_tank--mk-1",
            "rocket-fuel", "low-density-structure", MOD_NAME .. "--factory",
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 600
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--goliath",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/goliath256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--goliath"
            },
        },
        prerequisites = {
            "military-4", "processing-unit", "exoskeleton-equipment", "electric-energy-accumulators",
            "rocketry","uranium-ammo", "low-density-structure", MOD_NAME .. "--factory",
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 350
        },
    },

    ----- Starport Units ----
    {
        type = "technology",
        name = MOD_NAME .. "--valkyrie",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/valkyrie256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--valkyrie"
            },
        },
        prerequisites = {
            "military-4", "low-density-structure",
            "processing-unit",  MOD_NAME .. "--marine--mk-2",
            "rocket-fuel", MOD_NAME .. "--starport"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 200
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--science_vessel",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/science_vessel256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--science_vessel"
            },
        },
        prerequisites = {
            "military-4", "low-density-structure",
            "processing-unit",  MOD_NAME .. "--marine--mk-2",
            "rocket-fuel", MOD_NAME .. "--starport"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 200
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--battlecruiser",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/battlecruiser256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--battlecruiser--yamato"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--battlecruiser--laser"
            },
        },
        prerequisites = {
            "military-4", "nuclear-power", "kovarex-enrichment-process",
            "low-density-structure",  MOD_NAME .. "--marine--mk-3",
            "processing-unit", "laser-turret", MOD_NAME .. "--starport"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 2000
        },
    },


    --- Buildings ---
    {
        type = "technology",
        name = MOD_NAME .. "--command-center",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/command_centre256.png",
                icon_size = 256,
            },
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--command-center"
            },
        },
        prerequisites = {
            "military-4",
            "low-density-structure",
            "processing-unit"
        },
        unit = {
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 },
                { "utility-science-pack", 1 }
            },
            time = 30,
            count = 500
        }
    },
    {
        type = "technology",
        name = MOD_NAME .. "--barrack",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/barracks256.png",
                icon_size = 256,
            },
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--barrack"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--marine--mk1"
            },
        },
        prerequisites = {
            "military-2",
            "automation-2",
            "fast-inserter"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30,
            count = 150
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--factory",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/factory256.png",
                icon_size = 256,
            },
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--factory"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--vulture"
            },
        },
        prerequisites = {
            "military-2", "engine", "advanced-circuit"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
            },
            time = 45,
            count = 275
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--starport",
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/starport256.png",
                icon_size = 256,
            },
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--starport"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--wraith"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--wraith--scout"
            },
        },
        prerequisites = {
            "military-3",
            "low-density-structure",
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                { "chemical-science-pack", 1 },
                { "utility-science-pack", 1 }
            },
            time = 60,
            count = 600
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--missile-turret",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/missile_turret256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--missile-turret"
            },
        },
        prerequisites = {
            "military-4", "low-density-structure",
            "processing-unit",
            "rocketry", "electric-energy-accumulators"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 45,
            count = 150
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--siege-tank-turret",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/siege_tank_siege_mode256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--siege-tank-turret"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--shockbomb-ammo"
            }
        },
        prerequisites = {
            "military-4", "low-density-structure",
            "processing-unit",
            "tank", "electric-energy-accumulators"
        },
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 45,
            count = 200
        },
    },
    {
        type = "technology",
        name = MOD_NAME .. "--bunker-turret",
        icon_size = 256,
        icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/bunker256.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--bunker-turret--mk1"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--bunker-turret--mk2"
            },
            {
                type = "unlock-recipe",
                recipe = MOD_NAME .. "--bunker-turret--mk3"
            },
        },
        prerequisites = {"military-2","military-science-pack", MOD_NAME .. "--barrack", "concrete"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30,
            count = 100
        },
    },
})
