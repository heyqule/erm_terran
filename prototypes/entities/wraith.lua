---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/9/2021 6:53 PM
---
require('__stdlib__/stdlib/utils/defines/time')
require('util')
local Sprites = require('__stdlib__/stdlib/data/modules/sprites')

require('__erm_terran__/global')

local ERM_UnitTint = require('__enemyracemanager__/lib/unit_tint')

local ERM_Config = require('__enemyracemanager__/lib/global_config')
local ERMDataHelper = require('__enemyracemanager__/lib/helper/data_helper')
local TerranSound = require('__erm_terran__/prototypes/sound')

local name = 'wraith'

local attack_range = 16

-- Misc Settings
local vision_distance = 35
local pollution_to_join_attack = 250
local distraction_cooldown = 20

-- Animation Settings
local unit_scale = 1.5

local collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } }
local selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } }

data:extend({
    {
        type = "unit",
        name = MOD_NAME .. '/' .. name,
        localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name },
        icons = {
            {
                icon = "__erm_terran__/graphics/entity/icons/units/"..name..".png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_red.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        flags = { "placeable-enemy", "placeable-player", "placeable-off-grid", "not-flammable" },
        has_belt_immunity = true,
        max_health = 2000,
        order = MOD_NAME .. name,
        subgroup = "erm_controlable_units",
        shooting_cursor_size = 2,
        radar_range = 1,
        resistances = {
            { type = "acid", percent = 75 },
            { type = "poison", percent = 100 },
            { type = "physical", percent = 75 },
            { type = "fire", percent = 75 },
            { type = "explosion", percent = 75 },
            { type = "laser", percent = 75 },
            { type = "electric", percent = 75 },
            { type = "cold", percent = 75 }
        },
        healing_per_tick = 0,
        collision_mask = ERMDataHelper.getFlyingCollisionMask(),
        collision_box = collision_box,
        selection_box = selection_box,
        sticker_box = selection_box,
        vision_distance = vision_distance,
        movement_speed = 0.3,
        repair_speed_modifier = 0.33,
        pollution_to_join_attack = pollution_to_join_attack,
        distraction_cooldown = distraction_cooldown,
        --ai_settings = biter_ai_settings,
        attack_parameters = {
            type = "projectile",
            ammo_category = 'rocket',
            range = attack_range,
            cooldown = 120,
            cooldown_deviation = 0.1,
            warmup = 6,
            ammo_type = {
                category = "rocket",
                target_type = "direction",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "wraith-rocket",
                        starting_speed = 0.3
                    }
                }
            },
            sound = TerranSound.attack(name, 0.75, 1),
            animation = {
                layers = {
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                        width = 64,
                        height = 64,
                        frame_count = 1,
                        repeat_count = 2,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.6,
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-effect.png",
                        width = 64,
                        height = 64,
                        frame_count = 2,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        animation_speed = 0.6,
                        draw_as_glow = true,
                        blend_mode = 'additive',
                        tint = ERM_UnitTint.tint_plane_burner(),
                    },
                    {
                        filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                        width = 64,
                        height = 64,
                        frame_count = 1,
                        repeat_count = 2,
                        axially_symmetrical = false,
                        direction_count = 16,
                        scale = unit_scale,
                        tint = ERM_UnitTint.tint_shadow(),
                        animation_speed = 0.6,
                        draw_as_shadow = true,
                        shift = { 4, 0 }
                    }
                }
            }
        },
        render_layer = "air-object",
        final_render_layer = "air-object",
        distance_per_frame = 0.5,
        run_animation = {
            layers = {
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 64,
                    height = 64,
                    frame_count = 1,
                    repeat_count = 2,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.6
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-effect.png",
                    width = 64,
                    height = 64,
                    frame_count = 2,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    animation_speed = 0.6,
                    draw_as_glow = true,
                    blend_mode = 'additive',
                    tint = ERM_UnitTint.tint_plane_burner(),
                },
                {
                    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                    width = 64,
                    height = 64,
                    frame_count = 1,
                    repeat_count = 2,
                    axially_symmetrical = false,
                    direction_count = 16,
                    scale = unit_scale,
                    tint = ERM_UnitTint.tint_shadow(),
                    shift = { 4, 0 },
                    animation_speed = 0.6,
                    draw_as_shadow = true
                }
            }
        },
        map_color = ERM_UnitTint.tint_army_color(),
        dying_explosion = "medium-explosion",
        dying_sound = TerranSound.death(name, 1),
        corpse = name .. '-corpse'
    },
    {
        type = "corpse",
        name = name .. '-corpse',
        icon = "__erm_terran__/graphics/entity/icons/units/" .. name .. ".png",
        icon_size = 64,
        flags = { "placeable-off-grid", "building-direction-8-way", "not-on-map" },
        selection_box = selection_box,
        selectable_in_game = false,
        dying_speed = 0.04,
        time_before_removed = defines.time.second,
        subgroup = "corpses",
        order = "x" .. name,
        animation = Sprites.empty_pictures(),
    },
    {
        type = "projectile",
        name = "wraith-rocket",
        flags = { "not-on-map" },
        acceleration = 0.005,
        turn_speed = 0.003,
        turning_speed_increases_exponentially_with_projectile_speed = true,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "create-entity",
                        entity_name = "explosion"
                    },
                    {
                        type = "create-entity",
                        entity_name = "small-scorchmark-tintable",
                        check_buildability = true
                    },
                    {
                        type = "invoke-tile-trigger",
                        repeat_count = 1
                    },
                    {
                        type = "destroy-decoratives",
                        from_render_layer = "decorative",
                        to_render_layer = "object",
                        include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                        include_decals = false,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                        radius = 1.5 -- large radius for demostrative purposes
                    },
                    {
                        type = "damage",
                        damage = { amount = 50, type = "physical" }
                    },
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            force = "not-same",
                            radius = 3,
                            ignore_collision_condition = true,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "damage",
                                        damage = { amount = 175, type = "explosion" },
                                        apply_damage_to_trees = true,
                                    },
                                }
                            }
                        }
                    }
                }
            }
        },
        --light = {intensity = 0.5, size = 4},
        animation = {
            filename = "__base__/graphics/entity/rocket/rocket.png",
            draw_as_glow = true,
            frame_count = 8,
            line_length = 8,
            width = 9,
            height = 35,
            shift = { 0, 0 },
            priority = "high"
        },
        shadow = {
            filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
            frame_count = 1,
            width = 7,
            height = 24,
            priority = "high",
            shift = { 0, 0 }
        },
        smoke = {
            {
                name = "smoke-fast",
                deviation = { 0.15, 0.15 },
                frequency = 1,
                position = { 0, 1 },
                slow_down_factor = 1,
                starting_frame = 3,
                starting_frame_deviation = 5,
                starting_frame_speed = 0,
                starting_frame_speed_deviation = 5
            }
        }
    }
})

