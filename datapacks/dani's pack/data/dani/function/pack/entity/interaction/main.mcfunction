scoreboard players operation $entitytempID dani.input.click.id = @s dani.input.click.id
execute at @a if score @p[limit=1] dani.input.click.id = $entitytempID dani.input.click.id run function dani:pack/player/input/click/reader_main
