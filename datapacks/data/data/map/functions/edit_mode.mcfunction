say Edit Mode
tp @e[tag=mobPos] ~ ~-200 ~
entitydata @e[tag=spawnpoint] {Marker:false,Invisible:false,CustomNameVisible:true}
execute @e[tag=activateOnce] ~ ~ ~ setblock ~ ~ ~ air
execute @e[tag=activateEvery] ~ ~ ~ setblock ~ ~ ~ air
kill @e[tag=mob]