-- Source: omarchy-primrose-theme/hyprland.conf

local activeBorderColor = {
  colors = { "rgba(c1505cee)", "rgba(5c7fb8ee)" },
  angle = 45,
}
local inactiveBorderColor = "rgba(4a454eaa)"

hl.config({
  general = {
    col = {
      active_border = activeBorderColor,
      inactive_border = inactiveBorderColor,
    },
    gaps_in = 2,
    gaps_out = 2,
  },
  group = {
    col = {
      border_active = activeBorderColor,
      border_inactive = inactiveBorderColor,
    },
  },
  decoration = {
    rounding = 0,
    rounding_power = 0,
  },
  animations = {
    enabled = true,
  },
})

hl.curve("servo", { type = "bezier", points = { { 0.12, 0.75 }, { 0.08, 1.00 } } })
hl.curve("clamp", { type = "bezier", points = { { 0.22, 0.92 }, { 0.10, 1.00 } } })
hl.curve("hydraulic", { type = "bezier", points = { { 0.16, 0.80 }, { 0.06, 1.00 } } })
hl.curve("steel", { type = "bezier", points = { { 0.22, 0.78 }, { 0.08, 1.00 } } })
hl.curve("mech", { type = "bezier", points = { { 0.30, 0.98 }, { 0.8, 1.03 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "mech" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "mech", style = "popin 4%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "mech", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, bezier = "mech" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "mech", style = "slidevert" })
hl.animation({ leaf = "layers", enabled = true, speed = 6, bezier = "mech", style = "slidevert" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6, bezier = "mech", style = "slidevert" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 6, bezier = "mech", style = "slidevert" })

hl.layer_rule({ no_anim = false, match = { namespace = "walker" } })
