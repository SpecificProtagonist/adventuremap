scoreboard players tag @p remove boss1_killed
scoreboard players tag @p remove boss2_killed
scoreboard players tag @p remove boss2_started
execute @e[tag=activateOnce] ~ ~ ~ setblock ~ ~ ~ redstone_block
setblock -485 65 473 golden_rail
execute @e[tag=activateEvery] ~ ~ ~ setblock ~ ~ ~ redstone_block
execute @e[tag=deactivateEvery] ~ ~ ~ setblock ~ ~ ~ stone
fill 1002 92 968 1006 92 972 red_nether_brick
kill @e[tag=spawnpoint,x=1004,y=92,z=970,r=1]
setblock 1004 93 970 air
fill 991 94 968 991 96 972 stained_glass color=lime replace air
fill 1017 94 968 1017 96 972 stained_glass color=lime replace air