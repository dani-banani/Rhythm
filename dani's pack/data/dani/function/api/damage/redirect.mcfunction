# specifier : at
# d : number
# type : minecrarft:generic 
# pos : ~ ~ ~
execute if data storage dani:damage build{specifier:"at"} run function dani:api/damage/at with storage dani:damage build
# specifier : by
# d : number
# type : minecrarft:generic 
# player : @p
# entityPos : @p
execute if data storage dani:damage build{specifier:"by"} run function dani:api/damage/by with storage dani:damage build
# in storage dani:damage
