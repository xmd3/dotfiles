local theme_assets = require "beautiful.theme_assets"
local xresources = require "beautiful.xresources"
local rnotification = require "ruled.notification"
local gears = require "gears"
local gfs = require "gears.filesystem"

local themes_path = gfs.get_themes_dir()
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

local theme = {}

theme.wallpaper = gfs.get_configuration_dir() .. "themes/catppuccin/bg.jpg"
theme.icon_theme = "/usr/share/icons/Papirus-Dark/128x128/apps/"

theme.font_name = "JetBrainsMono Nerd Font"
theme.font_size = "12"
theme.font = theme.font_name .. " " .. theme.font_size

theme.x_bg = xrdb.background
theme.x_fg = xrdb.foreground

theme.x_black = xrdb.color0
theme.x_red = xrdb.color1
theme.x_green = xrdb.color2
theme.x_yellow = xrdb.color3
theme.x_blue = xrdb.color4
theme.x_magenta = xrdb.color5
theme.x_cyan = xrdb.color6
theme.x_white = xrdb.color7

theme.x_br_black = xrdb.color8
theme.x_br_red = xrdb.color9
theme.x_br_green = xrdb.color10
theme.x_br_yellow = xrdb.color11
theme.x_br_blue = xrdb.color12
theme.x_br_magenta = xrdb.color13
theme.x_br_cyan = xrdb.color14
theme.x_br_white = xrdb.color15

theme.x_black1 = "#51576D"
theme.x_black2 = "#626880"
theme.x_white1 = "#B5BFE2"
theme.x_white2 = "#A5ADCE"

theme.bg_normal = theme.x_bg
theme.bg_focus = theme.x_cyan
theme.bg_urgent = theme.x_red
theme.bg_minimize = theme.x_black1
theme.bg_systray = theme.bg_normal

theme.fg_normal = theme.x_fg
theme.fg_focus = theme.x_bg
theme.fg_urgent = theme.x_fg
theme.fg_minimize = theme.fg_normal

theme.useless_gap = dpi(8)
theme.border_width = dpi(5)
theme.border_color_normal = theme.x_black2
theme.border_color_active = theme.x_cyan
theme.border_color_marked = theme.x_magenta

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"
theme.tasklist_shape = gears.shape.rounded_rect

-- Generate taglist squares:
local taglist_square_size = dpi(8)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel =
  theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)
-- theme.taglist_shape = gears.shape.rounded_rect

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
theme.notification_font = theme.font

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(30)
theme.menu_width = dpi(190)
theme.menu_border_width = dpi(2)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path
  .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path
  .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path
  .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path
  .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path
  .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path
  .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path
  .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path
  .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path
  .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path
  .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path
  .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path
  .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path
  .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path
  .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path
  .. "default/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "default/layouts/cornersew.png"

theme = theme_assets.recolor_layout(theme, theme.fg_normal)

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Set different colors for urgent notifications.
rnotification.connect_signal("request::rules", function()
  rnotification.append_rule {
    rule = { urgency = "critical" },
    properties = { bg = theme.cp_red, fg = theme.cp_fg },
  }
end)

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
