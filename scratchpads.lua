
local bling = require("bling")

local awful = require("awful")
local s_width = awful.screen.focused().geometry.width
local s_height = awful.screen.focused().geometry.height
local h = s_height - 70
local w = s_width - 140
local x = (s_width - w)/2
local y = (s_height - h)/2

local h_1 = s_height - 170
local w_1 = s_width - 240
local x_1 = (s_width - w_1)/2
local y_1 = (s_height - h_1)/2

term_scratch = bling.module.scratchpad {
    command = "st -n spad",           -- How to spawn the scratchpad
    rule = { instance = "spad" },                     -- The rule that the scratchpad will be searched by
    sticky = true,                                    -- Whether the scratchpad should be sticky
    autoclose = true,                                 -- Whether it should hide itself when losing focus
    floating = true,                                  -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
    geometry = {x=x, y=y, height=h, width=w}, -- The geometry in a floating state
    reapply = false,                                   -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
    dont_focus_before_close  = false,                 -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
}

viber_scratch = bling.module.scratchpad {
    command = "viber || flatpak run com.viber.Viber",           -- How to spawn the scratchpad
    rule = { instance = "Viber" },                     -- The rule that the scratchpad will be searched by
    sticky = true,                                    -- Whether the scratchpad should be sticky
    autoclose = false,                                 -- Whether it should hide itself when losing focus
    floating = true,                                  -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
    geometry = {x=x_1, y=y_1, height=h_1, width=w_1}, -- The geometry in a floating state
    reapply = false,                                   -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
    dont_focus_before_close  = false,                 -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
}

signal_scratch = bling.module.scratchpad {
    command = "signal-desktop",           -- How to spawn the scratchpad
    rule = { instance = "signal" },                     -- The rule that the scratchpad will be searched by
    sticky = true,                                    -- Whether the scratchpad should be sticky
    autoclose = false,                                 -- Whether it should hide itself when losing focus
    floating = true,                                  -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
    geometry = {x=x_1, y=y_1, height=h_1, width=w_1 - 320}, -- The geometry in a floating state
    reapply = false,                                   -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
    dont_focus_before_close  = false,                 -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
}

telegram_scratch = bling.module.scratchpad {
    command = "telegram-desktop",           -- How to spawn the scratchpad
    rule = { instance = "telegram-desktop" },                     -- The rule that the scratchpad will be searched by
    sticky = true,                                    -- Whether the scratchpad should be sticky
    autoclose = false,                                 -- Whether it should hide itself when losing focus
    floating = true,                                  -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
    geometry = {x=x_1, y=y_1, height=h_1, width=w_1}, -- The geometry in a floating state
    reapply = false,                                   -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
    dont_focus_before_close  = false,                 -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
}

messenger_scratch = bling.module.scratchpad {
    command = "messenger",           -- How to spawn the scratchpad
    rule = { instance = "messenger" },                     -- The rule that the scratchpad will be searched by
    sticky = true,                                    -- Whether the scratchpad should be sticky
    autoclose = false,                                 -- Whether it should hide itself when losing focus
    floating = true,                                  -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
    geometry = {x=x_1+320, y=y_1, height=h_1, width=w_1-320}, -- The geometry in a floating state
    reapply = false,                                   -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
    dont_focus_before_close  = false,                 -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
}

