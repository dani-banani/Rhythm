scoreboard players operation $now dani.rhythm.projectile.UUID = @s dani.rhythm.projectile.UUID
execute as @e[type=item_display,sort=nearest,tag=magicblue] if score @s dani.rhythm.projectile.UUID = $now dani.rhythm.projectile.UUID run tp @s ^ ^.125 ^.75
execute unless entity @s[tag=dead] as @e[type=!#dani:non_entity,dx=0,tag=!owner] positioned ~-.55 ~ ~-.55 if entity @s[dx=0] run function dani:rhythm/systems/jinki/type/1/projectile/1/damage
function dani:rhythm/systems/jinki/type/1/particle/1/main
