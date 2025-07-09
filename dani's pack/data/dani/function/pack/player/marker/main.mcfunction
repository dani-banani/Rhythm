scoreboard players operation $entitytempID dani.player.marker.id = @s dani.player.marker.id
execute at @a if score @p[limit=1] dani.player.marker.id = $entitytempID dani.player.marker.id run function dani:pack/player/marker/entity_main
