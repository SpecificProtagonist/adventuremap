tp @p[x=1002,y=96,z=994,dx=5,dy=4,dz=5] 1004 97 999
tp @p ~-1489 ~-12 ~-533
setblock 1004 97 1000 lever[face=floor,facing=north,powered=false]
playsound minecraft:block.piston.contract master @p -485 86 473 2 .6
setblock -485 85 467 lever[face=floor,facing=north,powered=true]
playsound minecraft:block.piston.extend master @p -485 86 465 2 .6
setblock 1004 95 1001 stone
setblock 1004 95 1001 glass
fill -486 85 473 -484 89 473 air
setblock -485 85 476 lever[face=floor,facing=north,powered=false]
setblock -485 83 475 stone
setblock -485 83 475 glass
effect give @p blindness 1 0 true
title @p subtitle {"text":"Burried Library"}
title @p title {"text":""}
