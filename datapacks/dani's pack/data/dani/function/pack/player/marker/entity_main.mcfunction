tp @s ~ ~ ~ ~ ~
scoreboard players operation $posXOld dani.player.pos.x = @s dani.player.pos.x
scoreboard players operation $posYOld dani.player.pos.y = @s dani.player.pos.y
scoreboard players operation $posZOld dani.player.pos.z = @s dani.player.pos.z
execute store result score @s dani.player.pos.x run data get entity @s Pos[0] 10000
execute store result score @s dani.player.pos.y run data get entity @s Pos[1] 10000
execute store result score @s dani.player.pos.z run data get entity @s Pos[2] 10000
scoreboard players operation $motionX dani.player.pos.x = @s dani.player.pos.x
scoreboard players operation $motionY dani.player.pos.y = @s dani.player.pos.y
scoreboard players operation $motionZ dani.player.pos.z = @s dani.player.pos.z
scoreboard players operation $motionX dani.player.pos.x -= $posXOld dani.player.pos.x
scoreboard players operation $motionY dani.player.pos.y -= $posYOld dani.player.pos.y
scoreboard players operation $motionZ dani.player.pos.z -= $posZOld dani.player.pos.z
scoreboard players operation @p[limit=1] dani.player.pos.x = @s dani.player.pos.x
scoreboard players operation @p[limit=1] dani.player.pos.y = @s dani.player.pos.y
scoreboard players operation @p[limit=1] dani.player.pos.z = @s dani.player.pos.z
scoreboard players operation @p[limit=1] dani.player.motion.x = $motionX dani.player.pos.x
scoreboard players operation @p[limit=1] dani.player.motion.y = $motionY dani.player.pos.y
scoreboard players operation @p[limit=1] dani.player.motion.z = $motionZ dani.player.pos.z