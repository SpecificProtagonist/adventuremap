#Agro
execute at @p as @e[tag=agro2,distance=..2.5] at @s run function map:agro
execute at @p as @e[tag=agro5,distance=..5.5] at @s run function map:agro
execute at @p as @e[tag=agro9,distance=..9.5] at @s run function map:agro

#Spectre Speed
scoreboard players add @p spectreSpeed 1
scoreboard players set @p[scores={spectreSpeed=140..}] spectreSpeed 0
execute if entity @p[scores={spectreSpeed=0}] run effect give @e[tag=spectre] speed 1 12 true

#Particle
execute at @e[tag=zombieSlow] run particle block ancient_debris ~ ~1.3 ~ 
execute at @e[tag=zombieGroup] run particle block ancient_debris ~ ~1.3 ~ 

#Mimic
tag @e[tag=Mimic,nbt={Items:[]}] add toMimic
execute at @e[tag=toMimic] run summon cave_spider ~ ~ ~ {Passengers:[{id:"hopper_minecart",Enabled:0,CustomName:Chest,CustomDisplayTile:1,DisplayOffset:-4,DisplayTile:chest}]}
kill @e[tag=toMimic]

#Empty Items
tag @e[tag=Item,nbt={Items:[]}] add toRemove
execute at @e[tag=toRemove] run kill @e[tag=ItemCloud,distance=..1]
kill @e[tag=toRemove]
tag @e[tag=ItemCloud] add itemCloudEmpty
execute at @e[tag=Item] run tag @e[tag=ItemCloud,distance=..2] remove itemCloudEmpty
kill @e[tag=itemCloudEmpty]

#Illusionary Walls
#execute @p ~ ~ ~ detect ~ ~ ~ carpet color=pink function map:illusionary_wall

#Key Effect
#execute @e[tag=boss1Key] ~ ~ ~ /particle dragonbreath ~ ~.5 ~ .3 1 .3 .02 2

#Spawnpoint
execute at @e[tag=spawnpoint_inactive] run particle enchanted_hit ~ ~1 ~ 0 1 0 .1 10
execute if entity @p[tag=rested] at @e[tag=spawnpoint_active] run tag @p[distance=5..] remove rested
execute as @p[tag=!rested] at @s if entity @e[tag=spawnpoint,distance=..2.5] run function map:set_spawnpoint

#Casters
execute as @e[tag=casteractive] at @s run function map:update_caster

#Evokers
execute at @e[type=vex] run effect give @e[tag=mob] speed 2 2 true
execute at @e[type=vex] run particle dragon_breath ~ ~ ~ .5 .5 .5 0 10
effect give @e[type=vex] invisibility 3 0 true
kill @e[type=vex]

#Brainspike
execute as @e[tag=brainspike] at @s unless entity @e[distance=..2.5,tag=brainspike_zombie] run kill @s

#Boss
execute if entity @e[tag=boss1] run function map:boss1/tick
execute if entity @p[tag=boss2_started] run function map:boss2/tick

#Cursed Flames
execute as @e[type=area_effect_cloud,tag=!agro] run tag @s[tag=!ItemCloud,nbt={Particle:"dragon_breath"}] add cursed_flame_start
execute if entity @e[tag=cursed_flame_start] run function map:correct_cursed_flame

#Cast Spells
scoreboard players remove @p[scores={spellCooldown=1..}] spellCooldown 1
execute at @p[tag=!cooldown_from_potion,scores={spellCooldown=1..}] run particle totem_of_undying ~ ~1 ~ .4 .1 .4 0 1
execute at @p[tag=!cooldown_from_potion,scores={spellCooldown=1..,castSpell=1..}] run particle dust 1.3 0.1 0.4 1.0 ~ ~1.5 ~ .5 .1 .5 0 15
execute as @p[scores={spellCooldown=..0,castSpell=1..}] at @s run function map:spell/cast
scoreboard players set @p castSpell 0
