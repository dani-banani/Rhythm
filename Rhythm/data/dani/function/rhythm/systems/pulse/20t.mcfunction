execute if score @s dani.rhythm.pulse.stage.old = @s dani.rhythm.pulse.stage run scoreboard players add @s dani.rhythm.pulse.stage.consistency 1
execute unless score @s dani.rhythm.pulse.stage.old = @s dani.rhythm.pulse.stage run scoreboard players set @s dani.rhythm.pulse.stage.consistency 0
scoreboard players operation $change dani.rhythm.pulse = @s dani.rhythm.pulse.change
scoreboard players set sprint dani.Global 0
scoreboard players set sneak dani.Global 0
execute if predicate dani:player/flags/sprinting run scoreboard players set sprint dani.Global 1
execute if predicate dani:player/input/sneak run scoreboard players set sneak dani.Global 1
# === BASED ON INPUT, ADD CHANGES ===
execute if score sprint dani.Global matches 1 if score $now dani.rhythm.pulse matches ..109 run scoreboard players add $change dani.rhythm.pulse 1
execute unless score sprint dani.Global matches 1 if score $now dani.rhythm.pulse matches 101.. run scoreboard players remove $change dani.rhythm.pulse 1
execute if score sneak dani.Global matches 1 unless score $now dani.rhythm.pulse matches ..41 run scoreboard players remove $change dani.rhythm.pulse 1
execute unless score sneak dani.Global matches 1 if score $now dani.rhythm.pulse matches ..59 run scoreboard players add $change dani.rhythm.pulse 1
execute unless score sprint dani.Global matches 1 if score $now dani.rhythm.pulse matches 66.. run scoreboard players remove $change dani.rhythm.pulse 1

scoreboard players operation @s dani.rhythm.pulse += $change dani.rhythm.pulse

scoreboard players set @s dani.rhythm.pulse.tick 0
scoreboard players set @s dani.rhythm.pulse.change 0
scoreboard players operation @s dani.rhythm.pulse.stage.old = @s dani.rhythm.pulse.stage