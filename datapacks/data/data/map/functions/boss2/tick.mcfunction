#center: 1004 93 970
#fires:	1000 96 974
#		1000 96 966
#		1008 96 966
#		1008 96 974

execute if entity @p[scores={eventTimer=1..}] run function map:boss2/phase_0



scoreboard players add @p[scores={eventTimer=..-1}] eventTimer 1
execute at @e[tag=boss2_main] run particle falling_lava ~ ~1.5 ~ .1 .5 .1 1 2
execute if entity @p[scores={eventTimer=-1}] run function map:boss2/summon
execute if entity @p[scores={eventTimer=0}] run function map:boss2/check

execute if entity @p[scores={eventTimer=..-1}] run particle large_smoke 1004 93.5 970 0 .3 0 0 2
execute if entity @p[scores={eventTimer=-20..-1}] run particle flame 1004 93 970 .1 .1 .1 0 10

tp @e[tag=boss2_ghast,x=990,y=90,z=955,dx=30,dy=8,dz=30] ~ 100 ~
