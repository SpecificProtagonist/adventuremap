#center: 1004 93 970
#fires:	1000 96 974
#		1000 96 966
#		1008 96 966
#		1008 96 974

function map:boss2/phase_0 if @p[score_eventTimer_min=1]



scoreboard players add @p[score_eventTimer=-1] eventTimer 1
execute @e[tag=boss2_main] ~ ~ ~ particle dripLava ~ ~1.5 ~ .1 .5 .1 1 2
function map:boss2/summon if @p[score_eventTimer_min=-1,score_eventTimer=-1]
function map:boss2/check if @p[score_eventTimer_min=0,score_eventTimer=0]

execute @p[score_eventTimer=-1] ~ ~ ~ particle largesmoke 1004 93.5 970 0 .3 0 0 2
execute @p[score_eventTimer_min=-20,score_eventTimer=-1] ~ ~ ~ particle flame 1004 93 970 .1 .1 .1 0 10

tp @e[tag=boss2_ghast,x=990,y=90,z=955,dx=30,dy=8,dz=30] ~ 100 ~