tag @s remove dani.input.jump.pressed
tag @s remove dani.input.sneak.pressed
tag @s remove dani.input.leftclick.pressed
tag @s remove dani.input.rightclick.pressed

execute if predicate dani:player/input/sneak run function dani:pack/player/input/sneak/now
execute if predicate dani:player/input/jump run function dani:pack/player/input/jump/now


function dani:rhythm/player/main