scoreboard players remove @s dani.bolt.projectile.speed 1
particle dust_color_transition{from_color:[0.000,1.000,0.933],scale:1,to_color:[0.110,0.333,0.400]} ~ ~ ~ 0 0 0 1 0 normal
particle minecraft:dust{color: [1, 1, 1], scale: 0.3d}
execute if predicate dani:percentage/7 run function dani:rhythm/systems/jinki/type/1/projectile/1/movement/nested_execute_100
execute if predicate dani:percentage/7 run function dani:rhythm/systems/jinki/type/1/projectile/1/movement/nested_execute_101
execute if score @s dani.rhythm.projectile.lifetime matches 1 run function dani:rhythm/systems/jinki/type/1/projectile/1/movement/nested_execute_102
tp @s ~ ~ ~ ~ ~
execute unless block ~ ~ ~ #dani:phasable run function dani:rhythm/systems/jinki/type/1/projectile/1/ripple
execute if score @s dani.bolt.projectile.speed matches 1.. positioned ^ ^ ^0.35 run function dani:rhythm/systems/jinki/type/1/projectile/1/movement
