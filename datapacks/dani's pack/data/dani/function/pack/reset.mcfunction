##
 # reset.mcfunction
 # pack
 #
 # Created by patdaniowo.
##
function player_motion:internal/technical/load

scoreboard objectives add dani.sneak.timestamp dummy
scoreboard objectives add dani.jump.timestamp dummy

scoreboard objectives add dani.input.click.id dummy
scoreboard objectives add dani.input.click.uuid0 dummy
scoreboard objectives add dani.input.click.uuid1 dummy
scoreboard objectives add dani.input.click.uuid2 dummy
scoreboard objectives add dani.input.click.uuid3 dummy

scoreboard objectives add dani.player.uuid0 dummy
scoreboard objectives add dani.player.uuid1 dummy
scoreboard objectives add dani.player.uuid2 dummy
scoreboard objectives add dani.player.uuid3 dummy

#marker
scoreboard objectives add dani.player.marker.id dummy
scoreboard objectives add dani.player.pos.x dummy
scoreboard objectives add dani.player.pos.y dummy
scoreboard objectives add dani.player.pos.z dummy
scoreboard objectives add dani.player.motion.x dummy
scoreboard objectives add dani.player.motion.y dummy
scoreboard objectives add dani.player.motion.z dummy

scoreboard objectives add dani.Global dummy
scoreboard players set $const.31 dani.Global 31
scoreboard players set $const.2 dani.Global 2
scoreboard players set $const.5 dani.Global 5
scoreboard players set $const.7 dani.Global 7
scoreboard players set $const.20 dani.Global 20
scoreboard players set $const.60 dani.Global 60

execute as @a run function dani:pack/player/init















function player_motion:internal/technical/load
schedule function dani:pack/main 1t append