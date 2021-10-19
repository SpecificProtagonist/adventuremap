tag @p remove boss1_killed
tag @p remove boss2_killed
tag @p remove boss2_started
execute at @e[tag=activateOnce] run setblock ~ ~ ~ redstone_block
setblock -485 65 473 powered_rail
execute at @e[tag=activateEvery] run setblock ~ ~ ~ redstone_block
execute at @e[tag=deactivateEvery] run setblock ~ ~ ~ stone
fill 1002 92 968 1006 92 972 red_nether_bricks
kill @e[tag=spawnpoint,x=1004,y=92,z=970,distance=..1]
setblock 1004 93 970 air
fill 991 94 968 991 96 972 lime_stained_glass replace air
fill 1017 94 968 1017 96 972 lime_stained_glass replace air
