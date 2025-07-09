execute store success score success dani.Global run gamerule showDeathMessages false
damage @s 1000
$tellraw @a ["",{selector:"@s"},{text:"$(text)"}]
scoreboard players set @s dani.rhythm.pulse.deathtimer -1
scoreboard players set @s dani.rhythm.pulse 60
execute if score success dani.Global matches 1 run gamerule showDeathMessages true