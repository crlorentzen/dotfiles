-- hotkey mash
local ctrl_alt       = {"ctrl", "alt"}
local cmd_ctrl_alt 	 = {"cmd", "ctrl", "alt"}
local ctrl_alt_shift = {"ctrl", "alt", "shift"}
local ctrhl_shift	 = {"ctrl", "shift"}


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
    win:maximize()
end)

-- Center Window
hs.hotkey.bind(cmd_ctrl_alt, 'C', function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local centerQuarterFrame = {
        x = screenFrame.x + screenFrame.w / 4,
        y = screenFrame.y + screenFrame.h / 4,
        w = screenFrame.w / 2,
        h = screenFrame.h / 2,
    }

    win:setFrame(centerQuarterFrame)

end)

-- Window Upper Half
hs.hotkey.bind(cmd_ctrl_alt, "Up", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local upperHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y,
        w = screenFrame.w,
        h = (screenFrame.h / 2),

    }

    win:setFrame(upperHalfFrame)       
end)

-- Window Lower Half
hs.hotkey.bind(cmd_ctrl_alt, "Down", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local lowerHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y + (screenFrame.h / 2),
        w = screenFrame.w,
        h = (screenFrame.h / 2),
    }

    winFrame = lowerHalfFrame
    win:setFrame(winFrame)
end)


-- Window Left
hs.hotkey.bind(cmd_ctrl_alt, "Left", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local leftHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y,
        w = (screenFrame.w / 2),
        h = screenFrame.h,
    }

    win:setFrame(leftHalfFrame)
end)

-- Window Right
hs.hotkey.bind(cmd_ctrl_alt, "Right", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

        local rightHalfFrame = {
        x = screenFrame.x + (screenFrame.w / 2),
        y = screenFrame.y,
        w = (screenFrame.w / 2),
        h = screenFrame.h,
    }

    win:setFrame(rightHalfFrame)
end)

-- Move Window Upper Half
hs.hotkey.bind(ctrl_alt, "Up", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local upperHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y,
        w = screenFrame.w,
        h = (screenFrame.h / 2),

    }
    winFrame.y = upperHalfFrame.y
    winFrame.h = upperHalfFrame.h

    win:setFrame(winFrame)    
end)

-- Move Window Lower Half
hs.hotkey.bind(ctrl_alt, "Down", function()
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local lowerHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y + (screenFrame.h / 2),
        w = screenFrame.w,
        h = (screenFrame.h / 2),
    }

    winFrame.y = lowerHalfFrame.y
    winFrame.h = lowerHalfFrame.h

    win:setFrame(winFrame)
end)

-- Move Window Left Half
hs.hotkey.bind(ctrl_alt, "Left", function()
	-- Half size Left
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

    local leftHalfFrame = {
        x = screenFrame.x,
        y = screenFrame.y,
        w = (screenFrame.w / 2),
        h = screenFrame.h,
    }
    
    winFrame.x = leftHalfFrame.x
    winFrame.w = leftHalfFrame.w

    win:setFrame(winFrame)
end)

-- Move Window Right Half
hs.hotkey.bind(ctrl_alt, "Right", function()
	-- Half size Right
	local win = hs.window.focusedWindow()
    local winFrame = win:frame()
    local screen = win:screen()
    local screenFrame = screen:frame()

        local rightHalfFrame = {
        x = screenFrame.x + (screenFrame.w / 2),
        y = screenFrame.y,
        w = (screenFrame.w / 2),
        h = screenFrame.h,
    }

    winFrame.x = rightHalfFrame.x
    winFrame.w = rightHalfFrame.w

    win:setFrame(winFrame)
end)
