execute store result score #this dani.right.timestamp run time query gametime

scoreboard players add @s dani.right.timestamp 1

execute unless score @s dani.right.timestamp = #this dani.right.timestamp run tag @s add dani.input.right.pressed

scoreboard players operation @s dani.right.timestamp = #this dani.right.timestamp