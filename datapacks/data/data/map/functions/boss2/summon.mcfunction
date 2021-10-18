execute @e[tag=boss2_summon_minion] ~ ~ ~ summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:0}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movementSpeed",Base:.19},{Name:generic.attackDamage,Base:3}],Health:18,Silent:1}
scoreboard players tag @e[tag=boss2] remove boss2_summon_minion


execute @e[tag=boss2_summon_evoker] ~ ~ ~ summon evocation_illager 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_evoker,mob],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:5}],Health:25}
scoreboard players tag @e[tag=boss2] remove boss2_summon_evoker