#1
function dah.sch:set {time:10,run:"say 2"}

#2
execute as @r run function dah.sch:set {time:60,run:"say 3"}

#3
data modify storage dah.sch:new new set value {run:"setblock ~ ~ ~ stone",time:20,flags:["debug","try_dimension"]}
function dah.sch:new

#4
data modify storage dah.sch:new new set value {run:"setblock ~ ~ ~ diamond_block",time:20,offline:"pause",flags:["debug"]}
function dah.sch:new

#4
data modify storage dah.sch:new new set value {run:"attribute @s attack_damage modifier remove foo:bar",time:200,offline:"delay"}
function dah.sch:new