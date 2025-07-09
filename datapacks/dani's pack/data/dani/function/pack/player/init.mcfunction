execute store result score @s dani.player.uuid0 run data get entity @s UUID[0]
execute store result score @s dani.player.uuid1 run data get entity @s UUID[1]
execute store result score @s dani.player.uuid2 run data get entity @s UUID[2]
execute store result score @s dani.player.uuid3 run data get entity @s UUID[3]

execute unless score @s dani.input.click.id matches -2147483648.. run scoreboard players set @s dani.Global 0

execute unless score @s dani.player.marker.id matches 0.. run function dani:pack/player/marker/init