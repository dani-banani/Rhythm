tag @s add owner
data remove storage dani:player SelectedItem
data remove storage dani:player equipment
data modify storage dani:jinki item set from entity @e[type=marker, sort=nearest, limit=1, tag=dani.player.marker.entity] data.jinkiItem
data modify storage dani:player equipment set from entity @s equipment
data modify storage dani:player SelectedItem set from entity @s SelectedItem
execute store result score @s dani.rhythm.jinki.selectedItemSlot run data get entity @s SelectedItemSlot
execute unless score @s dani.rhythm.jinki.selectedItemSlot = @s dani.rhythm.jinki.selectedItemSlot.old run function dani:rhythm/systems/jinki/change_slot
scoreboard players operation @s dani.rhythm.jinki.selectedItemSlot.old = @s dani.rhythm.jinki.selectedItemSlot
scoreboard players operation $PlayerMarkerIDNow dani.player.marker.id = @s dani.player.marker.id
##Block
execute if data storage dani:player equipment.offhand.components."minecraft:custom_data".dani.active at @s run function dani:rhythm/systems/jinki/blocking/now

$function dani:rhythm/systems/jinki/type/$(jinki_type)/main
$execute unless score @s dani.rhythm.animation matches 1.. if data storage dani:player SelectedItem.components."minecraft:custom_data".dani.active if entity @s[tag=dani.input.leftclick.pressed] run function dani:rhythm/systems/jinki/type/$(jinki_type)/moveset/auto/play
tag @s remove owner
