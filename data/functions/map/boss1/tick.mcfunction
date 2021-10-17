scoreboard players add @p eventTimer 1

#summon minion
execute @p[score_eventTimer=220,score_eventTimer_min=100] ~ ~ ~ particle largesmoke -490 57.5 418 0 0 0 0 2
execute @p[score_eventTimer=220,score_eventTimer_min=160] ~ ~ ~ particle largesmoke -490 57.5 418 .2 .3 .2 0 5
execute @p[score_eventTimer=220,score_eventTimer_min=190] ~ ~ ~ particle flame -490 57.5 418 .1 .1 .1 0 10
execute @p[score_eventTimer=228,score_eventTimer_min=220] ~ ~ ~ particle witchMagic -490 58 418 .1 .1 .1 0 15
execute @p[score_eventTimer=220,score_eventTimer_min=220] ~ ~ ~ summon zombie -490 57 418 {Attributes:[{Name:generic.movementSpeed,Base:.25},{Name:generic.maxHealth,Base:45}],Health:45,PersistanceRequired:true,Tags:[mob,boss1_minnion],Invulnerable:true,CustomName:"§rDemon Avatar",ArmorItems:[{},{},{id:leather_chestplate,Count:1,tag:{display:{color:4587520}}},{id:leather_helmet,Count:1,tag:{display:{color:4587520}}}],Passengers:[{id:area_effect_cloud,Radius:1,RadiusPerTick:0,RadiusPerUse:0,Duration:9999,Tags:[mob,boss1_fireballMarker]}],ArmorDropChances:[0f,0f,0f,0f]}
execute @p[score_eventTimer=228,score_eventTimer_min=220] ~ ~ ~ playsound block.fire.extinguish master @p -490 57 418 .6 1
execute @p[score_eventTimer=228] ~ ~ ~ execute @e[tag=boss1_e] ~ ~ ~ particle witchMagic ~ ~ ~ .1 .1 .1 0 3
execute @p[score_eventTimer=102,score_eventTimer_min=100] ~ ~ ~ playsound block.brewing_stand.brew master @p


#fireball & dark spectre
execute @p[score_eventTimer=2,score_eventTimer_min=2] ~ ~ ~ execute @e[tag=boss1_fireballMarker] ~ ~ ~ summon fireball ~ ~ ~ {direction:[.0,.0,.0],Tags:[mob,boss1_fireball],ExplosionPower:2}
execute @p[score_eventTimer=50,score_eventTimer_min=50] ~ ~ ~ execute @e[tag=boss1_fireballMarker] ~ ~ ~ summon Husk ~ ~ ~ {Invulnerable:true,Attributes:[{Name:generic.movementSpeed,Base:.1},{Name:generic.attackDamage,Base:1}],Tags:[mob,boss1_spectre],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"leather_helmet",Count:1,tag:{display:{color:0}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute @p[score_eventTimer=50,score_eventTimer_min=50] ~ ~ ~ kill @e[tag=boss1_fireballMarker]


#spinn attack
execute @e[tag=boss1_minnion] ~ ~ ~ effect @p[r=1,score_eventTimer=380,score_eventTimer_min=220] wither 1 9 true
execute @p[score_eventTimer=222,score_eventTimer_min=222] ~ ~ ~ effect @e[tag=boss1_minnion] speed 8 0 true
execute @p[score_eventTimer=380,score_eventTimer_min=220] ~ ~ ~ execute @e[tag=boss1_minnion] ~ ~ ~ teleport @e[tag=boss1_blades] ~ ~-1 ~
execute @p[score_eventTimer=380,score_eventTimer_min=380] ~ ~ ~ tp @e[tag=boss1_blades] -493 127 415
tp @e[tag=boss1_blades] ~ ~ ~ ~9 ~
execute @p[score_eventTimer=380,score_eventTimer_min=380] ~ ~ ~ entitydata @e[tag=boss1_minnion] {Invulnerable:false}
execute @p[score_eventTimer=222,score_eventTimer_min=222] ~ ~ ~ entitydata @e[tag=boss1_minnion] {Invulnerable:true}


#red spectres
execute @p[score_eventTimer=380,score_eventTimer_min=380] ~ ~ ~ execute @e[tag=boss1_minnion] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Duration:10,Passengers:[{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]},{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2},{Name:generic.attackDamage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]}]}
execute @p[score_eventTimer=380,score_eventTimer_min=380] ~ ~ ~ execute @e[tag=boss1_minnion] ~ ~ ~ particle largesmoke ~ ~ ~ .2 .3 .2 0 6
execute @p[score_eventTimer=380,score_eventTimer_min=380] ~ ~ ~ playsound block.fire.extinguish master @p ~ ~ ~ .6 1


#reset timer
scoreboard players set @p[score_eventTimer_min=800] eventTimer 221
execute @e[tag=boss1] ~ ~ ~ testfor @e[tag=boss1_minnion]
execute @e[tag=boss1,score_boss_health=0] ~ ~ ~ scoreboard players set @p[score_eventTimer_min=221] eventTimer 0


#boss health
execute @e[tag=boss1] ~ ~ ~ testfor @e[tag=boss1_e]
scoreboard players operation @e[tag=boss1] boss_health -= @e[tag=boss1] eventTimer
function map:boss1/evoker_died if @e[tag=boss1,score_boss_health=-1]
entitydata @e[tag=boss1,score_eventTimer=3,score_eventTimer_min=3] {Health:300}
entitydata @e[tag=boss1,score_eventTimer=2,score_eventTimer_min=2] {Health:200}
entitydata @e[tag=boss1,score_eventTimer=1] {Health:100}