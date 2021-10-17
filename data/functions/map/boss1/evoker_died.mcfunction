playsound entity.ghast.death master @p ~ ~ ~ 1 0 1
execute @e[tag=boss1_e] ~ ~ ~ /particle dragonbreath ~ ~ ~ .3 1 .3 .01 100
scoreboard players remove @e[tag=boss1] eventTimer 1
function map:boss1/death if @e[tag=boss1,score_eventTimer=0]