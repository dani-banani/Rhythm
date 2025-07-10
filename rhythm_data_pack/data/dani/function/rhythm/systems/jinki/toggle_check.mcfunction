scoreboard players set success dani.Global 0
execute unless score @s dani.rhythm.jinki.status matches 1.. store success score success dani.Global run scoreboard players set @s dani.rhythm.jinki.status 1
execute if score success dani.Global matches 0 run scoreboard players set @s dani.rhythm.jinki.status 0
execute if score @s dani.rhythm.jinki.status matches 1 run function dani:api/input/click/start
execute if score @s dani.rhythm.jinki.status matches 0 run function dani:api/input/click/stop
data modify entity @e[type=marker, sort=nearest, limit=1, tag=dani.player.marker.entity] data.jinkiItem set from entity @s SelectedItem
summon chest_minecart ~ ~-100000 ~ {UUID: [0, 0, 0, 0]}
execute if score @s dani.rhythm.jinki.status matches 1 run function dani:rhythm/systems/jinki/on
execute if score @s dani.rhythm.jinki.status matches 0 run function dani:rhythm/systems/jinki/off