-- Scout Wraith --
local scout_wraith = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name])
scout_wraith.name = MOD_NAME .. '/' .. name .. '/scout'
scout_wraith.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name .. '/scout'}
scout_wraith['icons'][2]['icon'] = "__base__/graphics/icons/signal/signal_S.png"
scout_wraith.movement_speed = 0.5

data:extend({scout_wraith})

-- Cold Wraith --
-- Cold explosion --
local cold_wraith_explosion = util.table.deepcopy(data.raw["explosion"]['explosion'])
cold_wraith_explosion['name'] = 'cold-explosion'
cold_wraith_explosion['localised_name'] = {"entity-name.cold-explosion"}
table.remove(cold_wraith_explosion['animations'], 1)
for i, animation in pairs(cold_wraith_explosion['animations']) do
    cold_wraith_explosion['animations'][i]['filename'] = "__erm_terran__/graphics/entity/explosion/bw-explosion-3.png"
    cold_wraith_explosion['animations'][i]['tint'] = ERM_UnitTint.tint_cold_explosion()
    cold_wraith_explosion['animations'][i]['scale'] = 1.5
    cold_wraith_explosion['animations'][i]['hr_version']['filename'] = "__erm_terran__/graphics/entity/explosion/bw-hr-explosion-3.png"
    cold_wraith_explosion['animations'][i]['hr_version']['tint'] = ERM_UnitTint.tint_cold_explosion()
    cold_wraith_explosion['animations'][i]['hr_version']['scale'] = 1.5
