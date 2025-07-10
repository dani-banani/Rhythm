execute unless score $now dani.rhythm.pulse.stage matches 1 run function dani:rhythm/systems/pulse/stage/change
scoreboard players remove @s[scores={dani.rhythm.pulse.deathtimer=1..}] dani.rhythm.pulse.deathtimer 1
execute if score @s dani.rhythm.pulse.deathtimer matches 0 run function dani:rhythm/systems/pulse/die {text: " flatlined"}
effect give @s blindness 2 255 true
effect give @s darkness 1 2 true
function dani:rhythm/systems/pulse/show_die
