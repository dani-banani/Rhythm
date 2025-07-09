execute store result score #this dani.left.timestamp run time query gametime

scoreboard players add @s dani.left.timestamp 1

execute unless score @s dani.left.timestamp = #this dani.left.timestamp run tag @s add dani.input.left.pressed

scoreboard players operation @s dani.left.timestamp = #this dani.left.timestamp