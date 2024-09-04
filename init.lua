local awful = require("awful")
local config_path = awful.util.getdir("config")
local module_path = debug.getinfo(1).source:match("@?(.*/)"):sub(config_path:len()) or ""  -- Credit: TarmoPikaro (https://stackoverflow.com/a/35072122)

package.loaded.net_widgets = nil

local net_widgets = {
    indicator   = require(module_path .. "indicator"),
    wireless    = require(module_path .. "wireless"),
    internet    = require(module_path .. "internet")
}

return net_widgets
