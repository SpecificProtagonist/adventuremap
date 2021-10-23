fill -464 97 454 -462 101 454 spruce_log[axis=y]
fill -464 97 462 -462 101 462 air
setblock -463 97 458 lever[face=floor,facing=north,powered=true]
setblock -463 95 458 redstone_wire[power=15]
setblock -463 94 459 redstone_wall_torch[facing=south,lit=false]
playsound minecraft:block.piston.extend master @p -463 97 462 2 .7
playsound minecraft:block.piston.contract master @p -463 97 462 2 .7
