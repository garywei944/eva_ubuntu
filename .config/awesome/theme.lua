------------------------------
-- Ariseus Powerarrow Theme --
------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local default_themes_path = gfs.get_themes_dir()
local themes_path = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-aris/"

local theme = {}

-- theme.font          = "sans 8"
theme.font          = "Terminus 8"

theme.bg_normal     = "#1a1a1a"
theme.bg_focus      = "#313131"
theme.bg_urgent     = "#1a1a1a"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ddddff"
-- theme.fg_focus      = "#ea6f81"
theme.fg_focus      = "#ff66cc"
theme.fg_urgent     = "#cc9393"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(1)
theme.border_normal = "#3f3f3f"
theme.border_focus  = "#7f7f7f"
theme.border_marked = "#cc9393"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."icons/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."icons/titlebar/close_focus.png"

-- theme.titlebar_minimize_button_normal = themes_path.."icons/titlebar/minimize_normal.png"
-- theme.titlebar_minimize_button_focus  = themes_path.."icons/titlebar/minimize_focus.png"
theme.titlebar_minimize_button_normal = default_themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = default_themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."icons/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."icons/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."icons/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."icons/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = default_themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = default_themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = default_themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = default_themes_path.."default/layouts/magnifierw.png"
theme.layout_max = default_themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = default_themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = default_themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = default_themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = default_themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = default_themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = default_themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = default_themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = default_themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = default_themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = default_themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = default_themes_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/shareicons and /usr/shareicons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
