scoreboard players operation $now dani.player.marker.id = @s dani.player.marker.id
execute summon marker run function dani:rhythm/entity/marker/projectile/summon {lifeTime: 40, Tags: ["magicblue"], ID: 1, jinki_type: 1, tp: "~ ~1.6 ~", rotation: "~ ~", command: "function dani:rhythm/systems/jinki/type/1/moveset/auto/init"}
function dani:rhythm/systems/jinki/type/1/particle/1/cast
playsound minecraft:entity.shulker.shoot master @a ~ ~1 ~ 0.4 2
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2
playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 0.2 1.6
scoreboard players add @s dani.rhythm.pulse 5