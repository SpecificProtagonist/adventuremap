xp set @p 0 levels
xp set @p 0 points
kill @e[type=experience_orb]

clear @p glass_bottle
clear @p potion{loseOnSpawn:true}
kill @e[type=item,nbt={Item:{tag:{loseOnSpawn:true}}}]

#clear @p potion{display:{Name:'{"text":"Blood Vial"}'}}
advancement grant @p only map:bottles
function item:blood_vial
function item:blood_vial
function item:blood_vial
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

tag @p remove boss1_started
bossbar set boss1 visible false
fill -492 63 434 -488 68 434 air replace light_blue_stained_glass
tag @p remove boss2_started
bossbar set boss2 visible false
