-- hotkey mash
local ctrl_alt       = {"ctrl", "alt"}
local cmd_ctrl_alt 	 = {"cmd", "ctrl", "alt"}
local ctrl_alt_shift = {"ctrl", "alt", "shift"}
local ctrl_shift	 = {"ctrl", "shift"}	

hs.hotkey.bind(cmd_ctrl_alt, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")


hs.hotkey.bind(cmd_ctrl_alt, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

-- Screens
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

--hs.hotkey.bind(cmd_ctrl_alt, "T", hs.grid.resizeWindowTaller)
--hs.hotkey.bind(cmd_ctrl_alt, "", hs.grid.resizeWindowShorter)
--hs.hotkey.bind(cmd_ctrl_alt, "Left", hs.grid.resizeWindowThinner)
--hs.hotkey.bind(cmd_ctrl_alt, "Right", hs.grid.resizeWindowWider)

hs.hotkey.bind(cmd_ctrl_alt, 'H', function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind(cmd_ctrl_alt, 'L', function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(cmd_ctrl_alt, 'K', function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(cmd_ctrl_alt, 'J', function() hs.window.focusedWindow():focusWindowSouth() end)

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

-- Move
hs.hotkey.bind(ctrl_alt, "Up", function()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    --f.x = max.x
    f.y = max.y
    --f.w = max.w / 2
    f.h = max.h / 2 
    win:setFrame(f)

end)

hs.hotkey.bind(ctrl_alt, "Down", function()

	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    --f.x = max.x
    f.y = max.y + max.h / 2
    --f.w = max.w / 2
    f.h = max.h / 2 
    win:setFrame(f)

end)

hs.hotkey.bind(ctrl_alt, "Left", function()

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
hs.hotkey.bind(ctrl_alt, "Right", function()

	local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w / 2
    --f.y = max.y + max.h / 2
    f.w = max.w / 2
    --f.h = max.h / 2 
    win:setFrame(f)

end)
