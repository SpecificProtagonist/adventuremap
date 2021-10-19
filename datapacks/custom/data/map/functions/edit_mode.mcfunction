say Edit Mode
tp @e[tag=mobPos] ~ ~-200 ~
execute as @e[tag=spawnpoint] run data merge entity @s {Marker:false,Invisible:false,CustomNameVisible:true}
execute at @e[tag=activateOnce] run setblock ~ ~ ~ air
execute at @e[tag=activateEvery] run setblock ~ ~ ~ air
kill @e[tag=mob]
