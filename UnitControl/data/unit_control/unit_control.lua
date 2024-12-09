local util = require("UnitControl/data/util/tf_util")
local tools = require("UnitControl/shared").unit_tools
local path = util.path("data/unit_control/")

local unit_selection_tool =
{
  type = "selection-tool",
  name = tools.unit_selection_tool,
  localised_name = {tools.unit_selection_tool},
  alt_selection_cursor_box_type = "pair",
  icon = path.."unit_select.png",
  icon_size = 1,
  stack_size = 1,
  flags = {"not-stackable", "spawnable", "only-in-cursor"},
  draw_label_for_cursor_render = true,
  entity_filters = {},
  alt_entity_filters = {},
  mouse_cursor = "",
  select = {
    border_color = {g = 1},
    cursor_box_type = "copy",
    mode = {"same-force", "entity-with-health"},
    entity_type_filters = {"unit"},
  },
  alt_select = {
    border_color = {g = 1, b = 1},
    cursor_box_type = "copy",
    mode = {"same-force", "entity-with-health"},
    entity_type_filters = {"unit"},
  },
}

local move_cursor =
{
  name = "move-cursor",
  type = "mouse-cursor",
  hot_pixel_x = 64,
  hot_pixel_y = 64,
  filename = path.."cursors/move_cursor.png"
}

local unit_move_tool =
{
  type = "selection-tool",
  name = tools.unit_move_tool,
  localised_name = {tools.unit_move_tool},
  icon = path.."unit_move_tool.png",
  icon_size = 1,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  mouse_cursor = "move-cursor",
  select = {
    border_color = {g = 1},
    cursor_box_type = "copy",
    mode = {"entity-with-health"},
  },
  alt_select = {
    border_color = {g = 1},
    cursor_box_type = "copy",
    mode = {"entity-with-health"},
  },
}

local patrol_cursor =
{
  name = "patrol-cursor",
  type = "mouse-cursor",
  hot_pixel_x = 64,
  hot_pixel_y = 64,
  filename = path.."cursors/patrol_cursor.png"
}

local unit_patrol_tool =
{
  type = "selection-tool",
  name = tools.unit_patrol_tool,
  localised_name = {tools.unit_patrol_tool},
  icon = path.."unit_move_tool.png",
  icon_size = 1,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  selection_color = {a = 0},
  alt_selection_color = {a = 0},
  mouse_cursor = "patrol-cursor",
  select = {
    border_color = {a = 0},
    cursor_box_type = "entity",
    mode = {"friend", "enemy"},
  },
  alt_select = {
    border_color = {a = 0},
    cursor_box_type = "not-allowed",
    mode = {"enemy", "friend"},
  },
}

local move_confirm_sound =
{
  name = tools.unit_move_sound,
  type = "sound",
  filename = "__core__/sound/armor-insert.ogg",
  volume = 2
}

local attack_move_cursor =
{
  name = "attack-move-cursor",
  type = "mouse-cursor",
  hot_pixel_x = 64,
  hot_pixel_y = 64,
  filename = path.."cursors/attack_move_cursor.png"
}

local unit_attack_move_tool =
{
  type = "selection-tool",
  name = tools.unit_attack_move_tool,
  localised_name = {tools.unit_attack_move_tool},
  icon = path.."unit_attack_move_tool.png",
  icon_size = 1,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  selection_color = {r = 1},
  alt_selection_color = {r = 1},
  mouse_cursor = "attack-move-cursor",
  select = {
    border_color = {g = 1},
    cursor_box_type = "not-allowed",
    mode = {"not-same-force", "entity-with-health"},
  },
  alt_select = {
    border_color = {g = 1, b = 1},
    cursor_box_type = "not-allowed",
    mode = {"not-same-force", "entity-with-health"},
  },
}

--[[
local unit_attack_tool =
{
  type = "selection-tool",
  name = tools.unit_attack_tool,
  localised_name = {tools.unit_attack_tool},
  selection_mode = {"enemy", "entity-with-force"},
  alt_selection_mode = {"enemy", "entity-with-force"},
  selection_cursor_box_type = "not-allowed",
  alt_selection_cursor_box_type = "not-allowed",
  icon = path.."unit_attack_tool.png",
  icon_size = 258,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  selection_color = {r = 1},
  alt_selection_color = {r = 1},
}

local unit_force_attack_tool =
{
  type = "selection-tool",
  name = tools.unit_force_attack_tool,
  localised_name = {tools.unit_force_attack_tool},
  selection_mode = {"not-same-force", "entity-with-health"},
  alt_selection_mode = {"not-same-force", "entity-with-health"},
  selection_cursor_box_type = "not-allowed",
  alt_selection_cursor_box_type = "not-allowed",
  icon = path.."unit_attack_tool.png",
  icon_size = 258,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  selection_color = {r = 1},
  alt_selection_color = {r = 1},
}]]

--[[local unit_follow_tool =
{
  type = "selection-tool",
  name = tools.unit_follow_tool,
  localised_name = {tools.unit_follow_tool},
  selection_mode = {"friend", "any-entity"},
  alt_selection_mode = {"friend", "any-entity"},
  selection_cursor_box_type = "copy",
  alt_selection_cursor_box_type = "copy",
  icon = path.."unit_attack_tool.png",
  icon_size = 258,
  stack_size = 1,
  flags = {"only-in-cursor", "not-stackable", "spawnable"},
  selection_color = {g = 1},
  alt_selection_color = {g = 1},
}]]

local select_units_shortcut =
{
  type = "shortcut",
  name = tools.select_units_shortcut,
  order = "y",
  action = "spawn-item",
  localised_name = {tools.unit_selection_tool},
  --technology_to_unlock = "construction-robotics",
  item_to_spawn = tools.unit_selection_tool,
  style = "blue",
  icon =
  {
    filename = path.."unit_select_shortcut.png",
    size = 128,
    priority = "extra-high-no-scale",
    flags = {"icon"}
  }
}

local selection_circle =
{
  type = "sprite",
  name = "selection-circle",
  filename = path.."selection-circle-grey.png",
  size = 418,
  draw_as_glow = true
}

data:extend{
  unit_selection_tool,
  move_confirm_sound,
  move_cursor,
  unit_move_tool,
  patrol_cursor,
  unit_patrol_tool,
  attack_move_cursor,
  unit_attack_move_tool,
  selection_circle,
  --select_units_shortcut
}
