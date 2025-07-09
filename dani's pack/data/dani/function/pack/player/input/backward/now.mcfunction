execute store result score #this dani.backward.timestamp run time query gametime

scoreboard players add @s dani.backward.timestamp 1

execute unless score @s dani.backward.timestamp = #this dani.backward.timestamp run tag @s add dani.input.backward.pressed

scoreboard players operation @s dani.backward.timestamp = #this dani.backward.timestamp