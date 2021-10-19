scoreboard players add @p eventTimer 1

#summon minion
execute at @p[scores={eventTimer=100..220}] run particle large_smoke -490 57.5 418 0 0 0 0 2
execute at @p[scores={eventTimer=160..220}] run particle large_smoke -490 57.5 418 .2 .3 .2 0 5
execute at @p[scores={eventTimer=190..220}] run particle flame -490 57.5 418 .1 .1 .1 0 10
execute at @p[scores={eventTimer=220..228}] run particle witch -490 58 418 .1 .1 .1 0 15
execute at @p[scores={eventTimer=220}] run summon zombie -490 57 418 {Attributes:[{Name:generic.movementSpeed,Base:.25},{Name:generic.maxHealth,Base:45}],Health:45,PersistanceRequired:true,Tags:[mob,boss1_minnion],Invulnerable:true,CustomName:"§rDemon Avatar",ArmorItems:[{},{},{id:leather_chestplate,Count:1,tag:{display:{color:4587520}}},{id:leather_helmet,Count:1,tag:{display:{color:4587520}}}],Passengers:[{id:area_effect_cloud,Radius:1,RadiusPerTick:0,RadiusPerUse:0,Duration:9999,Tags:[mob,boss1_fireballMarker]}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @p[scores={eventTimer=220..228}] run playsound block.fire.extinguish master @p -490 57 418 .6 1
execute if entity @p[scores={eventTimer=228..}] at @e[tag=boss1_e] run particle witch ~ ~ ~ .1 .1 .1 0 3
execute if entity @p[scores={eventTimer=100..102}] run playsound block.brewing_stand.brew master @p


#fireball & dark spectre
execute if entity @p[scores={eventTimer=2}] at @e[tag=boss1_fireballMarker] run summon fireball ~ ~ ~ {direction:[.0,.0,.0],Tags:[mob,boss1_fireball],ExplosionPower:2}
execute if entity @p[scores={eventTimer=50}] at @e[tag=boss1_fireballMarker] run summon husk ~ ~ ~ {Invulnerable:true,Attributes:[{Name:generic.movementSpeed,Base:.1},{Name:generic.attackDamage,Base:1}],Tags:[mob,boss1_spectre],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"leather_helmet",Count:1,tag:{display:{color:0}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @p[scores={eventTimer=50}] run kill @e[tag=boss1_fireballMarker]


#spinn attack
execute at @e[tag=boss1_minnion] run effect give @p[distance=..1,scores={eventTimer=220..380}] wither 1 9 true
execute if entity @p[scores={eventTimer=222}] run effect give @e[tag=boss1_minnion] speed 8 0 true
execute if entity @p[scores={eventTimer=220..380}] at @e[tag=boss1_minnion] run teleport @e[tag=boss1_blades] ~ ~-1 ~
execute if entity @p[scores={eventTimer=380}] run tp @e[tag=boss1_blades] -493 127 415
tp @e[tag=boss1_blades] ~ ~ ~ ~9 ~
execute if entity @p[scores={eventTimer=380}] run data merge entity @e[tag=boss1_minnion,limit=1] {Invulnerable:false}
execute if entity @p[scores={eventTimer=222}] run data merge entity @e[tag=boss1_minnion,limit=1] {Invulnerable:true}


#red spectres
execute if entity @p[scores={eventTimer=380}] at @e[tag=boss1_minnion] run summon area_effect_cloud ~ ~ ~ {Duration:10,Passengers:[{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]},{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]}]}
execute if entity @p[scores={eventTimer=380}] at @e[tag=boss1_minnion] run particle large_smoke ~ ~ ~ .2 .3 .2 0 6
execute at @p[scores={eventTimer=380}] run playsound block.fire.extinguish master @p ~ ~ ~ .6 1


#reset timer
scoreboard players set @p[scores={eventTimer=800..}] eventTimer 221
execute @e[tag=boss1] ~ ~ ~ testfor @e[tag=boss1_minnion]
execute @e[tag=boss1,score_boss_health=0] ~ ~ ~ scoreboard players set @p[score_eventTimer_min=221] eventTimer 0


#boss health
execute @e[tag=boss1] ~ ~ ~ testfor @e[tag=boss1_e]
scoreboard players operation @e[tag=boss1] boss_health -= @e[tag=boss1] eventTimer
execute if entity @e[tag=boss1,scores={boss_health=..-1}] run function map:boss1/evoker_died
# TODO: /bossbar
data merge entity @e[tag=boss1,limit=1,scores={eventTimer=3}] {Health:300}
data merge entity @e[tag=boss1,limit=1,scores={eventTimer=2}] {Health:200}
data merge entity @e[tag=boss1,limit=1,scores={eventTimer=1}] {Health:100}
