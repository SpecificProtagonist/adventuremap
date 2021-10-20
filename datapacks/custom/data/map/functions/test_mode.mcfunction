say Test Mode
execute as @e[tag=mobPos] at @s run tp ~ ~200 ~
execute as @e[tag=spawnpoint] run data merge entity @s {Marker:true,Invisible:true,CustomNameVisible:false}
function map:spawn_mobs
