playsound minecraft:block.amethyst_block.chime master @a
tag @s add blocking.notify.bell_rang
execute if entity @s[tag=!blocking.notify.bell_rang] run playsound entity.arrow.hit_player master @a ~ ~ ~ 1 2
