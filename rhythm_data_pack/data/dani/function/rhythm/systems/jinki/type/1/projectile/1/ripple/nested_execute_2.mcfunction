playsound minecraft:block.bell.resonate master @a ~ ~ ~ 0.2 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 0.2 2
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 0.5 2
execute if block ~ ~-0.2 ~ #dani:phasable run function dani:rhythm/systems/jinki/type/1/projectile/1/ripple/nested_execute_0
execute unless block ~ ~-0.2 ~ #dani:phasable run function dani:rhythm/systems/jinki/type/1/projectile/1/ripple/nested_execute_1
