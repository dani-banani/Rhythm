playsound minecraft:entity.camel.dash master @a ~ ~ ~ .05 2
execute if score $now dani.rhythm.pulse matches 0..40 run scoreboard players set @s dani.rhythm.pulse.stage 1
execute if score $now dani.rhythm.pulse matches 41..60 run scoreboard players set @s dani.rhythm.pulse.stage 2
execute if score $now dani.rhythm.pulse matches 61..100 run scoreboard players set @s dani.rhythm.pulse.stage 3
execute if score $now dani.rhythm.pulse matches 101..140 run scoreboard players set @s dani.rhythm.pulse.stage 4
execute if score $now dani.rhythm.pulse matches 141..160 run scoreboard players set @s dani.rhythm.pulse.stage 5
execute if score $now dani.rhythm.pulse matches 161..200 run scoreboard players set @s dani.rhythm.pulse.stage 6
execute if score $now dani.rhythm.pulse matches ..40 run scoreboard players set @s dani.rhythm.pulse.deathtimer 100
execute if score $now dani.rhythm.pulse matches 161.. run scoreboard players set @s dani.rhythm.pulse.deathtimer 100
execute if score $now dani.rhythm.pulse matches 41..160 if score @s dani.rhythm.pulse.deathtimer matches 0.. run scoreboard players set @s dani.rhythm.pulse.deathtimer -1