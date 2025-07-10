summon minecraft:armor_stand ~ ~ ~ {UUID: [0, 0, 0, 0], Invisible: 1b, Marker: 1b}
item replace entity 00000000-0000-0000-0000-000000000000 weapon.mainhand from entity @s weapon.mainhand
data modify storage dani:player uuid set from entity @s UUID
data modify entity 00000000-0000-0000-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".dani.Owner append from storage dani:player uuid[]
$data modify entity 00000000-0000-0000-0000-000000000000 equipment.mainhand.components.minecraft:custom_data.dani.jinki_type set value $(jinki_type)
item replace entity @s weapon.mainhand from entity 00000000-0000-0000-0000-000000000000 weapon.mainhand
kill 00000000-0000-0000-0000-000000000000
$scoreboard players set @s dani.rhythm.jinki.type $(jinki_type)
