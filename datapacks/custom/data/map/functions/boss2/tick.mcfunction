# Introduction playes: eventTimer > 0
# Fight, nothing happening: eventTimer = 0 
# Preparing to re-summon minions/evokers: eventTImer < 0

execute if entity @e[tag=boss2,scores={eventTimer=1..}] run function map:boss2/phase_0

execute if entity @e[tag=boss2,scores={eventTimer=0}] run function map:boss2/check
execute at @e[tag=boss2_main] run particle falling_lava ~ ~1.5 ~ .1 .5 .1 1 2
execute as @e[tag=boss2_ghast,y=94,dy=10] at @s run tp @s ~ 100 ~ facing entity @p

execute if entity @e[tag=boss2,scores={eventTimer=..0}] run scoreboard players add @e[tag=boss2_additional_evokers] eventTimer 1
tag @e[tag=boss2_additional_evokers,scores={eventTimer=800..}] add ready
execute if entity @e[tag=boss2_additional_evokers,tag=ready] run scoreboard players set @e[tag=boss2,scores={eventTimer=0}] eventTimer -80
execute if entity @e[tag=boss2_summon_evoker] run tag @e[tag=boss2_additional_evokers] remove ready
execute if entity @e[tag=boss2_additional_evokers,tag=ready] run tag @e[tag=boss2] add boss2_summon_evoker
scoreboard players set @e[tag=boss2_additional_evokers,tag=ready] eventTimer 0

scoreboard players add @e[tag=boss2,scores={eventTimer=..-1}] eventTimer 1
execute at @e[tag=boss2,scores={eventTimer=..-1}] run particle large_smoke ~ ~.5 ~ 0 .3 0 0 2
execute at @e[tag=boss2,scores={eventTimer=-20..-1}] run particle flame ~ ~ ~ .1 .1 .1 0 10
execute if entity @e[tag=boss2,scores={eventTimer=-1}] run function map:boss2/summon

