require 'global'

data:extend {
    --- Startup Tab
    {
        type = "bool-setting",
        name = "erm_terran-add-light",
        description = "erm_terran-add-light",
        setting_type = "startup",
        default_value = true,
        order = "enemyracemanager-terran-100"
    },
    {
        type = "bool-setting",
        name = "erm_terran-cheap-mode",
        description = "erm_terran-cheap-mode",
        setting_type = "startup",
        default_value = false,
        order = "enemyracemanager-terran-101"
    },
    {
        type = "color-setting",
        name = "erm_terran-team_color",
        description = "erm_terran-team_color",
        setting_type = "startup",
        default_value = TERRAN_TEAM_COLOR,
        order = "erm_terran-111",
    },
    {
        type = "int-setting",
        name = "erm_terran-team_blend_mode",
        description = "erm_terran-team_blend_mode",
        setting_type = "startup",
        default_value = 3,
        order = "erm_terran-112",
        allowed_values = { 1,2,3,4,5,6 },
    },
    {
        type = "bool-setting",
        name = "erm_terran-team_color_preserve_gloss",
        description = "erm_terran-team_color_preserve_gloss",
        setting_type = "startup",
        default_value = false,
        order = "erm_terran-113",
    },
}

