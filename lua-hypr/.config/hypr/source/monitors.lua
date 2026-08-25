--------------------
-- -M   M  OOO  N   N III TTTTT  OOO  RRRR
-- -MM MM O   O NN  N  I    T   O   O R   R
-- -M M M O   O N N N  I    T   O   O RRRR
-- -M   M O   O N  NN  I    T   O   O R  R
-- -M   M  OOO  N   N III   T    OOO  R   R
-- -
--- FYI: Monitor got detected under HDMI-A-2
--- ~.config/hypr/source/monitors.lua

hl.monitor({
	output = "", -- empty seems to apply to all monitors, if you want to address speicifc monitors it can be for example: "DP-1"
	mode = "preferred",
	position = "auto",
	scale = 1,
})
