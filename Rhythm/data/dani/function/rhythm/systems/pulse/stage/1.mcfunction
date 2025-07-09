execute unless score $now dani.rhythm.pulse.stage matches 1 run function dani:rhythm/systems/pulse/stage/change
scoreboard players remove @s[scores={dani.rhythm.pulse.deathtimer=1..}] dani.rhythm.pulse.deathtimer 1
title @s title {score:{name:"@s",objective:"dani.rhythm.pulse.deathtimer"},bold:true}
execute if score @s dani.rhythm.pulse.deathtimer matches 0 run function dani:rhythm/systems/pulse/die {text:" flatlined"}

effect give @s minecraft:slowness 1 3 true
