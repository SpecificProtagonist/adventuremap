scoreboard players add @e[tag=boss1_center] eventTimer 1

execute as @e[tag=boss1_evoker] at @s run tp @s ~ ~ ~ facing entity @p

# summon minion
execute at @e[tag=boss1_center,scores={eventTimer=..220}] run execute as @e[tag=boss1_evoker] at @s run tp @s ~ ~ ~ facing entity @e[tag=boss1_center,limit=1]
execute if entity @e[tag=boss1_center,scores={eventTimer=100..102}] run playsound block.brewing_stand.brew master @p
execute at @e[tag=boss1_center,scores={eventTimer=100..220}] run particle large_smoke ~ ~ ~ 0 0 0 0 2
execute at @e[tag=boss1_center,scores={eventTimer=160..220}] run particle large_smoke ~ ~ ~ .2 .3 .2 0 5
execute at @e[tag=boss1_center,scores={eventTimer=190..220}] run particle flame ~ ~0.5 ~ .1 .1 .1 0 10
execute at @e[tag=boss1_center,scores={eventTimer=220..228}] run particle witch ~ ~1 ~ .1 .1 .1 0 15
execute at @e[tag=boss1_center,scores={eventTimer=220}] run summon zombie ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:.25},{Name:generic.max_health,Base:45}],Health:45,PersistanceRequired:true,Tags:[mob,boss1_minnion],Invulnerable:true,CustomName:'{"text":"Demon Avatar"}',ArmorItems:[{},{},{id:leather_chestplate,Count:1,tag:{display:{color:4587520}}},{id:leather_helmet,Count:1,tag:{display:{color:4587520}}}],Passengers:[{id:area_effect_cloud,Radius:1,RadiusPerTick:0,RadiusPerUse:0,Duration:9999,Tags:[mob,boss1_fireballMarker]}],ArmorDropChances:[0f,0f,0f,0f]}
execute at @p[tag=boss1_center,scores={eventTimer=220..228}] run playsound block.fire.extinguish master @p ~ ~ ~ .6 1
execute if entity @e[tag=boss1_center,scores={eventTimer=228..}] at @e[tag=boss1_evoker] run particle witch ~ ~ ~ .1 .1 .1 0 3

# fireball & dark spectre
execute if entity @e[tag=boss1_center,scores={eventTimer=2}] at @e[tag=boss1_fireballMarker] run summon fireball ~ ~ ~ {direction:[.0,.0,.0],Tags:[mob,boss1_fireball],ExplosionPower:2}
execute if entity @e[tag=boss1_center,scores={eventTimer=50}] at @e[tag=boss1_fireballMarker] run summon husk ~ ~ ~ {Invulnerable:true,Attributes:[{Name:generic.movement_speed,Base:.1},{Name:generic.attack_damage,Base:1}],Tags:[mob,boss1_spectre],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"leather_helmet",Count:1,tag:{display:{color:0}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @e[tag=boss1_center,scores={eventTimer=50}] run kill @e[tag=boss1_fireballMarker]


# spin attack
execute if entity @e[tag=boss1_center,scores={eventTimer=222}] run data merge entity @e[tag=boss1_minnion,limit=1] {Invulnerable:true}
execute if entity @e[tag=boss1_center,scores={eventTimer=220..380}] at @e[tag=boss1_minnion] run effect give @p[distance=..1.5] wither 1 9 true
execute if entity @e[tag=boss1_center,scores={eventTimer=222}] run effect give @e[tag=boss1_minnion] speed 8 0 true
execute if entity @e[tag=boss1_center,scores={eventTimer=220..380}] positioned as @e[tag=boss1_minnion] run teleport @e[tag=boss1_blades] ~ ~-1 ~
execute at @e[tag=boss1_center,scores={eventTimer=380}] run tp @e[tag=boss1_blades] ~ 0 ~
execute as @e[tag=boss1_blades] at @s tp @s ~ ~ ~ ~9 ~
execute if entity @e[tag=boss1_center,scores={eventTimer=380}] run data merge entity @e[tag=boss1_minnion,limit=1] {Invulnerable:false}


# red spectres
execute if entity @e[tag=boss1_center,scores={eventTimer=380}] at @e[tag=boss1_minnion] run summon area_effect_cloud ~ ~ ~ {Duration:10,Passengers:[{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]},{ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:3934730}}},{id:"leather_helmet",Count:1,tag:{display:{color:3934730}}}],Attributes:[{Name:"generic.movement_speed",Base:.2},{Name:generic.attack_damage,Base:1}],Health:10,Tags:[mob],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true}],id:Husk,ArmorDropChances:[0f,0f,0f,0f]}]}
execute if entity @e[tag=boss1_center,scores={eventTimer=380}] at @e[tag=boss1_minnion] run particle large_smoke ~ ~ ~ .2 .3 .2 0 6
execute at @e[tag=boss1_center,scores={eventTimer=380}] run playsound block.fire.extinguish master @p ~ ~ ~ .6 1


# loop attack phases
scoreboard players set @e[tag=boss1_center,scores={eventTimer=800..}] eventTimer 221
# resummon minion
execute unless entity @e[tag=boss1_minnion] run scoreboard players set @e[tag=boss1_center,scores={eventTimer=221..}] eventTimer 0


#boss health
execute as @e[tag=boss1_evoker_pos_active] at @s unless entity @e[tag=boss1_evoker,distance=..2] run function map:boss1/evoker_died
execute store result bossbar boss1 value if entity @e[tag=boss1_evoker]
execute unless entity @e[tag=boss1_evoker] run function map:boss1/death

