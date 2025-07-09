# motion based tp

execute positioned ~ ~.85 ~ run tp @s ^ ^ ^.1
data modify storage dani:input reader set from entity @s

execute store result score $posX dani.Global run data get storage dani:input reader.Pos[0] 10000
execute store result score $posZ dani.Global run data get storage dani:input reader.Pos[2] 10000
scoreboard players operation $posX dani.Global += @p dani.player.motion.x
scoreboard players operation $posZ dani.Global += @p dani.player.motion.z
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get $posX dani.Global
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get $posZ dani.Global

execute if data storage dani:input reader.attack run function dani:pack/player/input/click/attack_check
execute if data storage dani:input reader.interaction run function dani:pack/player/input/click/interaction_check