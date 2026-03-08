require "global"

data:extend {
    --- Startup Tab
    {
        type = "bool-setting",
        name = "erm_terran-cheap-mode",
        description = "erm_terran-cheap-mode",
        setting_type = "startup",
        default_value = false,
        order = "enemyracemanager-terran-100"
    },
    {
        type = "bool-setting",
        name = "erm_terran-barrack-unit-collision-increase",
        description = "erm_terran-barrack-unit-collision-increase",
        setting_type = "startup",
        default_value = false,
        order = "enemyracemanager-terran-101"
    }
}

