data merge entity @s {Tags: ["dani.entity", "dani.rhythm", "projectile"]}
$data modify storage dani:projectile Tags set value $(Tags)
data modify entity @s Tags append from storage dani:projectile Tags[]
$scoreboard players set @s dani.rhythm.projectile.lifetime $(lifeTime)
$scoreboard players set @s dani.rhythm.projectile.ID $(ID)
$scoreboard players set @s dani.rhythm.projectile.jinki_type $(jinki_type)
$tp @s $(tp) $(rotation)
scoreboard players operation @s dani.player.marker.id = @p dani.player.marker.id
$$(command)
