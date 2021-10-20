playsound minecraft:block.fire.extinguish master @p ~ ~ ~ 1 1.1 1
playsound minecraft:block.fire.extinguish master @p ~ ~ ~ 1 .6 1
tag @e[tag=boss2_minion,limit=1] add boss2_main
tag @e[tag=boss2_main] remove boss2_minion
data merge entity @e[tag=boss2_main,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:.16},{Name:generic.attack_damage,Base:5}],Health:25,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute at @e[tag=boss2_main] run particle flame ~ ~1 ~ .4 .4 .4 .1 20
execute at @e[tag=boss2_main] run particle angry_villager ~ ~1 ~ .4 .4 .4 1 3

scoreboard players remove @e[tag=boss2] boss_health 1
# TODO: use /bossbar
data merge entity @e[tag=boss2,limit=1,scores={boss_health=7}] {Health:700}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=6}] {Health:600}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=5}] {Health:500}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=4}] {Health:400}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=3}] {Health:300}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=2}] {Health:200}
data merge entity @e[tag=boss2,limit=1,scores={boss_health=1}] {Health:100}
execute if entity @e[tag=boss2,limit=1,scores={boss_health=..0}] run function map:boss2/death

execute if entity @e[tag=boss2,scores={boss_health=4}] run summon ghast 1000 96 966 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute if entity @e[tag=boss2,scores={boss_health=3}] run summon ghast 1008 96 966 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute if entity @e[tag=boss2,scores={boss_health=2}] run summon ghast 1008 96 974 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute if entity @e[tag=boss2,scores={boss_health=1}] at @e[tag=boss2_main] run summon zombie ~ ~ ~ {IsBaby:true,ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_miniminion,mob],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:3}],Health:2,Silent:1}

scoreboard players set @p eventTimer -100
tag @e[tag=boss2] add boss2_summon_evoker
