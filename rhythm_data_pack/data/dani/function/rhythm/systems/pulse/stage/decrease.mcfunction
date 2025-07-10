execute if data storage dani:player movement_speed store result score $speed dani.Global run data get storage dani:player movement_speed 1000
scoreboard players operation $speed dani.Global *= $const.100 dani.Global
scoreboard players operation $speed dani.Global /= $const.110 dani.Global
execute store result storage dani:player movement_speed float 0.001 run scoreboard players get $speed dani.Global
scoreboard players add $changeInStage dani.Global 1
execute if score $changeInStage dani.Global matches ..-1 run function dani:rhythm/systems/pulse/stage/decrease
