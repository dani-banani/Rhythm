execute store result storage dani:player jinki_type int 1 run scoreboard players get @s dani.rhythm.jinki.type
execute if entity @s[tag=dani.input.double.sneak.pressed] if data entity @s SelectedItem.components."minecraft:custom_data".dani.jinki_type run function dani:rhythm/systems/jinki/toggle_check
execute if score @s dani.rhythm.jinki.status matches 1 run function dani:rhythm/systems/jinki/main with storage dani:player
execute if score @s dani.rhythm.animation matches 1.. run function dani:rhythm/player/animation/main
execute if score @s dani.rhythm.jinki.status matches 1 run function dani:rhythm/systems/pulse/main
function dani:rhythm/systems/movement/main
