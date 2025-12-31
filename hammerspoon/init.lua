-- hotkey mash
local ctrl_alt       = {"ctrl", "alt"}
local cmd_ctrl_alt 	 = {"cmd", "ctrl", "alt"}
local ctrl_alt_shift = {"ctrl", "alt", "shift"}
local ctrhl_shift	 = {"ctrl", "shift"}

hs.hotkey.bind(cmd_ctrl_alt, "R", function()
    hs.reload() 
end)

require('windowMgmt')
require('caffeine')

hs.alert.show("Config Loaded")