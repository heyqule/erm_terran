---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 2/8/2023 9:02 PM
---
local RemoteAPI = {}

function RemoteAPI.milestones_preset_addons()
    local preset = {
        [MOD_NAME] = {
            required_mods = {MOD_NAME},
            milestones = {
                {type="group", name="Terran Research"},
                {type="technology", name=MOD_NAME.."/marine/mk-1",  quantity=1},
                {type="technology", name=MOD_NAME.."/marine/mk-2",  quantity=1},
                {type="technology", name=MOD_NAME.."/marine/mk-3",  quantity=1},
                {type="technology", name=MOD_NAME.."/firebat/mk-1",  quantity=1},
                {type="technology", name=MOD_NAME.."/firebat/mk-2",  quantity=1},
                {type="technology", name=MOD_NAME.."/ghost/regular",  quantity=1},
                {type="technology", name=MOD_NAME.."/ghost/nuke",  quantity=1},
                {type="technology", name=MOD_NAME.."/vulture",  quantity=1},
                {type="technology", name=MOD_NAME.."/siege_tank/mk-1",  quantity=1},
                {type="technology", name=MOD_NAME.."/siege_tank/mk-2",  quantity=1},
                {type="technology", name=MOD_NAME.."/goliath",  quantity=1},
                {type="technology", name=MOD_NAME.."/wraith",  quantity=1},
                {type="technology", name=MOD_NAME.."/valkyrie",  quantity=1},
                {type="technology", name=MOD_NAME.."/science_vessel",  quantity=1},
                {type="technology", name=MOD_NAME.."/battlecruiser",  quantity=1},
                {type="technology", name=MOD_NAME.."/barrack",  quantity=1},
                {type="technology", name=MOD_NAME.."/factory",  quantity=1},
                {type="technology", name=MOD_NAME.."/starport",  quantity=1},
                {type="technology", name=MOD_NAME.."/command-center",  quantity=1},
            }
        },
    }

    return preset
end

---
--- Print global for debug purpose when you run remote.call("enemyracemanager_debug", "print_global")"
---
function RemoteAPI.print_global()
    helpers.write_file("erm_terran/erm-global.json",helpers.table_to_json(util.copy(global)))
end

return RemoteAPI
