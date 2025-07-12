tag @s add playernow
summon minecraft:armor_stand ~ ~ ~ {UUID: [0, 0, 0, 0], Invisible: 1b, Marker: 1b}
data modify entity 00000000-0000-0000-0000-000000000000 equipment.mainhand set from storage dani:jinki item
execute as 00000000-0000-0000-0000-000000000000 run function dani:rhythm/systems/jinki/update_item
clear @s stick[item_model=air]
item replace entity @s hotbar.0 with stick[item_model=air] 1
item replace entity @s hotbar.1 with stick[item_model=air] 1
item replace entity @s hotbar.2 with stick[item_model=air] 1
item replace entity @s hotbar.3 with stick[item_model=air] 1
item replace entity @s hotbar.4 with stick[item_model=air] 1
item replace entity @s hotbar.5 with stick[item_model=air] 1
item replace entity @s hotbar.6 with stick[item_model=air] 1
item replace entity @s hotbar.7 with stick[item_model=air] 1
item replace entity @s hotbar.8 with stick[item_model=air] 1
execute unless data entity @s equipment.offhand.components."minecraft:custom_data".dani.active run item replace entity @s weapon.mainhand from entity 00000000-0000-0000-0000-000000000000 weapon.mainhand
kill 00000000-0000-0000-0000-000000000000
tag @s remove playernow