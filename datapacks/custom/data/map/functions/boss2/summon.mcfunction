execute if entity @e[tag=boss2_summon_minion] run summon zombie 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:0}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movement_speed",Base:.19},{Name:generic.attack_damage,Base:3}],Health:18,Silent:1}
tag @e[tag=boss2] remove boss2_summon_minion


execute if entity @e[tag=boss2_summon_evoker] run summon evoker 1004 93 970 {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_evoker,mob],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:5}],Health:25}
tag @e[tag=boss2] remove boss2_summon_evoker
