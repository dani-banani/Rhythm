scoreboard players operation $now dani.rhythm.projectile.UUID = @s dani.rhythm.projectile.UUID
execute as @e[type=item_display,sort=nearest,tag=magicblue] if score @s dani.rhythm.projectile.UUID = $now dani.rhythm.projectile.UUID run tp @s ^ ^.125 ^.75
function dani:rhythm/systems/jinki/type/1/particle/1/main
