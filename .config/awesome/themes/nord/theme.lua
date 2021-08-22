-------------------------------
--  "Nord" awesome theme     --
--  by hmix adapted from     --
--  zenburn theme            --
--    By Adrian C. (anrxc)   --
-------------------------------

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi

local spotify_widget = require("awesome-wm-widgets.spotify-widget.spotify")
local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")

-- {{{ Main
local theme = {}
theme.wallpaper = themes_path .. "nord/nord-background.png"
-- }}}

-- {{{ Styles
-- theme.font      = "sans 8"
theme.font      = "Play 9"

-- {{{ Colors
theme.fg_normal  = "#ECEFF4"
theme.fg_focus   = "#88C0D0"
theme.fg_urgent  = "#D08770"
theme.bg_normal  = "#2E3440"
theme.bg_focus   = "#3B4252"
theme.bg_urgent  = "#3B4252"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#3B4252"
theme.border_focus  = "#81A1C1"
theme.border_marked = "#D08770"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus   = "#3B4252"
theme.titlebar_bg_normal  = "#2E3440"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#D08770"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#A3BE8C"
--theme.fg_center_widget = "#8FBCBB"
--theme.fg_end_widget    = "#BF616A"
--theme.bg_widget        = "#434C5E"
--theme.border_widget    = "#3B4252"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#D08770"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "nord/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "nord/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "nord/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "nord/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "nord/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "nord/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "nord/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "nord/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "nord/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "nord/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "nord/layouts/dwindle.png"
theme.layout_max        = themes_path .. "nord/layouts/max.png"
theme.layout_fullscreen = themes_path .. "nord/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "nord/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "nord/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "nord/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "nord/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "nord/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "nord/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "nord/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "nord/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "nord/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "nord/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "nord/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "nord/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "nord/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "nord/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "nord/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "nord/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "nord/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "nord/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "nord/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "nord/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "nord/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "nord/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "nord/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "nord/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

-- {{{ batteryarc_widget
theme.widget_main_color = "#88C0D0"
theme.widget_red = "#BF616A"
theme.widget_yellow = "#EBCB8B"
theme.widget_green = "#A3BE8C"
theme.widget_black = "#000000"
theme.widget_transparent = "#00000000"
-- }}}

theme.confdir                                   = os.getenv("HOME") .. "/.config/awesome/themes/nord"
theme.widget_temp                               = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "/icons/cpu.png"
theme.widget_weather                            = theme.confdir .. "/icons/dish.png"
theme.widget_fs                                 = theme.confdir .. "/icons/fs.png"
theme.widget_mem                                = theme.confdir .. "/icons/mem.png"
theme.widget_note                               = theme.confdir .. "/icons/note.png"
theme.widget_note_on                            = theme.confdir .. "/icons/note_on.png"
theme.widget_netdown                            = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "/icons/mail.png"
theme.widget_batt                               = theme.confdir .. "/icons/bat.png"
theme.widget_clock                              = theme.confdir .. "/icons/clock.png"
theme.widget_vol                                = theme.confdir .. "/icons/spkr.png"

local markup = lain.util.markup

-- Separator
local separator = wibox.widget {
    widget = wibox.widget.separator,
    orientation = "vertical",
    forced_width = 15,
    color = "#ffffff",
    visible = true
 }

local separators = lain.util.separators

local arrow = separators.arrow_left

function theme.powerline_rl(cr, width, height)
    local arrow_depth, offset = height/2, 0

    -- Avoid going out of the (potential) clip area
    if arrow_depth < 0 then
        width  =  width + 2*arrow_depth
        offset = -arrow_depth
    end

    cr:move_to(offset + arrow_depth         , 0        )
    cr:line_to(offset + width               , 0        )
    cr:line_to(offset + width - arrow_depth , height/2 )
    cr:line_to(offset + width               , height   )
    cr:line_to(offset + arrow_depth         , height   )
    cr:line_to(offset                       , height/2 )

    cr:close_path()
end

local function pl(widget, bgcolor, padding)
    return wibox.container.background(wibox.container.margin(widget, dpi(16), dpi(16)), bgcolor, theme.powerline_rl)
end

-- Textclock
os.setlocale(os.getenv("LANG")) -- to localize the clock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local mytextclock = wibox.widget.textclock(markup("#fff", "%A %d %B ") .. markup("#fff", "|") .. markup("#fff", " %H:%M "))
mytextclock.font = theme.font

local cw = calendar_widget({
    theme = "nord"
})
mytextclock:connect_signal("button::press", 
    function(_, _, _, button)
        if button == 1 then cw.toggle() end
    end)

-- Calendar
--theme.cal = lain.widget.cal({
--    attach_to = { mytextclock },
--    notification_preset = {
--        font = "Terminus 10",
--        fg   = theme.fg_normal,
--        bg   = theme.bg_normal
--    }
--})

-- Weather
--[[ to be set before use
local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 2643743, -- placeholder (London)
    notification_preset = { font = "Terminus 10", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#eca4c4", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, "#eca4c4", descr .. " @ " .. units .. "°C "))
    end
})
--]]

-- / fs
--[[ commented because it needs Gio/Glib >= 2.54
local fsicon = wibox.widget.imagebox(theme.widget_fs)
theme.fs = lain.widget.fs({
    notification_preset = { font = "Terminus 10", fg = theme.fg_normal },
    settings  = function()
        widget:set_markup(markup.fontfg(theme.font, "#80d9d8", string.format("%.1f", fs_now["/"].used) .. "% "))
    end
})
--]]

-- Mail IMAP check
--[[ to be set before use
local mailicon = wibox.widget.imagebox()
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            mailicon:set_image(theme.widget_mail)
            widget:set_markup(markup.fontfg(theme.font, "#cccccc", mailcount .. " "))
        else
            widget:set_text("")
            --mailicon:set_image() -- not working in 4.0
            mailicon._private.image = nil
            mailicon:emit_signal("widget::redraw_needed")
            mailicon:emit_signal("widget::layout_changed")
        end
    end
})
--]]

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#fff", cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#fff", coretemp_now .. "°C "))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_batt)
local bat = lain.widget.bat({
    settings = function()
        local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc

        if bat_now.ac_status == 1 then
            perc = perc .. " plug"
        end

        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " "))
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volume_now.level = volume_now.level .. "M"
        end

        widget:set_markup(markup.fontfg(theme.font, "#fff", volume_now.level .. "% "))
    end
})

-- Net
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        --[[ uncomment if using the weather widget
        if iface ~= "network off" and
           string.match(theme.weather.widget.text, "N/A")
        then
            theme.weather.update()
        end
        --]]

        widget:set_markup(markup.fontfg(theme.font, "#fff", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#fff", net_now.received .. " "))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#fff", mem_now.used .. "M "))
    end
})

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        mpd_notification_preset = {
            text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
                   mpd_now.album, mpd_now.date, mpd_now.title)
        }

        if mpd_now.state == "play" then
            artist = mpd_now.artist .. " > "
            title  = mpd_now.title .. " "
            mpdicon:set_image(theme.widget_note_on)
        elseif mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            --mpdicon:set_image() -- not working in 4.0
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end
        widget:set_markup(markup.fontfg(theme.font, "#fff", artist) .. markup.fontfg(theme.font, "#b2b2b2", title))
    end
})

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(19), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        expand = "none",
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --s.mylayoutbox,
            s.mytaglist,
            --s.mypromptbox,
            --mpdicon,
            --theme.mpd.widget,
            separator,
            spotify_widget({
                font = 'Ubuntu Mono 9',
                play_icon = '/usr/share/icons/Papirus-Light/24x24/categories/spotify.svg',
                pause_icon = '/usr/share/icons/Papirus-Dark/24x24/panel/spotify-indicator.svg',
                dim_when_paused = true,
                dim_opacity = 0.5,
                max_length = -1,
                show_tooltip = true
            }),
        },
        { -- Middle widget
            layout = wibox.layout.fixed.horizontal,
            --clockicon,
            mytextclock,
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            --mailicon,
            --theme.mail.widget,
            arrow(theme.bg_normal, "#b48ead"),
            wibox.container.background(wibox.container.margin(wibox.widget { netdownicon, netdowninfo, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#b48ead"),
            --netdownicon,
            --netdowninfo,
            arrow("#b48ead", "#a3be8c"),
            wibox.container.background(wibox.container.margin(wibox.widget { netupicon, netupinfo.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#a3be8c"),
            --netupicon,
            --netupinfo.widget,
            arrow("#a3be8c", "#ebcb8b"),
            wibox.container.background(wibox.container.margin(wibox.widget { volicon, theme.volume.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#ebcb8b"),
            --volicon,
            --theme.volume.widget,
            arrow("#ebcb8b", "#d08770"),
            wibox.container.background(wibox.container.margin(wibox.widget { memicon, memory.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#d08770"),
            --memicon,
            --memory.widget,
            arrow("#d08770", "#bf616a"),
            wibox.container.background(wibox.container.margin(wibox.widget { cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#bf616a"),
            --cpuicon,
            --cpu.widget,
            --fsicon,
            --theme.fs.widget,
            --weathericon,
            --theme.weather.widget,
            --tempicon,
            --temp.widget,
            --baticon,
            --bat.widget,
            
            
        },
    }

    -- Create the bottom wibox
    --s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    --s.mybottomwibox:setup {
    --    layout = wibox.layout.align.horizontal,
    --    { -- Left widgets
    --        layout = wibox.layout.fixed.horizontal,
    --    },
    --    s.mytasklist, -- Middle widget
    --    { -- Right widgets
    --        layout = wibox.layout.fixed.horizontal,
    --        s.mylayoutbox,
    --    },
    --}
end

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