end
data:extend({cold_wraith_explosion})

-- Cold projectile --
local cold_wraith_projectile = util.table.deepcopy(data.raw["projectile"]['wraith-rocket'])
cold_wraith_projectile['name'] = 'cold-wraith-projectile'
cold_wraith_projectile['action']['action_delivery']
    ['target_effects'][1]['entity_name'] = 'cold-explosion'
cold_wraith_projectile['action']['action_delivery']
    ['target_effects'][6]['action']['action_delivery']
    ['target_effects'][1]['damage'] = { amount = 155, type = "cold" }

data:extend({cold_wraith_projectile})

-- Cold entity --
local cold_wraith = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name])

cold_wraith.name = MOD_NAME .. '/' .. name .. '/cold'
cold_wraith.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name .. '/cold'}
cold_wraith['icons'][2]['icon'] = "__base__/graphics/icons/signal/signal_blue.png"

table.insert(cold_wraith['run_animation']['layers'], {
    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
    width = 64,
    height = 64,
    frame_count = 1,
    repeat_count = 2,
    axially_symmetrical = false,
    direction_count = 16,
    scale = unit_scale,
    animation_speed = 0.6,
    tint = ERM_UnitTint.tint_cold()
})

cold_wraith['attack_parameters']['ammo_type']['action']['action_delivery']['projectile'] = 'cold-wraith-projectile'

data:extend({cold_wraith})

-- Acid Wraith --
local acid_wraith_explosion = util.table.deepcopy(data.raw["explosion"]['explosion'])
acid_wraith_explosion['name'] = 'acid-explosion'
acid_wraith_explosion['localised_name'] = {"entity-name.acid-explosion"}
table.remove(acid_wraith_explosion['animations'], 1)
for i, animation in pairs(acid_wraith_explosion['animations']) do
    acid_wraith_explosion['animations'][i]['tint'] = ERM_UnitTint.tint_acid_explosion()
    acid_wraith_explosion['animations'][i]['scale'] = 1.5
    acid_wraith_explosion['animations'][i]['hr_version']['tint'] = ERM_UnitTint.tint_acid_explosion()
    acid_wraith_explosion['animations'][i]['hr_version']['scale'] = 1.5
end

data:extend({acid_wraith_explosion})

local acid_wraith_projectile = util.table.deepcopy(data.raw["projectile"]['wraith-rocket'])
acid_wraith_projectile['name'] = 'acid-wraith-projectile'
acid_wraith_projectile['action']['action_delivery']
    ['target_effects'][1]['entity_name'] = 'acid-explosion'
acid_wraith_projectile['action']['action_delivery']
    ['target_effects'][6]['action']['action_delivery']
    ['target_effects'][1]['damage'] = { amount = 165, type = "acid" }

data:extend({acid_wraith_projectile})

local acid_wraith = util.table.deepcopy(data.raw["unit"][MOD_NAME .. '/' .. name])
acid_wraith.name = MOD_NAME .. '/' .. name .. '/acid'
acid_wraith.localised_name = { 'entity-name.' .. MOD_NAME .. '/' .. name .. '/acid' }
acid_wraith['icons'][2]['icon'] = "__base__/graphics/icons/signal/signal_green.png"

table.insert(acid_wraith['run_animation']['layers'], {
    filename = "__erm_terran__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
    width = 64,
    height = 64,
    frame_count = 1,
    repeat_count = 2,
    axially_symmetrical = false,
    direction_count = 16,
    scale = unit_scale,
    animation_speed = 0.6,
    tint = ERM_UnitTint.tint_acid()
})
acid_wraith['attack_parameters']['ammo_type']
    ['action']['action_delivery']['projectile'] = 'acid-wraith-projectile'
data:extend({acid_wraith})