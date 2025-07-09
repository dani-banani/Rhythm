##
 # reset.mcfunction
 # pack
 #
 # Created by patdaniowo.
##
function player_motion:internal/technical/load

scoreboard objectives add dani.sneak.timestamp dummy
scoreboard objectives add dani.jump.timestamp dummy
scoreboard objectives add dani.foward.timestamp dummy
scoreboard objectives add dani.backward.timestamp dummy
scoreboard objectives add dani.left.timestamp dummy
scoreboard objectives add dani.right.timestamp dummy

scoreboard objectives add dani.second.sneak.timer dummy
scoreboard objectives add dani.second.jump.timer dummy
scoreboard objectives add dani.second.foward.timer dummy
scoreboard objectives add dani.second.backward.timer dummy
scoreboard objectives add dani.second.left.timer dummy
scoreboard objectives add dani.second.right.timer dummy


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
scoreboard players set $const.10 dani.Global 10

scoreboard players set $const.20 dani.Global 20
scoreboard players set $const.40 dani.Global 40
scoreboard players set $const.50 dani.Global 50
scoreboard players set $const.60 dani.Global 60
scoreboard players set $const.80 dani.Global 80
scoreboard players set $const.90 dani.Global 90
scoreboard players set $const.100 dani.Global 100
scoreboard players set $const.108 dani.Global 108
scoreboard players set $const.110 dani.Global 110

scoreboard players set $const.115 dani.Global 115

scoreboard players set $const.120 dani.Global 120
scoreboard players set $const.130 dani.Global 130
scoreboard players set $const.140 dani.Global 140
scoreboard players set $const.160 dani.Global 160

scoreboard players set $const.1000 dani.Global 1000
execute as @a run function dani:pack/player/init















function player_motion:internal/technical/load
schedule function dani:pack/main 1t append