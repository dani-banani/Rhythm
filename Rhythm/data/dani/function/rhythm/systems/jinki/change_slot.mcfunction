summon minecraft:armor_stand ~ ~ ~ {UUID:[0,0,0,0],Invisible:1b,Marker:1b}
data modify entity 00000000-0000-0000-0000-000000000000 equipment.mainhand set from storage dani:jinki item
clear @s 
item replace entity @s hotbar.0 with bamboo
item replace entity @s hotbar.1 with bamboo
item replace entity @s hotbar.2 with bamboo
item replace entity @s hotbar.3 with bamboo
item replace entity @s hotbar.4 with bamboo
item replace entity @s hotbar.5 with bamboo
item replace entity @s hotbar.6 with bamboo
item replace entity @s hotbar.7 with bamboo
item replace entity @s hotbar.8 with bamboo
item replace entity @s weapon.mainhand from entity 00000000-0000-0000-0000-000000000000 weapon.mainhand
kill 00000000-0000-0000-0000-000000000000
