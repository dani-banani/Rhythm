data modify entity 00000000-0000-0000-0000-000000000000 Items set from entity @e[type=marker,sort=nearest,limit=1,tag=dani.player.marker.entity] data.HotbarSAVE
data modify storage dani:jinki slot1 set from entity @e[type=marker,sort=nearest,limit=1,tag=dani.player.marker.entity] data.SlotNow
data modify storage dani:jinki slot2 set from entity @s SelectedItemSlot
function dani:rhythm/systems/jinki/swap_slot with storage dani:jinki
item replace entity @s hotbar.0 from entity 00000000-0000-0000-0000-000000000000 container.0
item replace entity @s hotbar.1 from entity 00000000-0000-0000-0000-000000000000 container.1
item replace entity @s hotbar.2 from entity 00000000-0000-0000-0000-000000000000 container.2
item replace entity @s hotbar.3 from entity 00000000-0000-0000-0000-000000000000 container.3
item replace entity @s hotbar.4 from entity 00000000-0000-0000-0000-000000000000 container.4
item replace entity @s hotbar.5 from entity 00000000-0000-0000-0000-000000000000 container.5
item replace entity @s hotbar.6 from entity 00000000-0000-0000-0000-000000000000 container.6
item replace entity @s hotbar.7 from entity 00000000-0000-0000-0000-000000000000 container.7
item replace entity @s hotbar.8 from entity 00000000-0000-0000-0000-000000000000 container.8
kill 00000000-0000-0000-0000-000000000000
