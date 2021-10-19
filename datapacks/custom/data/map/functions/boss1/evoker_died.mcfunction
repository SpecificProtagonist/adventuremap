playsound entity.ghast.death master @p ~ ~ ~ 1 0 1
execute at @e[tag=boss1_e] run particle dragon_breath ~ ~ ~ .3 1 .3 .01 100
scoreboard players remove @e[tag=boss1] eventTimer 1
execute if entity @e[tag=boss1,scores={eventTimer=..0}] run function map:boss1/death
