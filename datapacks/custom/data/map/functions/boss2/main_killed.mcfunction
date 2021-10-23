## Leader was killed

# Update health
scoreboard players remove @e[tag=boss2] boss2_health 1
execute store result bossbar boss2 value run scoreboard players get @e[tag=boss2,limit=1] boss2_health
execute if entity @e[tag=boss2,scores={boss2_health=..0}] run function map:boss2/death

playsound block.fire.extinguish master @p 0 0 0 1 1.1 1
playsound block.fire.extinguish master @p 0 0 0 1 .6 1

# Chose new leader
tag @e[tag=boss2_minion,limit=1] add boss2_main
tag @e[tag=boss2_main] remove boss2_minion
data merge entity @e[tag=boss2_main,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:.16},{Name:generic.attack_damage,Base:5}],Health:25,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute at @e[tag=boss2_main] run particle flame ~ ~1 ~ .4 .4 .4 .1 20
execute at @e[tag=boss2_main] run particle angry_villager ~ ~1 ~ .4 .4 .4 1 3

# Increase difficulty with lower boss health
execute at @e[tag=boss2,scores={boss2_health=4}] run summon ghast ~7 ~15 ~0 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute at @e[tag=boss2,scores={boss2_health=3}] run summon ghast ~-5 ~15 5 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute at @e[tag=boss2,scores={boss2_health=2}] run summon ghast ~-5 ~15 ~-5 {Tags:[mob,boss2_ghast],ActiveEffects:[{Id:14,Duration:10000,ShowParticles:false}],Silent:1}
execute if entity @e[tag=boss2,scores={boss2_health=1}] at @e[tag=boss2_main] run summon zombie ~ ~ ~ {IsBaby:true,ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_miniminion,mob],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:3}],Health:2,Silent:1}
execute if entity @e[tag=boss2,scores={boss2_health=1}] at @e[tag=boss2_main] run summon zombie ~ ~ ~ {IsBaby:true,ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_miniminion,mob],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:3}],Health:2,Silent:1}

scoreboard players set @p eventTimer -100
tag @e[tag=boss2] add boss2_summon_evoker
