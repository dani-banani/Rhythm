# type : by
# d : number
# type : minecrarft:generic 
# player : @p
# entityPos : @p
#
# type : at
# d : number
# type : minecrarft:generic 
# pos : ~ ~ ~
#
# storage dani:damage

##
# usage : data modify storage dani:damage build set value {specifier:"at",d:5,type:"minecraft:generic",pos:"~ ~ ~"} function dani:rhythm/player/damage_calc
# 
##

execute store result score $d dani.Global run data get storage dani:damage build.d
scoreboard players operation $damageReduce dani.Global = $d dani.Global
scoreboard players operation $damageReduce dani.Global *= $const.100 dani.Global
scoreboard players operation $damageReduce dani.Global *= @s dani.rhythm.player.defense_percentage
scoreboard players operation $damageReduce dani.Global /= $const.10000 dani.Global
scoreboard players operation $d dani.Global -= $damageReduce dani.Global
execute store result storage dani:damage build.d int 1 run scoreboard players get $d dani.Global
function dani:api/damage/redirect
data remove storage dani:damage build