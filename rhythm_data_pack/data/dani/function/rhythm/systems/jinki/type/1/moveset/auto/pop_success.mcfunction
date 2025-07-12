scoreboard players add @s dani.rhythm.pulse 5
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 1.25
particle minecraft:end_rod ~ ~1 ~ .1 .1 .1 0.025 5 force @a
particle minecraft:small_gust ~ ~2.2 ~ 0 0 0 1 1 force @a
playsound minecraft:dani.jinki.starstroke.waterspell.gong master @a ~ ~ ~ .8 1
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 10
execute positioned ^ ^ ^.2 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force @a
effect give @s slowness 1 2 true
execute rotated ~ 0 positioned ~ ~1. ~ positioned ^-.6 ^.25 ^.5 run particle minecraft:firework ~ ~ ~ 0 0 0 .1 1 force @a