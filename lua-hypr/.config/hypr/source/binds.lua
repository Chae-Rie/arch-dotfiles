--- BBBB  III N   N DDDD   SSSS
--- B   B  I  NN  N D   D S
--- BBBB   I  N N N D   D  SSS
--- B   B  I  N  NN D   D     S
--- BBBB  III N   N DDDD  SSSS
--- ~.config/hypr/source/binds.lua

local programs = require("source.programs")
local mainMod = "SUPER"

-- Close active window
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Exit Hyprland
-- hl.bind(mainMod .. " + SHIFT + M", hl.dsp.hypr.exit())

-- Toggle floating
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- Pseudo tiling
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Apps
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(programs.launcher))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.browser))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Resizing window via mouse + alt
-- FYI: LMB -> 272, RMB -> 273  MMB -> 274
hl.bind("ALT + mouse:272", hl.dsp.window.resize(), { mouse = true })
