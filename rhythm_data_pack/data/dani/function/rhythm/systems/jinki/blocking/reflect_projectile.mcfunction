scoreboard players operation @s dani.player.marker.id = @p[tag=blocker] dani.player.marker.id
execute at @p[tag=blocker] run tp @s ~ ~1.4 ~ ~ ~
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 2
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.6
execute at @s run particle end_rod ~ ~ ~ 0 0 0 .05 3 force @a
