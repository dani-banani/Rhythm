execute unless predicate dani:player/flags/sneaking summon marker run function dani:rhythm/entity/marker/projectile/summon {lifeTime:100,Tags:[""],ID:1,jinki_type:1,tp:"~ ~1.6 ~",rotation:"~ ~",command:"scoreboard players set $const.1 dani.Global 1"}
execute unless predicate dani:player/flags/sneaking run function dani:rhythm/systems/jinki/type/1/particle/1/cast
playsound minecraft:entity.shulker.shoot master @a ~ ~1 ~ .4 2
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 2
playsound minecraft:block.dispenser.launch master @a ~ ~ ~ .2 1.6
