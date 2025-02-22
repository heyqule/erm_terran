
if settings.startup["erm_terran-cheap-mode"].value == false then
    return
end

local health_reduction = 0.7

---- Barracks ---
local recipe = data.raw["recipe"][MOD_NAME .. "--marine--mk1"]
recipe["ingredients"] = {
    {type="item", name="light-armor", amount=1},
    {type="item", name="submachine-gun", amount=1},
    {type="item", name="firearm-magazine", amount=10},
}
local unit = data.raw["unit"][MOD_NAME .. "--marine--mk1"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--marine--mk2"]
recipe["ingredients"] = {
    {type="item", name="heavy-armor", amount=1},
    {type="item", name="submachine-gun", amount=1},
    {type="item", name="piercing-rounds-magazine", amount=15},
}
local unit = data.raw["unit"][MOD_NAME .. "--marine--mk2"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--marine--mk3"]
recipe["ingredients"] = {
    {type="item", name="modular-armor", amount=1},
    {type="item", name="submachine-gun", amount=1},
    {type="item", name="uranium-rounds-magazine", amount=15},
}
local unit = data.raw["unit"][MOD_NAME .. "--marine--mk3"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--firebat--mk1"]
recipe["ingredients"] = {
    {type="item", name="heavy-armor", amount=1},
    {type="item", name="flamethrower", amount=1},
    {type="item", name="petroleum-gas-barrel", amount=15},
    {type="item", name="explosives", amount=15},
}
local unit = data.raw["unit"][MOD_NAME .. "--firebat--mk1"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--firebat--mk2"]
recipe["ingredients"] = {
    {type="item", name="modular-armor", amount=1},
    {type="item", name="flamethrower", amount=1},
    {type="item", name="light-oil-barrel", amount=25},
    {type="item", name="explosives", amount=25},
}
local unit = data.raw["unit"][MOD_NAME .. "--firebat--mk2"]
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw["recipe"][MOD_NAME .. "--ghost--regular"]
recipe["ingredients"] = {
    {type="item", name="modular-armor", amount=1},
    {type="item", name="submachine-gun", amount=1},
    {type="item", name="night-vision-equipment", amount=1},
    {type="item", name="discharge-defense-equipment", amount=1},
    {type="item", name="battery-equipment", amount=4},
    {type="item", name="uranium-rounds-magazine", amount=20},
}
local unit = data.raw["unit"][MOD_NAME .. "--ghost--regular"]
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw["recipe"][MOD_NAME .. "--ghost--nuke"]
recipe["ingredients"] = {
    {type="item", name="modular-armor", amount=1},
    {type="item", name="night-vision-equipment", amount=1},
    {type="item", name="battery-equipment", amount=2},
    {type="item", name="rocket-launcher", amount=1},
    {type="item", name="atomic-bomb", amount=1},
}
local unit = data.raw["unit"][MOD_NAME .. "--ghost--nuke"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

---- Factory ---

local recipe = data.raw["recipe"][MOD_NAME .. "--goliath"]
recipe["ingredients"] = {
    {type="item", name="exoskeleton-equipment", amount=1},
    {type="item", name="accumulator", amount=5},
    {type="item", name="low-density-structure", amount=10},
    {type="item", name="rocket", amount=10},
    {type="item", name="uranium-rounds-magazine", amount=20},
}

local unit = data.raw["unit"][MOD_NAME .. "--goliath"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--siege_tank"]
recipe["ingredients"] = {
    {type="item", name="tank", amount=1},
    {type="item", name="explosive-cannon-shell", amount=30},
    {type="item", name="low-density-structure", amount=10},
    {type="item", name="solid-fuel", amount=20},
}
local unit = data.raw["unit"][MOD_NAME .. "--siege_tank"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--siege_tank--mk2"]
recipe["ingredients"] = {
    {type="item", name="tank", amount=1},
    {type="item", name="uranium-cannon-shell", amount=20},
    {type="item", name="low-density-structure", amount=10},
    {type="item", name="processing-unit", amount=5},
    {type="item", name="rocket-fuel", amount=10},
}
local unit = data.raw["unit"][MOD_NAME .. "--siege_tank--mk2"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--vulture"]
recipe["ingredients"] = {
    {type="item", name="iron-gear-wheel", amount=25},
    {type="item", name="steel-plate", amount=10},
    {type="item", name="petroleum-gas-barrel", amount=5},
    {type="item", name="engine-unit", amount=5},
    {type="item", name="land-mine", amount=10},
    {type="item", name="grenade", amount=10},
}
local unit = data.raw["unit"][MOD_NAME .. "--vulture"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

---- Starport ---

local tech = data.raw["technology"][MOD_NAME .. "--battlecruiser"]
tech["prerequisites"] = {
    "military-4", "uranium-processing",
    "low-density-structure",  MOD_NAME .. "--marine--mk-3",
    "processing-unit", "laser-turret", MOD_NAME .. "--starport"
}

local recipe = data.raw["recipe"][MOD_NAME .. "--battlecruiser--yamato"]
recipe["ingredients"] = {
    {type="item", name="uranium-fuel-cell", amount=200},
    {type="item", name="processing-unit", amount=30},
    {type="item", name="low-density-structure", amount=30},
    {type="item", name="laser-turret", amount=20},
    {type="item", name="flying-robot-frame", amount=30},
}
local unit = data.raw["unit"][MOD_NAME .. "--battlecruiser--yamato"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--battlecruiser--laser"]
recipe["ingredients"] =         {
    {type="item", name="uranium-fuel-cell", amount=100},
    {type="item", name="processing-unit", amount=15},
    {type="item", name="low-density-structure", amount=15},
    {type="item", name="laser-turret", amount=10},
    {type="item", name="flying-robot-frame", amount=15},
}
local unit = data.raw["unit"][MOD_NAME .. "--battlecruiser--laser"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--wraith"]
recipe["ingredients"] =         {
    {type="item", name="rocket-launcher", amount=2},
    {type="item", name="processing-unit", amount=5},
    {type="item", name="rocket", amount=50},
    {type="item", name="rocket-fuel", amount=10},
    {type="item", name="low-density-structure", amount=5},
    {type="item", name="flying-robot-frame", amount=5},
}
local unit = data.raw["unit"][MOD_NAME .. "--wraith"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--wraith--scout"]
recipe["ingredients"] = {
    {type="item", name="laser-turret", amount=5},
    {type="item", name="processing-unit", amount=10},
    {type="item", name="battery", amount=25},
    {type="item", name="rocket-fuel", amount=20},
    {type="item", name="low-density-structure", amount=10},
    {type="item", name="flying-robot-frame", amount=10},
}
local unit = data.raw["unit"][MOD_NAME .. "--wraith--scout"]
unit.max_health = math.ceil(unit.max_health * health_reduction)


local recipe = data.raw["recipe"][MOD_NAME .. "--valkyrie"]
recipe["ingredients"] = {
    {type="item", name="rocket-launcher", amount=2},
    {type="item", name="processing-unit", amount=5},
    {type="item", name="slowdown-capsule", amount=12},
    {type="item", name="rocket-fuel", amount=10},
    {type="item", name="low-density-structure", amount=8},
    {type="item", name="flying-robot-frame", amount=8},
}
local unit = data.raw["unit"][MOD_NAME .. "--valkyrie"]
unit.max_health = math.ceil(unit.max_health * health_reduction)

local recipe = data.raw["recipe"][MOD_NAME .. "--science_vessel"]
recipe["ingredients"] = {
    {type="item", name="rocket-launcher", amount=2},
    {type="item", name="processing-unit", amount=5},
    {type="item", name="poison-capsule", amount=12},
    {type="item", name="rocket-fuel", amount=10},
    {type="item", name="low-density-structure", amount=8},
    {type="item", name="flying-robot-frame", amount=8},
}
local unit = data.raw["unit"][MOD_NAME .. "--science_vessel"]
unit.max_health = math.ceil(unit.max_health * health_reduction)