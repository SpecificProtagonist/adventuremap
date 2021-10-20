kill @e[tag=mob]
execute as @e[tag=mobPos] at @s run tp ~ ~-200 ~


execute at @e[tag=mobPosZombieFast] run summon zombie ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:.3}],Health:20,Tags:[mob,zombieFast]}

execute at @e[tag=mobPosZombie] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie],DeathLootTable:"map:zombie"}

execute at @e[tag=mobPosZombieFeeble] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.max_health",Base:5},{Name:"generic.movement_speed",Base:.04}],Tags:[mob,zombie],DeathLootTable:"map:zombie"}

execute at @e[tag=mobPosZombaby] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.max_health",Base:7},{Name:"generic.movement_speed",Base:.15}],Tags:[mob,zombaby],IsBaby:true}

execute at @e[tag=mobPosZombieGroup] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:.12}],Health:30,Tags:[mob,zombie],Passengers:[{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]},{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]},{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]}],DeathLootTable:"map:zombie"}

execute at @e[tag=mobPosStray] run summon stray ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.movement_speed",Base:.3}],Health:20,Tags:[mob,stray]}

execute at @e[tag=mobPosStrayBow] run summon stray ~ ~ ~ {PersistenceRequired:true,HandItems:[{id:bow,Count:1}],Health:20,Tags:[mob,strayBow],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute at @e[tag=mobPosSkeletonBow] run summon skeleton ~ ~ ~ {PersistenceRequired:true,HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.movement_speed",Base:.18}],Health:15,Tags:[mob,skeletonBow],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute at @e[tag=mobPosZombie2] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,armorCalc,sharp1],ArmorItems:[{},{},{id:"leather_chestplate",Count:1},{id:"leather_helmet",Count:1}],HandItems:[{id:"golden_sword",Count:1,Damage:10s,tag:{Unbreakable:1}}],Attributes:[{Name:"generic.max_health",Base:30},{Name:"generic.knockback_resistance",Base:.4},{Name:"generic.attack_damage",Base:6}],Health:25,DeathLootTable:"map:zombie2",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute at @e[tag=mobPosZombie3] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,armorCalc,sharp2],ArmorItems:[{},{id:"leather_leggings"},{id:"leather_chestplate",Count:1},{id:"iron_helmet",Count:1}],HandItems:[{id:"golden_sword",Count:1,Damage:11s,tag:{Unbreakable:1}},{id:"shield",Count:1}],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:.6},{Name:"generic.attack_damage",Base:8}],Health:30,DeathLootTable:"map:zombie3",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute at @e[tag=mobPosSpectre] run summon husk ~ ~ ~ {PersistenceRequired:true,ArmorItems:[{},{},{id:"diamond_chestplate",Count:1},{id:"diamond_helmet",Count:1}],Attributes:[{Name:"generic.movement_speed",Base:.11},{Name:"generic.knockback_resistance",Base:1}],Health:10,Tags:[mob,spectre,armorCalc,blunt2],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true},{Id:12,Duration:99999,Amplifier:0,Ambient:true}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"map:spectre"}

execute at @e[tag=mobPosSpectreDark] run summon husk ~ ~ ~ {PersistenceRequired:true,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"leather_helmet",Count:1,tag:{display:{color:0}}}],Attributes:[{Name:"generic.movement_speed",Base:.11},{Name:"generic.knockback_resistance",Base:1}],Health:15,Tags:[mob,spectre,armorCalc,blunt2],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true},{Id:12,Duration:99999,Amplifier:0,Ambient:true}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Silent:1}

execute at @e[tag=mobPosCleric] run summon zombie ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,caster,caster1],HandItems:[{id:"Book",Count:1},{id:"golden_shovel",Count:1,Damage:13,tag:{Unbreakable:1}}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"leather_helmet",Count:1,tag:{display:{color:16777215}}}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute at @e[tag=mobPosBrainspike] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,brainspike_zombie],Passengers:[{id:guardian,Tags:[brainspike],Silent:1,Invulnerable:1,Attributes:[{Name:"generic.movement_speed",Base:0}]}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:9779350}}}],Attributes:[{Name:"generic.movement_speed",Base:.2}],DeathLootTable:"map:brainspike",ArmorDropChances:[0f,0f,0f,0f]}

execute at @e[tag=mobPosBrainspike2] run summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,brainspike_zombie],Passengers:[{id:guardian,Tags:[brainspike],Silent:1,Invulnerable:1,Attributes:[{Name:"generic.movement_speed",Base:.23}]}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:9779350}}}],Attributes:[{Name:"generic.movement_speed",Base:.2}],DeathLootTable:"map:brainspike",ArmorDropChances:[0f,0f,0f,0f]}

execute at @e[tag=mobPosRat] run summon silverfish ~ ~ ~ {PersistenceRequired:true,Tags:[mob]}


#Agro
execute at @e[tag=agro9Pos] run summon armor_stand ~ ~ ~ {Tags:[mob,agro,agro9],Marker:1,Invisible:1}
execute at @e[tag=agro5Pos] run summon armor_stand ~ ~ ~ {Tags:[mob,agro,agro5],Marker:1,Invisible:1}
execute at @e[tag=agro2Pos] run summon armor_stand ~ ~ ~ {Tags:[mob,agro,agro2],Marker:1,Invisible:1}



execute as @e[tag=mobPos] at @s run tp @e[tag=mob,distance=..0.5] @s
execute as @e[tag=mobPos] at @s run tp ~ ~200 ~
tag @e[tag=brainspike] add mob
tag @e[tag=zombaby] add mob
execute as @e[tag=mob] run data merge entity @s {NoAI:true}
