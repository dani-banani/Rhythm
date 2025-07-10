playsound minecraft:block.bell.resonate master @a ~ ~ ~ 0.2 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 0.2 2
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 0.5 2
execute if block ~ ~-0.2 ~ #dani:phasable summon marker run function dani:rhythm/entity/marker/projectile/summon {lifeTime: 10, Tags: [""], ID: 2, jinki_type: 1, tp: "~ ~ ~", rotation: "~ ~90", command: "function dani:rhythm/systems/jinki/type/1/projectile/1/ripple_init"}
execute unless block ~ ~-0.2 ~ #dani:phasable summon marker run function dani:rhythm/entity/marker/projectile/summon {lifeTime: 10, Tags: [""], ID: 2, jinki_type: 1, tp: "~ ~ ~", rotation: "~ 0", command: "function dani:rhythm/systems/jinki/type/1/projectile/1/ripple_init"}
