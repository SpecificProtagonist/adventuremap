scoreboard players add @p eventTimer 1

execute @p[score_eventTimer=20] ~ ~ ~ kill @e[tag=mob]

execute @p[score_eventTimer_min=160,score_eventTimer=160] ~ ~ ~ setblock 1000 96 974 fire
execute @p[score_eventTimer_min=160,score_eventTimer=160] ~ ~ ~ setblock 1000 96 966 fire
execute @p[score_eventTimer_min=160,score_eventTimer=160] ~ ~ ~ setblock 1008 96 966 fire
execute @p[score_eventTimer_min=160,score_eventTimer=160] ~ ~ ~ setblock 1008 96 974 fire
execute @p[score_eventTimer_min=180,score_eventTimer=300] ~ ~ ~ particle largesmoke 1004 93 970 0 0 0 0 2
execute @p[score_eventTimer_min=240,score_eventTimer=300] ~ ~ ~ particle largesmoke 1004 93 970 .2 .3 .2 0 5
execute @p[score_eventTimer_min=270,score_eventTimer=300] ~ ~ ~ particle flame 1004 93 970 .1 .1 .1 0 10
execute @p[score_eventTimer_min=300,score_eventTimer=308] ~ ~ ~ particle angryVillager 1004 93 970 .4 .5 .4 0 5
execute @p[score_eventTimer_min=295,score_eventTimer=295] ~ ~ ~ summon wither 1004 83 970 {Tags:[mob,boss2],Attributes:[{Name:"generic.maxHealth",Base:800}],Silent:true,Health:800,CustomName:"§rFire Demon"}

execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.22},{Name:generic.attackDamage,Base:3}],Health:20,Silent:1}
execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.22},{Name:generic.attackDamage,Base:3}],Health:20,Silent:1}
execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.22},{Name:generic.attackDamage,Base:3}],Health:20,Silent:1}
execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.22},{Name:generic.attackDamage,Base:3}],Health:20,Silent:1}

execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ playsound minecraft:entity.tnt.primed master @p 1008 96 974 2 1 1
execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:0},{Id:14,Duration:10000,ShowParticles:0}],Fire:10000,Tags:[boss2_main,mob],Attributes:[{Name:"generic.movementSpeed",Base:.18},{Name:generic.attackDamage,Base:5}],Health:25,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}]}

execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ stats entity @e[tag=boss2] set SuccessCount @p boss2_minion
execute @p[score_eventTimer_min=300,score_eventTimer=300] ~ ~ ~ scoreboard players set @e[tag=boss2] boss_health 8
scoreboard players set @p[score_eventTimer_min=309] eventTimer 0