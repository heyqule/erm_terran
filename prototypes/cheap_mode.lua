
if settings.startup['erm_terran-cheap-mode'].value == false then
    return
end

local health_reduction = 0.7

---- Barracks ---
local recipe = data.raw['recipe'][MOD_NAME .. '/marine/mk1']
recipe['ingredients'] = {
    {"light-armor", 1},
    {"submachine-gun", 1},
    {"firearm-magazine", 10},
}
local unit = data.raw['unit'][MOD_NAME .. '/marine/mk1']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/marine/mk2']
recipe['ingredients'] = {
    {"heavy-armor", 1},
    {"submachine-gun", 1},
    {"piercing-rounds-magazine", 15},
}
local unit = data.raw['unit'][MOD_NAME .. '/marine/mk2']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/marine/mk3']
recipe['ingredients'] = {
    {"modular-armor", 1},
    {"submachine-gun", 1},
    {"uranium-rounds-magazine", 15},
}
local unit = data.raw['unit'][MOD_NAME .. '/marine/mk3']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/firebat/mk1']
recipe['ingredients'] = {
    {"heavy-armor", 1},
    {"flamethrower", 1},
    {"petroleum-gas-barrel", 15},
    {"explosives", 15},
}
local unit = data.raw['unit'][MOD_NAME .. '/firebat/mk1']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/firebat/mk2']
recipe['ingredients'] = {
    { "modular-armor", 1 },
    { "flamethrower", 1 },
    { "light-oil-barrel", 30 },
    { "explosives", 30 }
}
local unit = data.raw['unit'][MOD_NAME .. '/firebat/mk2']
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw['recipe'][MOD_NAME .. '/ghost/regular']
recipe['ingredients'] = {
    {"submachine-gun", 1},
    {"uranium-rounds-magazine", 20},
    {"discharge-defense-equipment", 1},
    {"modular-armor", 1},
    {"night-vision-equipment", 1},
    {"battery-equipment", 4}
}
local unit = data.raw['unit'][MOD_NAME .. '/ghost/regular']
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw['recipe'][MOD_NAME .. '/ghost/nuke']
recipe['ingredients'] = {
    {"rocket-launcher", 1},
    {"atomic-bomb", 1},
    {"modular-armor", 1},
    {"night-vision-equipment", 1},
    {"battery-equipment", 2}
}
local unit = data.raw['unit'][MOD_NAME .. '/ghost/nuke']
unit.max_health = math.ceil(unit.max_health * health_reduction)

---- Factory ---

local recipe = data.raw['recipe'][MOD_NAME .. '/goliath']
recipe['ingredients'] = {
    {"exoskeleton-equipment", 1},
    {"accumulator", 5},
    {"low-density-structure", 10},
    {"uranium-rounds-magazine", 20},
    {"rocket", 10},
}

local unit = data.raw['unit'][MOD_NAME .. '/goliath']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/siege_tank']
recipe['ingredients'] = {
    {"tank", 1},
    {"explosive-cannon-shell", 30},
    {"low-density-structure", 10},
    {"solid-fuel", 20},
}
local unit = data.raw['unit'][MOD_NAME .. '/siege_tank']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/siege_tank/mk2']
recipe['ingredients'] = {
    {"tank", 1},
    {"rocket-control-unit", 5},
    {"uranium-cannon-shell", 20},
    {"low-density-structure", 10},
    {"rocket-fuel", 10},
}
local unit = data.raw['unit'][MOD_NAME .. '/siege_tank/mk2']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/vulture']
recipe['ingredients'] = {
    {"iron-gear-wheel", 50},
    {"steel-plate", 25},
    {"petroleum-gas-barrel", 5},
    {"engine-unit", 6},
    {"land-mine", 10},
    {"grenade", 10},
}
local unit = data.raw['unit'][MOD_NAME .. '/vulture']
unit.max_health = math.ceil(unit.max_health * health_reduction)

---- Starport ---

local tech = data.raw['technology'][MOD_NAME .. '/battlecruiser']
tech['prerequisites'] = {
    "military-4", "uranium-processing",
    "low-density-structure",  MOD_NAME .. '/marine/mk-3',
    "rocket-control-unit", "laser-turret", MOD_NAME .. '/starport'
}

local recipe = data.raw['recipe'][MOD_NAME .. '/battlecruiser/yamato']
recipe['ingredients'] = {
    {"uranium-fuel-cell", 200},
    {"rocket-control-unit", 30},
    {"low-density-structure", 30},
    {"laser-turret", 20},
    {"flying-robot-frame", 30},
}
local unit = data.raw['unit'][MOD_NAME .. '/battlecruiser/yamato']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/battlecruiser/laser']
recipe['ingredients'] =         {
    {"uranium-fuel-cell", 100},
    {"rocket-control-unit", 15},
    {"low-density-structure", 15},
    {"laser-turret", 10},
    {"flying-robot-frame", 15},
}
local unit = data.raw['unit'][MOD_NAME .. '/battlecruiser/laser']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/wraith']
recipe['ingredients'] =         {
    {"rocket-launcher", 2},
    {"rocket-control-unit", 5},
    {"rocket", 50},
    {"rocket-fuel", 10},
    {"low-density-structure", 5},
    {"flying-robot-frame", 5},
}
local unit = data.raw['unit'][MOD_NAME .. '/wraith']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/wraith/scout']
recipe['ingredients'] = {
    {"laser-turret", 5},
    {"rocket-control-unit", 10},
    {"battery", 25},
    {"rocket-fuel", 20},
    {"low-density-structure", 10},
    {"flying-robot-frame", 10},
}
local unit = data.raw['unit'][MOD_NAME .. '/wraith/scout']
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw['recipe'][MOD_NAME .. '/valkyrie']
recipe['ingredients'] = {
    {"rocket-launcher", 2},
    {"low-density-structure", 8},
    {"flying-robot-frame", 8},
    {"rocket-fuel", 10},
    {"slowdown-capsule", 12},
    {"rocket-control-unit", 5},
}
local unit = data.raw['unit'][MOD_NAME .. '/valkyrie']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/science_vessel']
recipe['ingredients'] = {
    {"rocket-launcher", 2},
    {"low-density-structure", 8},
    {"flying-robot-frame", 8},
    {"rocket-fuel", 10},
    {"poison-capsule", 12},
    {"rocket-control-unit", 6},
}
local unit = data.raw['unit'][MOD_NAME .. '/science_vessel']
unit.max_health = math.ceil(unit.max_health * health_reduction)