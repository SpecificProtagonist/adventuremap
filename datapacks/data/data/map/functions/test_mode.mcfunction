say Test Mode
tp @e[tag=mobPos] ~ ~200 ~
execute as @e[tag=spawnpoint] run data merge entity @s {Marker:true,Invisible:true,CustomNameVisible:false}
function map:spawn_mobs
