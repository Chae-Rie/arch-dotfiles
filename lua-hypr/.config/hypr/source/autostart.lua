---       A   U   U TTTTT  OOO   SSSS TTTTT   A   RRRR  TTTTT
---      A A  U   U   T   O   O S       T    A A  R   R   T
---     AAAAA U   U   T   O   O  SSS    T   AAAAA RRRR    T
---     A   A U   U   T   O   O     S   T   A   A R  R    T
---     A   A  UUU    T    OOO  SSSS    T   A   A R   R   T
---

hl.on("hyprland.start", function()
	hl.exec_cmd(terminal)
	hl.exec_cmd(kitty)
	hl.exec_cmd(firefox)
	hl.exec_cmd(hyprpaper)
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)
