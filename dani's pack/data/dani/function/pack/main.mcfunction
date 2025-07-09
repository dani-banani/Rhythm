schedule function dani:pack/main 1t append

execute as @a at @s run function dani:pack/player/main
execute as @e[type=interaction,tag=dani.entity] run function dani:pack/entity/interaction/main
execute as @e[type=marker,tag=dani.entity] run function dani:pack/entity/marker/main