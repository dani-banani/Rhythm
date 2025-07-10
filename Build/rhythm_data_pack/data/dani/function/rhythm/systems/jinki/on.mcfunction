item replace entity 00000000-0000-0000-0000-000000000000 container.0 from entity @s hotbar.0
item replace entity 00000000-0000-0000-0000-000000000000 container.1 from entity @s hotbar.1
item replace entity 00000000-0000-0000-0000-000000000000 container.2 from entity @s hotbar.2
item replace entity 00000000-0000-0000-0000-000000000000 container.3 from entity @s hotbar.3
item replace entity 00000000-0000-0000-0000-000000000000 container.4 from entity @s hotbar.4
item replace entity 00000000-0000-0000-0000-000000000000 container.5 from entity @s hotbar.5
item replace entity 00000000-0000-0000-0000-000000000000 container.6 from entity @s hotbar.6
item replace entity 00000000-0000-0000-0000-000000000000 container.7 from entity @s hotbar.7
item replace entity 00000000-0000-0000-0000-000000000000 container.8 from entity @s hotbar.8
data modify entity @e[type=marker, sort=nearest, limit=1, tag=dani.player.marker.entity] data.HotbarSAVE set from entity 00000000-0000-0000-0000-000000000000 Items
data modify entity @e[type=marker, sort=nearest, limit=1, tag=dani.player.marker.entity] data.SlotNow set from entity @s SelectedItemSlot
kill 00000000-0000-0000-0000-000000000000
function dani:rhythm/systems/jinki/change_slot
