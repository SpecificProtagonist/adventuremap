fill -464 97 454 -462 101 454 air
fill -464 97 462 -462 101 462 spruce_log[axis=y]
setblock -463 97 458 lever[face=floor,facing=north,powered=false]
setblock -463 95 458 redstone_wire[power=0]
setblock -463 94 459 redstone_wall_torch[facing=south,lit=true]
playsound minecraft:block.piston.extend master @p -463 97 462 2 .7
playsound minecraft:block.piston.contract master @p -463 97 462 2 .7
