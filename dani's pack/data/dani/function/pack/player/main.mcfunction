function dani:rhythm/player/main

tag @s remove dani.input.jump.pressed
tag @s remove dani.input.sneak.pressed
tag @s remove dani.input.foward.pressed
tag @s remove dani.input.backward.pressed
tag @s remove dani.input.left.pressed
tag @s remove dani.input.right.pressed

tag @s remove dani.input.leftclick.pressed
tag @s remove dani.input.rightclick.pressed

tag @s remove dani.input.double.sneak.pressed
tag @s remove dani.input.double.jump.pressed
tag @s remove dani.input.double.foward.pressed
tag @s remove dani.input.double.backward.pressed
tag @s remove dani.input.double.left.pressed
tag @s remove dani.input.double.right.pressed

scoreboard players remove @s[scores={dani.second.jump.timer=1..}] dani.second.jump.timer 1
scoreboard players remove @s[scores={dani.second.sneak.timer=1..}] dani.second.sneak.timer 1
scoreboard players remove @s[scores={dani.second.foward.timer=1..}] dani.second.foward.timer 1
scoreboard players remove @s[scores={dani.second.backward.timer=1..}] dani.second.backward.timer 1
scoreboard players remove @s[scores={dani.second.left.timer=1..}] dani.second.left.timer 1
scoreboard players remove @s[scores={dani.second.right.timer=1..}] dani.second.right.timer 1



execute if predicate dani:player/input/sneak run function dani:pack/player/input/sneak/now
execute if predicate dani:player/input/jump run function dani:pack/player/input/jump/now
execute if predicate dani:player/input/foward run function dani:pack/player/input/foward/now
execute if predicate dani:player/input/backward run function dani:pack/player/input/backward/now
execute if predicate dani:player/input/left run function dani:pack/player/input/left/now
execute if predicate dani:player/input/right run function dani:pack/player/input/right/now

## double press detection
execute if entity @s[tag=dani.input.sneak.pressed] run function dani:pack/player/input/sneak/start
execute if entity @s[tag=dani.input.jump.pressed] run function dani:pack/player/input/jump/start
execute if entity @s[tag=dani.input.foward.pressed] run function dani:pack/player/input/foward/start
execute if entity @s[tag=dani.input.backward.pressed] run function dani:pack/player/input/backward/start
execute if entity @s[tag=dani.input.left.pressed] run function dani:pack/player/input/left/start
execute if entity @s[tag=dani.input.right.pressed] run function dani:pack/player/input/right/start



## custom
