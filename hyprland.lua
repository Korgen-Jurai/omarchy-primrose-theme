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
})
