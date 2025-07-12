scoreboard players set @s dani.rhythm.projectile.lifetime 1
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1.7
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.6
execute at @s run particle end_rod ~ ~ ~ 0 0 0 .05 3 force @a
effect give @p[tag=blocker] resistance 1 225 true
tag @s add dead