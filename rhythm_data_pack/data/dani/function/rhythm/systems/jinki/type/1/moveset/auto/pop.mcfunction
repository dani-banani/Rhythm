execute store result storage dani:projectile delay int 1 run random value 1..3
execute as @e[type=marker,tag=magicblue,sort=random] if score @s dani.player.marker.id = $PlayerMarkerIDNow dani.player.marker.id at @s run function dani:rhythm/systems/jinki/type/1/moveset/auto/pop_randomize
execute unless score success dani.Global matches 1 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1.6
execute if score success dani.Global matches 1 run function dani:rhythm/systems/jinki/type/1/moveset/auto/pop_success
