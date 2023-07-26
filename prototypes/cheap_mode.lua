
if settings.startup['erm_terran-cheap-mode'].value == false then
    return
end

local health_reduction = 0.7
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

local recipe = data.raw['recipe'][MOD_NAME .. '/tank']
recipe['ingredients'] = {
    {"tank", 1},
    {"explosive-cannon-shell", 30},
    {"low-density-structure", 10},
    {"solid-fuel", 20},
}
local unit = data.raw['unit'][MOD_NAME .. '/tank']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/tank/mk2']
recipe['ingredients'] = {
    {"tank", 1},
    {"rocket-control-unit", 5},
    {"uranium-cannon-shell", 20},
    {"low-density-structure", 10},
    {"rocket-fuel", 10},
}
local unit = data.raw['unit'][MOD_NAME .. '/tank/mk2']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/battlecruiser/yamato']
recipe['ingredients'] = {
    {"nuclear-fuel", 20},
    {"rocket-control-unit", 30},
    {"low-density-structure", 30},
    {"laser-turret", 20},
    {"flying-robot-frame", 30},
}
local unit = data.raw['unit'][MOD_NAME .. '/battlecruiser/yamato']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/battlecruiser/laser']
recipe['ingredients'] =         {
    {"nuclear-fuel", 10},
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

local recipe = data.raw['recipe'][MOD_NAME .. '/wraith/cold']
recipe['ingredients'] = {
    {"rocket-launcher", 2},
    {"rocket-control-unit", 5},
    {"slowdown-capsule", 50},
    {"rocket-fuel", 10},
    {"low-density-structure", 5},
    {"flying-robot-frame", 5},
}
local unit = data.raw['unit'][MOD_NAME .. '/wraith/cold']
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw['recipe'][MOD_NAME .. '/wraith/acid']
recipe['ingredients'] = {
    {"rocket-launcher", 2},
    {"rocket-control-unit", 5},
    {"poison-capsule", 50},
    {"rocket-fuel", 10},
    {"low-density-structure", 5},
    {"flying-robot-frame", 5},
}
local unit = data.raw['unit'][MOD_NAME .. '/wraith/acid']
unit.max_health = math.ceil(unit.max_health * health_reduction)