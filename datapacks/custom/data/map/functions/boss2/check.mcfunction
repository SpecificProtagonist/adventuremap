## Run every tick after summoning, check if leader killed or new minions need to be summoned

execute unless entity @e[tag=boss2_main] run function map:boss2/main_killed

execute store result score @e[tag=boss2] boss2_minion if entity @e[tag=boss2_minion]
# Start with 4 minions
scoreboard players remove @e[tag=boss2] boss2_minion 4
# More minions as fight goes on
scoreboard players remove @e[tag=boss2,scores={boss2_health=..6}] boss2_minion 1
scoreboard players remove @e[tag=boss2,scores={boss2_health=..5}] boss2_minion 1
scoreboard players remove @e[tag=boss2,scores={boss2_health=..3}] boss2_minion 1
scoreboard players remove @e[tag=boss2,scores={boss2_health=..2}] boss2_minion 1
scoreboard players remove @p[tag=boss2,scores={boss2_health=..1}] boss2_minion 5
# If too few, spawn another one
scoreboard players set @e[tag=boss2,scores={boss2_minion=..-1,eventTimer=0}] eventTimer -80
execute if entity @e[tag=boss2,scores={boss2_minion=..-1}] run tag @e[tag=boss2] add boss2_summon_minion
