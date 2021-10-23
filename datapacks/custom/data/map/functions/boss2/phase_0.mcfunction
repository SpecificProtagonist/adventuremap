## Introduction

scoreboard players add @e[tag=boss2] eventTimer 1

execute if entity @e[tag=boss2,scores={eventTimer=160}] at @e[tag=boss2_fire] run setblock ~ ~ ~ fire
execute as @e[tag=boss2,scores={eventTimer=180..300}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 2
execute as @e[tag=boss2,scores={eventTimer=240..300}] at @s run particle large_smoke ~ ~ ~ .2 .3 .2 0 5
execute as @e[tag=boss2,scores={eventTimer=270..300}] at @s run particle flame ~ ~ ~ .1 .1 .1 0 10
execute as @e[tag=boss2,scores={eventTimer=300..308}] at @s run particle angry_villager ~ ~ ~ .4 .5 .4 0 5

execute as @e[tag=boss2,scores={eventTimer=300}] run bossbar set boss2 visible true

execute at @e[tag=boss2,scores={eventTimer=300}] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movement_speed",Base:.22},{Name:generic.attack_damage,Base:3}],Health:20,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute at @e[tag=boss2,scores={eventTimer=300}] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movement_speed",Base:.22},{Name:generic.attack_damage,Base:3}],Health:20,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute at @e[tag=boss2,scores={eventTimer=300}] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movement_speed",Base:.22},{Name:generic.attack_damage,Base:3}],Health:20,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute at @e[tag=boss2,scores={eventTimer=300}] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:false},{Id:14,Duration:10000,ShowParticles:false}],Fire:10000,Tags:[boss2_minion,mob],Attributes:[{Name:"generic.movement_speed",Base:.22},{Name:generic.attack_damage,Base:3}],Health:20,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

execute at @e[tag=boss2,scores={eventTimer=300}] run playsound entity.tnt.primed master @p ~ ~ ~ 2 1 1
execute at @e[tag=boss2,scores={eventTimer=300}] run summon zombie ~ ~ ~ {ActiveEffects:[{Id:12,Duration:10000,ShowParticles:0},{Id:14,Duration:10000,ShowParticles:0}],Fire:10000,Tags:[boss2_main,mob],Attributes:[{Name:"generic.movement_speed",Base:.18},{Name:generic.attack_damage,Base:5}],Health:25,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],ArmorDropChances:[0f,0f,0f,0f]}

scoreboard players set @e[tag=boss2,scores={eventTimer=309..}] eventTimer 0
