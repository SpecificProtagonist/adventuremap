#Agro
execute @p ~ ~ ~ execute @e[tag=agro2,r=2] ~ ~ ~ function map:agro
execute @p ~ ~ ~ execute @e[tag=agro5,r=5] ~ ~ ~ function map:agro
execute @p ~ ~ ~ execute @e[tag=agro9,r=9] ~ ~ ~ function map:agro

#Spectre Speed
scoreboard players add @p spectreSpeed 1
scoreboard players set @p[score_spectreSpeed_min=140] spectreSpeed 0
execute @p[score_spectreSpeed=0] ~ ~ ~ effect @e[tag=spectre] speed 1 12 true

#Particle
execute @e[tag=zombieSlow] ~ ~ ~ particle blockcrack ~ ~1.3 ~ 0 0 0 1 0 anything @a 88
execute @e[tag=zombieGroup] ~ ~ ~ particle blockcrack ~ ~1.3 ~ 0 0 0 1 0 anything @a 120

#Mimic
scoreboard players tag @e[tag=Mimic] add toMimic {Items:[]}
execute @e[tag=toMimic] ~ ~ ~ summon cave_spider ~ ~ ~ {Passengers:[{id:"hopper_minecart",Enabled:0,CustomName:Chest,CustomDisplayTile:1,DisplayOffset:-4,DisplayTile:chest}]}
kill @e[tag=toMimic]

#Empty Items
scoreboard players tag @e[tag=Item] add toRemove {Items:[]}
execute @e[tag=toRemove] ~ ~ ~ kill @e[tag=ItemCloud,r=1]
kill @e[tag=toRemove]
scoreboard players tag @e[tag=ItemCloud] add itemCloudEmpty
execute @e[tag=Item] ~ ~ ~ scoreboard players tag @e[tag=ItemCloud,r=2] remove itemCloudEmpty
kill @e[tag=itemCloudEmpty]

#Illusionary Walls
#execute @p ~ ~ ~ detect ~ ~ ~ carpet color=pink function map:illusionary_wall

#Key Effect
#execute @e[tag=boss1Key] ~ ~ ~ /particle dragonbreath ~ ~.5 ~ .3 1 .3 .02 2

#Spawnpoint
execute @e[tag=spawnpoint_inactive] ~ ~ ~ particle magicCrit ~ ~ ~ 0 16 0 .1
execute @p[tag=rested] ~ ~ ~ execute @e[tag=spawnpoint_active] ~ ~ ~ scoreboard players tag @p[rm=5] remove rested
execute @p[tag=!rested] ~ ~ ~ function map:set_spawnpoint if @e[tag=spawnpoint,r=2]

#Casters
execute @e[tag=casteractive] ~ ~ ~ map:update_caster

#Evokers
execute @e[type=vex] ~ ~ ~ effect @e[tag=mob] speed 2 2 true
execute @e[type=vex] ~ ~ ~ particle dragonbreath ~ ~ ~ .5 .5 .5 0 10
effect @e[type=vex] invisibility 3 0 true
kill @e[type=vex]

#Brainspike
execute @e[tag=brainspike] ~ ~ ~ function map:brainspike_death unless @e[r=2,tag=brainspike_zombie]

#Boss
function map:boss1/tick if @e[tag=boss1]
function map:boss2/tick if @p[tag=boss2_started]

#Cursed Flames
execute @e[type=area_effect_cloud,tag=!agro] ~ ~ ~ scoreboard players tag @s[tag=!ItemCloud] add cursed_flame_start {Particle:"dragonbreath"}
function map:correct_cursed_flame if @e[tag=cursed_flame_start]

#Cast Spells
scoreboard players remove @p[score_spellCooldown_min=1] spellCooldown 1
execute @p[tag=!cooldown_from_potion,score_spellCooldown_min=1] ~ ~ ~ particle totem ~ ~1 ~ .4 .1 .4 0 1
execute @p[tag=!cooldown_from_potion,score_spellCooldown_min=1] ~ ~ ~ execute @p[score_castSpell_min=1] ~ ~ ~ particle reddust ~ ~1.5 ~ .5 .1 .5 0 15
execute @p[score_spellCooldown=0] ~ ~ ~ function map:spell/cast if @p[score_castSpell_min=1]
scoreboard players set @p castSpell 0