---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 11/2/2024 7:01 PM
---

local simulations = require("__erm_toss__/prototypes/tips_and_tricks/simulations")

data:extend(
        {
            {
                type = "tips-and-tricks-item-category",
                name = MOD_NAME,
                order = "n02-["..MOD_NAME.."]"
            },
            {
                type = "tips-and-tricks-item",
                name = MOD_NAME.."-general-info",
                tag = "[entity="..MOD_NAME.."--barrack]",
                category = MOD_NAME,
                order = "a",
                is_title = true,
                starting_status = "suggested",
                --simulation = simulations.general
            },
            {
                type = "tips-and-tricks-item",
                name = MOD_NAME.."-building",
                tag = "[entity="..MOD_NAME.."--factory]",
                category = MOD_NAME,
                order = "b",
                indent = 1,
                starting_status = "suggested",
                --simulation = simulations.general
            },
            {
                type = "tips-and-tricks-item",
                name = MOD_NAME.."-unit-control",
                tag = "[entity="..MOD_NAME.."--starport]",
                category = MOD_NAME,
                order = "c",
                indent = 1,
                starting_status = "suggested",
                --simulation = simulations.general
            },
            {
                type = "tips-and-tricks-item",
                name = MOD_NAME.."-teleport",
                tag = "[entity="..MOD_NAME.."--command-center]",
                category = MOD_NAME,
                order = "d",
                indent = 1,                
                starting_status = "suggested",
                --simulation = simulations.general
            },
        }
)