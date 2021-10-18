setblock -463 97 456 lever facing=up_z,powered=false
setblock 1004 97 1000 lever facing=up_z,powered=true
setblock -463 95 457 glass
setblock -463 95 457 stone

tp @p ~1467 ~ ~544

playsound minecraft:block.piston.contract master @p 1004 98 996 2 .6
playsound minecraft:block.piston.extend master @p 1004 98 1004 2 .6
title @p subtitle {"text":"Cathedral of Fire"}
title @p title {"text":""}
playsound custom.boom master @p ~ ~ ~ 2 0 1
effect @p blindness 2 0 true

execute @p[tag=!boss2_minion] ~ ~ ~ kill @e[tag=mob]
scoreboard players set @p eventTimer 1
scoreboard players set @p boss2_minion 4
scoreboard players tag @p[tag=!boss2_minion] add boss2_started