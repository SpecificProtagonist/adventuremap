xp set @p 0 levels
kill @e[type=experience_orb]

clear @p glass_bottle
clear @p potion{loseOnDeath:true}
tag @e[type=item,nbt={Item:{tag:{loseOnDeath:true}}}] add itemToKill
kill @e[tag=itemToKill]

advancement grant @p only map:bottles
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
advancement revoke @p only map:bottles

clear @p golden_sword{Damage:14}
clear @p golden_sword{Damage:15}
execute if entity @p[tag=has_enchanted_sword_fire] run function item:fire_sword
execute if entity @p[tag=has_enchanted_sword_curse] run function item:curse_sword
tag @p remove has_enchanted_sword_fire
tag @p remove has_enchanted_sword_curse

effect give @p saturation 999999 0 true
effect give @p blindness 1 0 true

scoreboard players set @p athame_used 0
tp @p @e[tag=spawnpoint_active,limit=1]
tag @p add rested


function map:spawn_mobs

execute at @e[tag=activateEvery] run setblock ~ ~ ~ redstone_block
execute at @e[tag=deactivateEvery] run setblock ~ ~ ~ stone

setblock -458 55 546 lever[face=floor,facing=north,powered=false]
setblock -458 54 546 stone
setblock -458 54 546 chiseled_stone_bricks

fill -492 63 434 -488 68 434 air replace light_blue_stained_glass
tag @p remove boss2_started
