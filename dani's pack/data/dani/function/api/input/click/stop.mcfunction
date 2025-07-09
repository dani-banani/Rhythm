scoreboard players operation $tempID dani.input.click.id = @s dani.input.click.id
execute as @e[type=interaction,tag=dani.input.click.reader] if score @s dani.input.click.id = $tempID dani.input.click.id run kill @s
scoreboard players set @s dani.input.click.id 0
