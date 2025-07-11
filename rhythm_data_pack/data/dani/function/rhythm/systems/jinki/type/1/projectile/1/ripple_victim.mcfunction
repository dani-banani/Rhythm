scoreboard players set $strength player_motion.api.launch 7000
execute if entity @s[type=player] run function player_motion:api/launch_looking
execute unless entity @s[type=player] run function dani:api/entity/motion/launch_looking
effect give @s slowness 1 2 true
