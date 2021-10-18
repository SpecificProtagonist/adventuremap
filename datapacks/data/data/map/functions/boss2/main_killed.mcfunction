playsound minecraft:block.fire.extinguish master @p ~ ~ ~ 1 1.1 1
playsound minecraft:block.fire.extinguish master @p ~ ~ ~ 1 .6 1
scoreboard players tag @e[tag=boss2_minion,c=1] add boss2_main
scoreboard players tag @e[tag=boss2_main] remove boss2_minion
entitydata @e[tag=boss2_main] {Attributes:[{Name:"generic.movementSpeed",Base:.16},{Name:generic.attackDamage,Base:5}],Health:25,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute @e[tag=boss2_main] ~ ~ ~ particle flame ~ ~1 ~ .4 .4 .4 .1 20
execute @e[tag=boss2_main] ~ ~ ~ particle angryVillager ~ ~1 ~ .4 .4 .4 1 3

scoreboard players remove @e[tag=boss2] boss_health 1
entitydata @e[tag=boss2,score_boss_health=7,score_boss_health_min=7] {Health:700}
entitydata @e[tag=boss2,score_boss_health=6,score_boss_health_min=6] {Health:600}
entitydata @e[tag=boss2,score_boss_health=5,score_boss_health_min=5] {Health:500}
entitydata @e[tag=boss2,score_boss_health=4,score_boss_health_min=4] {Health:400}
entitydata @e[tag=boss2,score_boss_health=3,score_boss_health_min=3] {Health:300}
entitydata @e[tag=boss2,score_boss_health=2,score_boss_health_min=2] {Health:200}
entitydata @e[tag=boss2,score_boss_health=1,score_boss_health_min=1] {Health:100}
function map:boss2/death if @e[tag=boss2,score_boss_health=0]

execute @e[tag=boss2,score_boss_health=4,score_boss_health_min=4] ~ ~ ~ summon ghast 1000 96 966 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute @e[tag=boss2,score_boss_health=3,score_boss_health_min=3] ~ ~ ~ summon ghast 1008 96 966 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute @e[tag=boss2,score_boss_health=2,score_boss_health_min=2] ~ ~ ~ summon ghast 1008 96 974 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute @e[tag=boss2,score_boss_health=1,score_boss_health_min=1] ~ ~ ~ execute @e[tag=boss2_main] ~ ~ ~ summon zombie ~ ~ ~ {IsBaby:true,ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_miniminion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:3}],Health:2,Silent:1}

scoreboard players set @p eventTimer -100
scoreboard players tag @e[tag=boss2] add boss2_summon_evoker