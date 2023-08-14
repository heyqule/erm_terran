---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 7:35 PM
---
require('__erm_terran__/global')


data:extend({
    {
        type = "item",
        name = MOD_NAME .. '/marine/mk1',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-marine-mk1",
        place_result = MOD_NAME .. '/marine/mk1',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/marine/mk2',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-marine-mk2",
        place_result = MOD_NAME .. '/marine/mk2',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/marine/mk3',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/marine.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_3.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-marine-mk3",
        place_result = MOD_NAME .. '/marine/mk3',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/firebat/mk1',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-firebat-mk1",
        place_result = MOD_NAME .. '/firebat/mk1',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/firebat/mk2',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/firebat.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-firebat-mk2",
        place_result = MOD_NAME .. '/firebat/mk2',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/siege_tank',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-siege_tank",
        place_result = MOD_NAME .. '/siege_tank' ,
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/siege_tank/mk2',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/siege_tank.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-siege_tank",
        place_result = MOD_NAME .. '/siege_tank/mk2' ,
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/goliath',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/goliath.png",
                icon_size = 64,
            }
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-goliath2",
        place_result = MOD_NAME .. '/goliath',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/battlecruiser/yamato',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/battlecruiser.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_Y.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-battlecruiser",
        place_result = MOD_NAME .. '/battlecruiser/yamato',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/battlecruiser/laser',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/battlecruiser.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_L.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-battlecruiser",
        place_result = MOD_NAME .. '/battlecruiser/laser',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/wraith',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_red.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-wraith",
        place_result = MOD_NAME .. '/wraith',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/wraith/scout',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/wraith.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_S.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-wraith",
        place_result = MOD_NAME .. '/wraith/scout',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/valkyrie',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/valkyrie.png",
                icon_size = 64,
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-valkyrie",
        place_result = MOD_NAME .. '/valkyrie',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/science_vessel',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/science_vessel.png",
                icon_size = 64,
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-science_vessel",
        place_result = MOD_NAME .. '/science_vessel',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/vulture',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/vulture.png",
                icon_size = 64,
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-vulture",
        place_result = MOD_NAME .. '/vulture',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/ghost/regular',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/ghost.png",
                icon_size = 64,
            },
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-ghost",
        place_result = MOD_NAME .. '/ghost/regular',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/ghost/nuke',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/units/ghost.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/atomic-bomb.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            }
        },
        subgroup = "erm_controllable_units",
        order = "a-erm-ghost-nuke",
        place_result = MOD_NAME .. '/ghost/nuke',
        stack_size = 5
    },



    --- Building
    {
        type = "item",
        name = MOD_NAME .. '/command-center',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
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
        place_result = MOD_NAME .. '/command-center',
        stack_size = 4
    },
    {
        type = "item",
        name = MOD_NAME .. '/barrack',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
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
        place_result = MOD_NAME .. '/barrack',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/factory',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
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
        order = "a-erm-building-factory",
        place_result = MOD_NAME .. '/factory',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/starport',
        icons = {
            {
                icon = "__erm_terran_hd_assets__/graphics/entity/icons/buildings/advisor.png",
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
        place_result = MOD_NAME .. '/starport',
        stack_size = 5
    }
})
