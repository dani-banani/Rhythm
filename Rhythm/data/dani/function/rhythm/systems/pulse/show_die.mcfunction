scoreboard players operation milisec dani.Global = @s dani.rhythm.pulse.deathtimer
scoreboard players operation milisec dani.Global *= $const.50 dani.Global
scoreboard players operation seconds dani.Global = milisec dani.Global
scoreboard players operation seconds dani.Global /= $const.1000 dani.Global
scoreboard players operation milisec dani.Global %= $const.1000 dani.Global
scoreboard players operation milisec dani.Global /= $const.10 dani.Global

title @s title {text:"🪦"}
title @s subtitle ["",{text:"! ",bold:true},{score:{name:"seconds",objective:"dani.Global"}},{text:"."},{score:{name:"milisec",objective:"dani.Global"}},{text:"s"}]