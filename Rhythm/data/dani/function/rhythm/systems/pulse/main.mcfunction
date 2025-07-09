
# no negative

execute if score $now dani.rhythm.pulse matches ..0 run scoreboard players set $now dani.rhythm.pulse 0

scoreboard players add @s dani.rhythm.pulse.tick 1
execute if score @s dani.rhythm.pulse.tick matches 20.. run function dani:rhythm/systems/pulse/20t

scoreboard players add @s dani.rhythm.pulse.beat.tick 1
scoreboard players set $ticksperbeat dani.rhythm.pulse 1200
scoreboard players operation $ticksperbeat dani.rhythm.pulse /= @s dani.rhythm.pulse
execute if score @s dani.rhythm.pulse.beat.tick >= $ticksperbeat dani.rhythm.pulse run function dani:rhythm/systems/pulse/beat


scoreboard players operation $now dani.rhythm.pulse = @s dani.rhythm.pulse
scoreboard players operation $now dani.rhythm.pulse.stage = @s dani.rhythm.pulse.stage

## changes in bpm
execute if entity @s[predicate=dani:player/input/jump,predicate=dani:player/flags/is_on_ground] unless score @s dani.rhythm.pulse matches 130.. run scoreboard players add @s dani.rhythm.pulse.change 1
execute if entity @s[nbt={HurtTime:1s}] run scoreboard players add @s dani.rhythm.pulse.change 3

## Stages

execute if score $now dani.rhythm.pulse matches ..40 run function dani:rhythm/systems/pulse/stage/1
execute if score $now dani.rhythm.pulse matches 41..60 run function dani:rhythm/systems/pulse/stage/2
execute if score $now dani.rhythm.pulse matches 61..100 run function dani:rhythm/systems/pulse/stage/3
execute if score $now dani.rhythm.pulse matches 101..140 run function dani:rhythm/systems/pulse/stage/4
execute if score $now dani.rhythm.pulse matches 141..160 run function dani:rhythm/systems/pulse/stage/5
execute if score $now dani.rhythm.pulse matches 161..200 run function dani:rhythm/systems/pulse/stage/6
#20-40-40-20 
## Display 120/12 10
#||||I||I||||I||||I||I||||  ♡
execute if score $now dani.rhythm.pulse matches 1..10 run title @s actionbar ["",{text:"{",bold:true},{text:"❤",color:"dark_red"},{text:"---|--|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 11..20 run title @s actionbar ["",{text:"{",bold:true},{"text":"-"},{text:"❤",color:"dark_red"},{text:"--|--|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 21..30 run title @s actionbar ["",{text:"{",bold:true},{"text":"--"},{text:"❤",color:"dark_red"},{text:"-|--|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 31..40 run title @s actionbar ["",{text:"{",bold:true},{"text":"---"},{text:"❤",color:"dark_red"},{text:"|--|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 41..50 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|"},{text:"❤",color:"dark_red"},{text:"-|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 51..60 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|-"},{text:"❤",color:"dark_red"},{text:"|----|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 61..70 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|"},{text:"❤",color:"dark_red"},{text:"---|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 71..80 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|-"},{text:"❤",color:"dark_red"},{text:"--|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 81..90 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|--"},{text:"❤",color:"dark_red"},{text:"-|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 91..100 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|---"},{text:"❤",color:"dark_red"},{text:"|----|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 101..110 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|"},{text:"❤",color:"dark_red"},{text:"---|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 101..110 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|"},{text:"❤",color:"dark_red"},{text:"---|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 111..120 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|-"},{text:"❤",color:"dark_red"},{text:"--|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 121..130 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|--"},{text:"❤",color:"dark_red"},{text:"-|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 131..140 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|---"},{text:"❤",color:"dark_red"},{text:"|--|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 141..150 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|"},{text:"❤",color:"dark_red"},{text:"-|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 151..160 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|-"},{text:"❤",color:"dark_red"},{text:"|----"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 161..170 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|--|"},{text:"❤",color:"dark_red"},{text:"---"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 171..180 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|--|-"},{text:"❤",color:"dark_red"},{text:"--"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 181..190 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|--|--"},{text:"❤",color:"dark_red"},{text:"-"},{text:"}",bold:true}]
execute if score $now dani.rhythm.pulse matches 181..190 run title @s actionbar ["",{text:"{",bold:true},{"text":"----|--|----|----|--|---"},{text:"❤",color:"dark_red"},{text:"}",bold:true}]