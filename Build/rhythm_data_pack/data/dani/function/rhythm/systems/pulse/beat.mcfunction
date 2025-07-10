playsound minecraft:entity.warden.heartbeat master @a ~ ~1 ~ 0.05 1
scoreboard players set @s dani.rhythm.pulse.beat.tick 0
execute if score @s dani.rhythm.pulse.stage matches 2 run effect give @s minecraft:blindness 1 255 true
