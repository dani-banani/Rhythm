tag @s add projectile_now
execute store result storage dani:projectile jinki_type int 1 run scoreboard players get @s dani.rhythm.projectile.jinki_type
execute store result storage dani:projectile ID int 1 run scoreboard players get @s dani.rhythm.projectile.ID
execute store result storage dani:projectile link int 1 run scoreboard players get @s dani.player.marker.id
function dani:rhythm/entity/marker/projectile/redirect with storage dani:projectile
scoreboard players remove @s dani.rhythm.projectile.lifetime 1
kill @s[scores={dani.rhythm.projectile.lifetime=..0}]
tag @s remove projectile_now
