tag @s remove dani.input.jump.pressed
tag @s remove dani.input.sneak.pressed
tag @s remove dani.input.foward.pressed
tag @s remove dani.input.backward.pressed
tag @s remove dani.input.left.pressed
tag @s remove dani.input.right.pressed

tag @s remove dani.input.leftclick.pressed
tag @s remove dani.input.rightclick.pressed

execute if predicate dani:player/input/sneak run function dani:pack/player/input/sneak/now
execute if predicate dani:player/input/jump run function dani:pack/player/input/jump/now
execute if predicate dani:player/input/foward run function dani:pack/player/input/foward/now
execute if predicate dani:player/input/backward run function dani:pack/player/input/backward/now
execute if predicate dani:player/input/left run function dani:pack/player/input/left/now
execute if predicate dani:player/input/right run function dani:pack/player/input/right/now


function dani:rhythm/player/main