execute as @e[tag=cursed_flame_start] run data merge entity @s {Effects:[{Id:2,Amplifier:2,Duration:30},{Id:20,Amplifier:2,Duration:30}],Particle:fallingdust,ParticleParam1:210,Radius:3.5,RadiusOnUse:-.2,RadiusPerTick:-0.002}
tag @e[tag=cursed_flame_start] remove cursed_flame_start
