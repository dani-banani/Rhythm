
scoreboard players operation @s dani.input.click.uuid0 = $tempUUID0 dani.input.click.id
scoreboard players operation @s dani.input.click.uuid1 = $tempUUID1 dani.input.click.id
scoreboard players operation @s dani.input.click.uuid2 = $tempUUID2 dani.input.click.id
scoreboard players operation @s dani.input.click.uuid3 = $tempUUID3 dani.input.click.id
# Pseudo-unique 32-bit hash
scoreboard players operation $tempID dani.input.click.id = $tempUUID1 dani.input.click.id
scoreboard players operation $tempID dani.input.click.id *= $const.31 dani.Global
scoreboard players operation $tempID dani.input.click.id += $tempUUID4 dani.input.click.id
scoreboard players operation @s dani.input.click.id = $tempID dani.input.click.id
data modify entity @s width set value 0.65
data modify entity @s height set value 1
tag @s add dani.input.click.reader
tag @s add dani.entity