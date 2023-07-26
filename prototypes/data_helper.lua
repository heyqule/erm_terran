---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 12/4/2022 2:27 AM
---

local DataHelper = {}

function DataHelper.getLight()
    local light
    if settings.startup['erm_terran-add-light'].value then
        light = {
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture =
                {
                    filename = "__core__/graphics/light-cone.png",
                    flags = { "light"},
                    scale = 2,
                    width = 200,
                    height = 200
                },
                shift = {0, -6},
                size = 1,
                intensity = 0.4,
                color = {r = 0.92, g = 0.77, b = 0.3}
            }
        }
    end
    return light
end

function DataHelper.getResistance(value)
    return {
        { type = "acid", percent = value },
        { type = "poison", percent = value },
        { type = "physical", percent = value },
        { type = "fire", percent = value },
        { type = "explosion", percent = value },
        { type = "laser", percent = value },
        { type = "electric", percent = value },
        { type = "cold", percent = value }
    }
end

return DataHelper