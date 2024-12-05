--
-- Created by IntelliJ IDEA.
-- User: heyqule
-- Date: 02/14/2021
-- Time: 5:04 PM
-- To change this template use File | Settings | File Templates.
--
require("global")

----- Temporary Unit Control
handler = require("event_handler")

names = require("UnitControl/shared")
handler.add_lib(require("UnitControl/script/unit_control"))

handler.add_lib(require("terran_controls"))



local RemoteApi = require("scripts/remote")
remote.add_interface("erm_terran", RemoteApi)
