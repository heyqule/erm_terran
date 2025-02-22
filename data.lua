require("__erm_terran__/global")

require "prototypes.entities.projectiles"
require "prototypes.entities.battlecuirser"
require "prototypes.entities.wraith"
require "prototypes.entities.siege_tank"
require "prototypes.entities.marine"
require "prototypes.entities.firebat"
require "prototypes.entities.goliath"
require "prototypes.entities.valkyrie"
require "prototypes.entities.science_vessel"
require "prototypes.entities.spidermine"
require "prototypes.entities.vulture"
require "prototypes.entities.ghost"

require "prototypes.entities.buildings.command_center"
require "prototypes.entities.buildings.barrack"
require "prototypes.entities.buildings.factory"
require "prototypes.entities.buildings.starport"
require "prototypes.entities.buildings.missile_turret"
require "prototypes.entities.buildings.siege_tank_turret"
require "prototypes.entities.buildings.bunker_turret"

require "prototypes.items"
require "prototypes.recipes"
require "prototypes.technologies"
require "prototypes.tips_and_tricks.prototypes"


--- Temporary Unit Control Implementation
names = require("UnitControl/shared")
require "UnitControl/data/unit_control/unit_control"
require("UnitControl/data/hotkeys")