xp -999L @p
kill @e[type=xp_orb]

clear @p glass_bottle
clear @p potion 0 99 {loseOnDeath:true}
scoreboard players tag @e[type=item] add itemToKill {Item:{tag:{loseOnDeath:true}}}
kill @e[tag=itemToKill]

advancement grant @p only map:bottles
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
advancement revoke @p only map:bottles

clear @p golden_sword 14
clear @p golden_sword 15
function item:fire_sword if @p[tag=has_enchanted_sword_fire]
function item:curse_sword if @p[tag=has_enchanted_sword_curse]
scoreboard players tag @p remove has_enchanted_sword_fire
scoreboard players tag @p remove has_enchanted_sword_curse

effect @p saturation 999999 0 true
effect @p blindness 1 0 true

scoreboard players set @p athame_used 0
tp @p @e[tag=spawnpoint_active]
scoreboard players tag @p add rested


function map:spawn_mobs

execute @e[tag=activateEvery] ~ ~ ~ setblock ~ ~ ~ redstone_block
execute @e[tag=deactivateEvery] ~ ~ ~ setblock ~ ~ ~ stone

setblock -458 55 546 lever facing=up_x,powered=false
setblock -458 54 546 stone
setblock -458 54 546 stonebrick variant=chiseled_stonebrick

fill -492 63 434 -488 68 434 air 0 replace stained_glass
scoreboard players tag @p remove boss2_started