data modify storage dani:jinki item set from entity @e[type=marker, sort=nearest, limit=1, tag=dani.player.marker.entity] data.jinkiItem
execute store result score @s dani.rhythm.jinki.selectedItemSlot run data get entity @s SelectedItemSlot
execute unless score @s dani.rhythm.jinki.selectedItemSlot = @s dani.rhythm.jinki.selectedItemSlot.old run function dani:rhythm/systems/jinki/change_slot
scoreboard players operation @s dani.rhythm.jinki.selectedItemSlot.old = @s dani.rhythm.jinki.selectedItemSlot
$function dani:rhythm/systems/jinki/type/$(jinki_type)/main
$execute unless score @s dani.rhythm.animation matches 1.. if entity @s[tag=dani.input.leftclick.pressed] run function dani:rhythm/systems/jinki/type/$(jinki_type)/moveset/auto/play
