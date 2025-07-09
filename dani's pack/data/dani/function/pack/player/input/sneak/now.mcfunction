execute store result score #this dani.sneak.timestamp run time query gametime

scoreboard players add @s dani.sneak.timestamp 1

execute unless score @s dani.sneak.timestamp = #this dani.sneak.timestamp run tag @s add dani.input.sneak.pressed

scoreboard players operation @s dani.sneak.timestamp = #this dani.sneak.timestamp