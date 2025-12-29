-- hotkey mash
local ctrl_alt       = {"ctrl", "alt"}
local cmd_ctrl_alt 	 = {"cmd", "ctrl", "alt"}
local ctrl_alt_shift = {"ctrl", "alt", "shift"}
local ctrl_shift	 = {"ctrl", "shift"}

hs.hotkey.bind(cmd_ctrl_alt, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

require('caffeine')

-- Move to next screen
hs.hotkey.bind(cmd_ctrl_alt, "N", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local nextScreen = screen:next()
	win:moveToScreen(nextScreen)

end)
-- Move to previous screen
hs.hotkey.bind(cmd_ctrl_alt, "P", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local prevScreen = screen:previous()

	win:moveToScreen(prevScreen)

end)

-- Maximize Window
hs.hotkey.bind(cmd_ctrl_alt, 'M', function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)

end)
-- Center Window (1/4)
hs.hotkey.bind(cmd_ctrl_alt, 'C', function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w / 4
    f.y = max.y + max.h / 4
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)

end)
-- Upper Half Window
hs.hotkey.bind(cmd_ctrl_alt, "Up", function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)
-- Lower Half Window
hs.hotkey.bind(cmd_ctrl_alt, "Down", function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + max.h / 2
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)
-- Left Half Window
hs.hotkey.bind(cmd_ctrl_alt, "Left", function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)
-- Right Half Window
hs.hotkey.bind(cmd_ctrl_alt, "Right", function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w / 2
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- Move Window Upper Half
hs.hotkey.bind(ctrl_alt, "Up", function()
	-- Half Size Up
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    --f.x = max.x
    f.y = max.y
    -- f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)

end)
-- Move Window Lower Half
hs.hotkey.bind(ctrl_alt, "Down", function()
	-- Half size Down
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    --f.x = max.x
    f.y = max.y + max.h / 2
    --f.y = max.y + max.h - f.h
    --f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)

end)
-- Move Window Left Half
hs.hotkey.bind(ctrl_alt, "Left", function()
	-- Half size Left
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    --f.y = max.y + max.h / 2
    f.w = max.w / 2
    --f.h = max.h / 2
    win:setFrame(f)

end)
-- Move Window Right Half
hs.hotkey.bind(ctrl_alt, "Right", function()
	-- Half size Right
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w / 2
    --f.x = max.x + max.w - f.w
    --f.y = max.y + max.h / 2
    f.w = max.w / 2
    --f.h = max.h / 2
    win:setFrame(f)

end)
