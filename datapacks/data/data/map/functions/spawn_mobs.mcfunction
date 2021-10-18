kill @e[tag=mob]
tp @e[tag=mobPos] ~ ~-200 ~


execute @e[tag=mobPosZombieFast] ~ ~ ~ summon Zombie ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.movementSpeed",Base:.3}],Health:20,Tags:[mob,zombieFast],DeathLootTable:"map:zombieFast"}

execute @e[tag=mobPosZombie] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie],DeathLootTable:"map:zombie"}

execute @e[tag=mobPosZombieFeeble] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.maxHealth",Base:5},{Name:"generic.movementSpeed",Base:.04}],Tags:[mob,zombie],DeathLootTable:"map:zombie"}

execute @e[tag=mobPosZombaby] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.maxHealth",Base:7},{Name:"generic.movementSpeed",Base:.15}],Tags:[mob,zombaby],IsBaby:true}

execute @e[tag=mobPosZombieGroup] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.maxHealth",Base:20},{Name:"generic.movementSpeed",Base:.12}],Health:30,Tags:[mob,zombie],Passengers:[{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]},{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]},{id:"zombie_villager",PersistenceRequired:true,IsBaby:1,Health:5,Tags:[zombaby]}],DeathLootTable:"map:zombie"}

execute @e[tag=mobPosStray] ~ ~ ~ summon stray ~ ~ ~ {PersistenceRequired:true,Attributes:[{Name:"generic.movementSpeed",Base:.3}],Health:20,Tags:[mob,stray]}

execute @e[tag=mobPosStrayBow] ~ ~ ~ summon stray ~ ~ ~ {PersistenceRequired:true,HandItems:[{id:bow,Count:1}],Health:20,Tags:[mob,strayBow],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute @e[tag=mobPosSkeletonBow] ~ ~ ~ summon skeleton ~ ~ ~ {PersistenceRequired:true,HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.movementSpeed",Base:.18}],Health:15,Tags:[mob,skeletonBow],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute @e[tag=mobPosZombie2] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,armorCalc,sharp1],ArmorItems:[{},{},{id:"leather_chestplate",Count:1},{id:"leather_helmet",Count:1}],HandItems:[{id:"golden_sword",Count:1,Damage:10s,tag:{Unbreakable:1}}],Attributes:[{Name:"generic.maxHealth",Base:30},{Name:"generic.knockbackResistance",Base:.4},{Name:"generic.attackDamage",Base:6}],Health:25,DeathLootTable:"map:zombie2",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute @e[tag=mobPosZombie3] ~ ~ ~ summon zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,armorCalc,sharp2],ArmorItems:[{},{id:"leather_leggings"},{id:"leather_chestplate",Count:1},{id:"iron_helmet",Count:1}],HandItems:[{id:"golden_sword",Count:1,Damage:11s,tag:{Unbreakable:1}},{id:"shield",Count:1}],Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.knockbackResistance",Base:.6},{Name:"generic.attackDamage",Base:8}],Health:30,DeathLootTable:"map:zombie3",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute @e[tag=mobPosSpectre] ~ ~ ~ summon Husk ~ ~ ~ {PersistenceRequired:true,ArmorItems:[{},{},{id:"diamond_chestplate",Count:1},{id:"diamond_helmet",Count:1}],Attributes:[{Name:"generic.movementSpeed",Base:.11},{Name:"generic.knockbackResistance",Base:1}],Health:10,Tags:[mob,spectre,armorCalc,blunt2],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true},{Id:12,Duration:99999,Amplifier:0,Ambient:true}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],DeathLootTable:"map:spectre"}

execute @e[tag=mobPosSpectreDark] ~ ~ ~ summon Husk ~ ~ ~ {PersistenceRequired:true,ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"leather_helmet",Count:1,tag:{display:{color:0}}}],Attributes:[{Name:"generic.movementSpeed",Base:.11},{Name:"generic.knockbackResistance",Base:1}],Health:15,Tags:[mob,spectre,armorCalc,blunt2],ActiveEffects:[{Id:14,Duration:99999,Amplifier:0,Ambient:true},{Id:12,Duration:99999,Amplifier:0,Ambient:true}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Silent:1}

execute @e[tag=mobPosCleric] ~ ~ ~ summon zombie ~ ~ ~ {PersistenceRequired:true,Tags:[mob,zombie,caster,caster1],HandItems:[{id:"Book",Count:1},{id:"golden_shovel",Count:1,Damage:13,tag:{Unbreakable:1}}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"leather_helmet",Count:1,tag:{display:{color:16777215}}}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}

execute @e[tag=mobPosBrainspike] ~ ~ ~ summon minecraft:zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,brainspike_zombie],Passengers:[{id:guardian,Tags:[brainspike],Silent:1,Invulnerable:1,Attributes:[{Name:"generic.movementSpeed",Base:0}]}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:9779350}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2}],DeathLootTable:"map:brainspike",ArmorDropChances:[0f,0f,0f,0f]}

execute @e[tag=mobPosBrainspike2] ~ ~ ~ summon minecraft:zombie_villager ~ ~ ~ {PersistenceRequired:true,Tags:[mob,brainspike_zombie],Passengers:[{id:guardian,Tags:[brainspike],Silent:1,Invulnerable:1,Attributes:[{Name:"generic.movementSpeed",Base:.23}]}],ArmorItems:[{},{},{id:"leather_chestplate",Count:1,tag:{display:{color:9779350}}}],Attributes:[{Name:"generic.movementSpeed",Base:.2}],DeathLootTable:"map:brainspike",ArmorDropChances:[0f,0f,0f,0f]}

execute @e[tag=mobPosRat] ~ ~ ~ summon silverfish ~ ~ ~ {PersistenceRequired:true,Tags:[mob]}


#Agro
execute @e[tag=agro9Pos] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:[mob,agro,agro9],Age:0,Radius:1,RadiusPerTick:0,Duration:999999,Particle:"blockdust"}
execute @e[tag=agro5Pos] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:[mob,agro,agro5],Age:0,Radius:1,RadiusPerTick:0,Duration:999999,Particle:"blockdust"}
execute @e[tag=agro2Pos] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:[mob,agro,agro2],Age:0,Radius:1,RadiusPerTick:0,Duration:999999,Particle:"blockdust"}



execute @e[tag=mobPos] ~ ~ ~ tp @e[tag=mob,r=0] @s
tp @e[tag=mobPos] ~ ~200 ~
scoreboard players tag @e[tag=brainspike] add mob
scoreboard players tag @e[tag=zombaby] add mob
entitydata @e[tag=mob] {NoAI:true}
