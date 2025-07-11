title @a times 0 20 0
gamerule naturalRegeneration false
execute as @a run attribute @s minecraft:movement_speed base set 0.1
scoreboard objectives add dani.rhythm.pulse dummy
scoreboard objectives add dani.rhythm.pulse.tick dummy
scoreboard objectives add dani.rhythm.pulse.change dummy
scoreboard objectives add dani.rhythm.pulse.stage dummy
scoreboard objectives add dani.rhythm.pulse.stage.old dummy
scoreboard objectives add dani.rhythm.pulse.stage.old.tick dummy
scoreboard objectives add dani.rhythm.pulse.beat.tick dummy
scoreboard objectives add dani.rhythm.pulse.deathtimer dummy

scoreboard objectives add dani.rhythm.player.damage dummy
scoreboard objectives add dani.rhythm.player.defense_percentage dummy

scoreboard objectives add dani.rhythm.jinki.type dummy
scoreboard objectives add dani.rhythm.jinki.status dummy
scoreboard objectives add dani.rhythm.jinki.selectedItemSlot dummy
scoreboard objectives add dani.rhythm.jinki.selectedItemSlot.old dummy

scoreboard objectives add dani.rhythm.pulse.stage.consistency dummy
scoreboard players set @a dani.rhythm.pulse 65
scoreboard objectives add dani.rhythm.projectile.lifetime dummy
scoreboard objectives add dani.rhythm.projectile.UUID dummy
scoreboard objectives add dani.rhythm.projectile.ID dummy
scoreboard objectives add dani.rhythm.projectile.jinki_type dummy
scoreboard objectives add dani.bolt.projectile.speed dummy
scoreboard objectives add dani.bolt.projectile.acceleration dummy
scoreboard objectives add dani.bolt.projectile.color.val dummy
scoreboard objectives add dani.bolt.projectile.1.2.radius dummy
scoreboard objectives add dani.bolt.projectile.1.2.maxradius dummy
scoreboard objectives add dani.bolt.particle.color.frame dummy
scoreboard objectives add dani.bolt.projectile.1.2.radiusIncrease dummy
scoreboard objectives add dani.bolt.projectile.speed dummy

scoreboard objectives add dani.rhythm.animation dummy




schedule function dani:rhythm/main1t 1 append
schedule function dani:rhythm/main20t 20 replace
