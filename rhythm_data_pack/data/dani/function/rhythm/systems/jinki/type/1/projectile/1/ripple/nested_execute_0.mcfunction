execute store result score $idnow dani.Global run scoreboard players get @s dani.player.marker.id
scoreboard players operation $idnow dani.rhythm.projectile.UUID = @s dani.rhythm.projectile.UUID
execute summon marker run function dani:rhythm/entity/marker/projectile/summon {name:"Ripple",lifeTime: 10, Tags: ["lookatme"], ID: 2, jinki_type: 1, tp: "~ ~ ~", rotation: "~ ~90", command: "function dani:rhythm/systems/jinki/type/1/projectile/1/ripple_init"}
execute unless entity @s[tag=dead] as @e[type=!#dani:non_entity,distance=.1..3.5] unless score @s dani.player.marker.id = $idnow dani.Global at @s facing entity @e[type=marker,tag=lookatme,scores={dani.rhythm.projectile.lifetime=10}] feet run function dani:rhythm/systems/jinki/type/1/projectile/1/ripple_victim
execute as @e[type=item_display,tag=magicblue] if score @s dani.rhythm.projectile.UUID = $idnow dani.rhythm.projectile.UUID run kill @s 
kill @s
