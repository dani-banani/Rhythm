execute store result score $checkUUID0 dani.input.click.uuid0 run data get storage dani:input reader.interaction.player[0]
execute store result score $checkUUID1 dani.input.click.uuid1 run data get storage dani:input reader.interaction.player[1]
execute store result score $checkUUID2 dani.input.click.uuid2 run data get storage dani:input reader.interaction.player[2]
execute store result score $checkUUID3 dani.input.click.uuid3 run data get storage dani:input reader.interaction.player[3]
execute if score $checkUUID0 dani.input.click.uuid0 = @s dani.input.click.uuid0 if score $checkUUID1 dani.input.click.uuid1 = @s dani.input.click.uuid1 if score $checkUUID2 dani.input.click.uuid2 = @s dani.input.click.uuid2 if score $checkUUID3 dani.input.click.uuid3 = @s dani.input.click.uuid3 store success score success dani.Global run tag @p[limit=1] add dani.input.rightclick.pressed
execute if score success dani.Global matches 1 run data remove entity @s interaction
