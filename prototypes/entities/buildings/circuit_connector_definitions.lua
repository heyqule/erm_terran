---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/20/2025 8:17 PM
---
require ("circuit-connector-sprites")
erm_terran_circuit_wire_max_distance = 16
erm_terran_circuit_connector = {
    barrack = circuit_connector_definitions.create_vector
    (
            universal_connector_template,
            {
                { variation = 18, main_offset = util.by_pixel(34, 30), shadow_offset = util.by_pixel(45, 36), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(34, 30), shadow_offset = util.by_pixel(45, 36), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(34, 30), shadow_offset = util.by_pixel(45, 36), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(34, 30), shadow_offset = util.by_pixel(45, 36), show_shadow = true }
            }
    ),
    factory = circuit_connector_definitions.create_vector
    (
            universal_connector_template,
            {
                { variation = 18, main_offset = util.by_pixel(54, -75), shadow_offset = util.by_pixel(65, -81), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(54, -75), shadow_offset = util.by_pixel(65, -81), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(54, -75), shadow_offset = util.by_pixel(65, -81), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(54, -75), shadow_offset = util.by_pixel(65, -81), show_shadow = true }
            }
    ),
    starport = circuit_connector_definitions.create_vector
    (
            universal_connector_template,
            {
                { variation = 18, main_offset = util.by_pixel(24, 25), shadow_offset = util.by_pixel(35, 31), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(24, 25), shadow_offset = util.by_pixel(35, 31), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(24, 25), shadow_offset = util.by_pixel(35, 31), show_shadow = true },
                { variation = 18, main_offset = util.by_pixel(24, 25), shadow_offset = util.by_pixel(35, 31), show_shadow = true }
            }
    )
}

