kill @e[tag=boss2_minion]
kill @e[tag=boss2_miniminion]
kill @e[tag=boss2_main]
kill @e[tag=boss2_ghast]
kill @e[tag=boss2_evoker]

tag @p remove boss2_started
tag @p add boss2_killed

title @p subtitle {"text":""}
title @p title {"text":"Foe slain"}
playsound ui.toast.challenge_complete master @p ~ ~ ~ 1 1 1

execute at @e[tag=boss2] run summon area_effect_cloud ~ ~ ~ {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:'{"text":"Item"}',CustomDisplayTile:true,DisplayOffset:-10,DisplayState:{Name:sea_lantern},Invulnerable:1,Items:[{Slot:2b,id:carrot_on_a_stick,Count:1,tag:{Damage:5,Unbreakable:1,HideFlags:63,display:{Lore:['{"text":"3 Mana"}','{"text":"Throw a exploding fireball."}','{"text":"The flame is a hungry dog"}','{"text":"on the pyromancers leash,"}','{"text":"be careful it doesn\'t bite you"}'],Name:'{"text":"Greater Fireball Staff"}'}}}]}]}

function map:boss2/door_accessible_from_library
fill -450 94 424 -450 96 428 air replace lime_stained_glass
execute at @e[tag=boss2] run setblock ~ ~ ~ white_carpet
execute at @e[tag=boss2] run setblock ~ ~-1 ~ sea_lantern
execute at @e[tag=boss2] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Spawnpoint"}',Tags:[spawnpoint,spawnpoint_inactive],Marker:true,Invisible:true,CustomNameVisible:false}
