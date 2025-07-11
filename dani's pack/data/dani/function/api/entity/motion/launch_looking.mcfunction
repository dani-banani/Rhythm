# Store origin position scaled by 10000
execute store result score $x dani.Global run data get entity @s Pos[0] 10000
execute store result score $y dani.Global run data get entity @s Pos[1] 10000
execute store result score $z dani.Global run data get entity @s Pos[2] 10000

# Summon marker 1 block forward (uses player rotation)
summon marker ^ ^ ^1 {Tags:["MotionGetForward"]}

# Store target marker position scaled by 10000
execute store result score $x1 dani.Global run data get entity @e[type=marker,tag=MotionGetForward,limit=1,sort=nearest] Pos[0] 10000
execute store result score $y1 dani.Global run data get entity @e[type=marker,tag=MotionGetForward,limit=1,sort=nearest] Pos[1] 10000
execute store result score $z1 dani.Global run data get entity @e[type=marker,tag=MotionGetForward,limit=1,sort=nearest] Pos[2] 10000

# Subtract origin from target to get direction delta
scoreboard players operation $x1 dani.Global -= $x dani.Global
scoreboard players operation $y1 dani.Global -= $y dani.Global
scoreboard players operation $z1 dani.Global -= $z dani.Global

# Multiply direction vector by strength (10000 = 1.0x)
scoreboard players operation $x1 dani.Global *= $strength player_motion.api.launch
scoreboard players operation $y1 dani.Global *= $strength player_motion.api.launch
scoreboard players operation $z1 dani.Global *= $strength player_motion.api.launch

scoreboard players operation $x1 dani.Global /= $const.10000 dani.Global
scoreboard players operation $y1 dani.Global /= $const.10000 dani.Global
scoreboard players operation $z1 dani.Global /= $const.10000 dani.Global

# Apply to Motion
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x1 dani.Global
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y1 dani.Global
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z1 dani.Global

# Optional: Clean up the marker
kill @e[type=marker,tag=MotionGetForward,limit=1,sort=nearest]