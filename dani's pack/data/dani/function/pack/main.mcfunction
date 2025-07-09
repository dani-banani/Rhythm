schedule function dani:pack/main 1t append

execute as @a at @s run function dani:pack/player/main
execute as @e[type=interaction] run function dani:pack/entity/interaction/main
execute as @e[type=marker] run function dani:pack/entity/marker/main