---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 7:35 PM
---
require('__erm_terran__/global')

local marine = 'marine'
local tank = 'tank'
local wraith = 'wraith'
local battlecruiser = 'battlecruiser'

data:extend({
    {
        type = "item",
        name = MOD_NAME .. '/' .. marine .. '/mk1',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..marine..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..marine.."-mk1",
        place_result = MOD_NAME .. '/' .. marine .. '/mk1',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. marine .. '/mk2',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..marine..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..marine.."-mk2",
        place_result = MOD_NAME .. '/' .. marine .. '/mk2',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. marine .. '/mk3',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..marine..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_3.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..marine.."-mk3",
        place_result = MOD_NAME .. '/' .. marine .. '/mk3',
        stack_size = 20
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. tank,
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..tank..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..tank,
        place_result = MOD_NAME .. '/' .. tank ,
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. tank .. '/mk2',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..tank..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_2.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..tank,
        place_result = MOD_NAME .. '/' .. tank .. '/mk2' ,
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. tank,
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..tank..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_1.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..tank,
        place_result = MOD_NAME .. '/' .. tank ,
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. battlecruiser .. '/yamato',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..battlecruiser..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_Y.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..battlecruiser,
        place_result = MOD_NAME .. '/' .. battlecruiser .. '/yamato',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. battlecruiser .. '/laser',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..battlecruiser..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_L.png",
                icon_size = 64,
                scale = 0.25,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..battlecruiser,
        place_result = MOD_NAME .. '/' .. battlecruiser .. '/laser',
        stack_size = 5
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. wraith,
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..wraith..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_red.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..wraith,
        place_result = MOD_NAME .. '/' .. wraith,
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. wraith .. '/cold',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..wraith..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_blue.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..wraith,
        place_result = MOD_NAME .. '/' .. wraith .. '/cold',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. wraith .. '/acid',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..wraith..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_green.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..wraith,
        place_result = MOD_NAME .. '/' .. wraith .. '/acid',
        stack_size = 10
    },
    {
        type = "item",
        name = MOD_NAME .. '/' .. wraith .. '/scout',
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..wraith..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_S.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        subgroup = "erm_controlable_units",
        order = "a-erm-"..wraith,
        place_result = MOD_NAME .. '/' .. wraith .. '/scout',
        stack_size = 10
    },


    --- Building
    {
        type = "item",
        name = MOD_NAME .. '/command-center',
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
        subgroup = "erm_controlable_buildings",
        order = "a-erm-building-commandcenter",
        place_result = MOD_NAME .. '/command-center',
        stack_size = 6
    }
})
