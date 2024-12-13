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
                tag = "[entity="..MOD_NAME.."--command-center]",
                category = MOD_NAME,
                order = "a",
                is_title = true,
                starting_status = "suggested",
                --simulation = simulations.general
            },
        }
)