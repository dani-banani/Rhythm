execute store result storage dani:projectile delay int 1 run random value 1..5
execute as @e[type=marker,tag=magicblue,sort=random] if score @s dani.player.marker.id = $PlayerMarkerIDNow dani.player.marker.id at @s run function dani:rhythm/systems/jinki/type/1/moveset/auto/pop_randomize
execute unless score success dani.Global matches 1 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1.6
execute if score success dani.Global matches 1 run scoreboard players add @s dani.rhythm.pulse 5
execute if score success dani.Global matches 1 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ .1 0.2
execute if score success dani.Global matches 1 run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 1.25
execute if score success dani.Global matches 1 run particle minecraft:end_rod ~ ~1 ~ .1 .1 .1 0.025 5 force @a
execute if score success dani.Global matches 1 run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 10 1 force @a