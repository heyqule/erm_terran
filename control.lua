--
-- Created by IntelliJ IDEA.
-- User: heyqule
-- Date: 02/14/2021
-- Time: 5:04 PM
-- To change this template use File | Settings | File Templates.
--
require("global")


handler = require("event_handler")

handler.add_lib(require("terran_controls"))



local RemoteApi = require("scripts/remote")
remote.add_interface("erm_terran", RemoteApi)
