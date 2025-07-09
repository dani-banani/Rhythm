scoreboard players operation $tempUUID0 dani.input.click.id = @s dani.player.uuid0
scoreboard players operation $tempUUID1 dani.input.click.id = @s dani.player.uuid1
scoreboard players operation $tempUUID2 dani.input.click.id = @s dani.player.uuid2
scoreboard players operation $tempUUID3 dani.input.click.id = @s dani.player.uuid3
execute summon minecraft:interaction run function dani:pack/player/input/click/reader_init
scoreboard players operation @s dani.input.click.id = $tempID dani.input.click.id
