execute if score @s dani.rhythm.pulse.deathtimer matches 0 if score @s dani.rhythm.pulse matches 161.. run function dani:rhythm/systems/pulse/heartbreak
execute if score @s dani.rhythm.pulse.deathtimer matches 0 if score @s dani.rhythm.pulse matches ..40 run function dani:rhythm/systems/pulse/die {text: " flatlined"}
scoreboard players operation milisec dani.Global = @s dani.rhythm.pulse.deathtimer
scoreboard players operation milisec dani.Global *= $const.50 dani.Global
scoreboard players operation seconds dani.Global = milisec dani.Global
scoreboard players operation seconds dani.Global /= $const.1000 dani.Global
scoreboard players operation milisec dani.Global %= $const.1000 dani.Global
scoreboard players operation milisec dani.Global /= $const.10 dani.Global
scoreboard players remove @s[scores={dani.rhythm.pulse.deathtimer=1..}] dani.rhythm.pulse.deathtimer 1
title @s times 0 10 0
title @s title {text: "💀"}
title @s subtitle ["", {text: "! ", bold: true}, {score: {name: "seconds", objective: "dani.Global"}}, {text: "."}, {score: {name: "milisec", objective: "dani.Global"}}, {text: "s"}]
