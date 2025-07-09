title @a times 0 20 0
effect give @a minecraft:saturation infinite 211 true
gamerule naturalRegeneration false
execute as @a run attribute @s minecraft:movement_speed base set 0.100





scoreboard objectives add dani.rhythm.pulse dummy
scoreboard objectives add dani.rhythm.pulse.tick dummy
scoreboard objectives add dani.rhythm.pulse.change dummy
scoreboard objectives add dani.rhythm.pulse.stage dummy
scoreboard objectives add dani.rhythm.pulse.stage.old dummy
scoreboard objectives add dani.rhythm.pulse.beat.tick dummy
scoreboard objectives add dani.rhythm.pulse.deathtimer dummy

# Stats
scoreboard objectives add dani.rhythm.player.damage dummy
scoreboard objectives add dani.rhythm.player.defense.now dummy
scoreboard objectives add dani.rhythm.player.defense.final dummy



scoreboard objectives add dani.rhythm.pulse.stage.consistency dummy

schedule function dani:rhythm/main1t 1t append
schedule function dani:rhythm/main20t 20t replace