scoreboard players set @e[type=marker,tag=projectile_now] dani.rhythm.projectile.lifetime 1
data modify storage dani:damage build set value {specifier:"by",d:3,type:"minecraft:generic",player:"@e[type=marker,tag=projectile_now,limit=1]",entityPos:"@e[type=marker,tag=projectile_now,limit=1]"} 
function dani:rhythm/player/damage_calc
effect give @s weakness 1 21 true