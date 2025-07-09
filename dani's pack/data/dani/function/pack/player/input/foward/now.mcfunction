execute store result score #this dani.foward.timestamp run time query gametime

scoreboard players add @s dani.foward.timestamp 1

execute unless score @s dani.foward.timestamp = #this dani.foward.timestamp run tag @s add dani.input.foward.pressed

scoreboard players operation @s dani.foward.timestamp = #this dani.foward.timestamp