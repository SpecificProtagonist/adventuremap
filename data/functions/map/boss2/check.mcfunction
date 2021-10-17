function map:boss2/main_killed unless @e[tag=boss2_main]

scoreboard players operation @p boss_health = @e[tag=boss2] boss_health
execute @e[tag=boss2] ~ ~ ~ testfor @e[tag=boss2_minion]
scoreboard players remove @p[tag=boss2,score_boss_health=6] boss2_minion 1
scoreboard players remove @p[tag=boss2,score_boss_health=4] boss2_minion 1
scoreboard players remove @p[tag=boss2,score_boss_health=2] boss2_minion 1
scoreboard players set @p[tag=boss2,score_boss_health=1] boss2_minion 0
scoreboard players set @p[score_boss2_minion=3] eventTimer -80
execute @p[score_boss2_minion=3] ~ ~ ~ scoreboard players tag @e[tag=boss2] add boss2_summon_minion