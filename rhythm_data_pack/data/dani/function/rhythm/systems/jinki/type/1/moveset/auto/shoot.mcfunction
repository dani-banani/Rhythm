scoreboard players operation $now dani.player.marker.id = @s dani.player.marker.id
execute summon marker run function dani:rhythm/entity/marker/projectile/summon {name:"Water Ball",lifeTime: 40, Tags: ["magicblue"], ID: 1, jinki_type: 1, tp: "~ ~1.6 ~", rotation: "~ ~", command: "function dani:rhythm/systems/jinki/type/1/moveset/auto/init"}
function dani:rhythm/systems/jinki/type/1/particle/1/cast
playsound minecraft:entity.shulker.shoot master @a ~ ~1 ~ 0.1 1.7
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2
playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 0.2 1.6
playsound minecraft:dani.jinki.starstroke.waterspell.shoot master @a ~ ~ ~ 1 1.1
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.15 2
execute positioned ~ ~1.6 ~ positioned ^ ^ ^.3 run particle bubble_pop ~ ~ ~ 0.125 0.2 0.125 .05 6 force @a
scoreboard players add @s dani.rhythm.pulse 5
particle minecraft:splash ~ ~.25 ~ .3 .1 .3 2 15 force @a
playsound minecraft:entity.skeleton_horse.jump_water master @a ~ ~ ~ .3 2
particle minecraft:enchant ~ ~1.3 ~ 0 0 0 .75 8
execute rotated ~ ~ positioned ~ ~1.5 ~ positioned ^-.6 ^.125 ^.5 run particle entity_effect{color:[0.000,1.000,0.969,1.00]} ~ ~ ~ 0 0 0 1 0 normal