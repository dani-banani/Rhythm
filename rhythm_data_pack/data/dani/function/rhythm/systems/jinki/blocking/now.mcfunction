scoreboard players set @s dani.rhythm.player.defense_percentage 35
tag @s add blocker
scoreboard players operation markerid dani.Global = @s dani.player.marker.id
execute if entity @s[tag=dani.input.rightclick.pressed] positioned ~ ~1.5 ~ as @e[tag=dani.entity,tag=dani.rhythm,tag=projectile,distance=..2] unless score @s dani.player.marker.id = markerid dani.Global run function dani:rhythm/systems/jinki/blocking/parry_projectile
execute positioned ~ ~1.5 ~ as @e[tag=dani.entity,tag=dani.rhythm,tag=projectile,distance=..2] unless score @s dani.player.marker.id = markerid dani.Global at @s run function dani:rhythm/systems/jinki/blocking/notify
tag @s remove blocker
