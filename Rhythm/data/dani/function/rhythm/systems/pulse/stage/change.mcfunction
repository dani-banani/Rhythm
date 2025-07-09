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
### speed 
execute store result score $speed dani.Global run attribute @s minecraft:movement_speed get 1000
scoreboard players operation $speedIncrease dani.Global = $speed dani.Global
execute if score @s dani.rhythm.pulse.stage matches 1..2 run scoreboard players operation $speedIncrease dani.Global *= $const.80 dani.Global
execute if score @s dani.rhythm.pulse.stage matches 3 run scoreboard players set $speedIncrease dani.Global 10000
execute if score @s dani.rhythm.pulse.stage matches 4..6 run scoreboard players operation $speedIncrease dani.Global *= $const.108 dani.Global
execute store result storage dani:player movement_speed float 0.00001 run scoreboard players get $speedIncrease dani.Global

function dani:pack/player/attribute/set_speed with storage dani:player
