execute store result score #this dani.jump.timestamp run time query gametime

scoreboard players add @s dani.jump.timestamp 1

execute unless score @s dani.jump.timestamp = #this dani.jump.timestamp run tag @s add dani.input.jump.pressed

scoreboard players operation @s dani.jump.timestamp = #this dani.jump.timestamp