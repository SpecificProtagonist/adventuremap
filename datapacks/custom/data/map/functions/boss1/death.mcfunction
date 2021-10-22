kill @e[tag=boss1_minnion]
kill @e[tag=boss1_fireball]
kill @e[tag=boss1_spectre]
kill @e[tag=boss1_fireballMarker]
execute at @e[tag=boss1_center] run tp @e[tag=boss1_blades] ~ 0 ~

bossbar set boss1 visible false
fill -492 63 434 -488 68 434 air replace light_blue_stained_glass

execute at @e[tag=boss1_center] run summon area_effect_cloud ~ ~ ~ {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:'{"text":"Item"}',CustomDisplayTile:true,DisplayOffset:-10,DisplayState:{Name:sea_lantern},Invulnerable:1,Items:[{Slot:2b,id:stick,Count:1,tag:{display:{Name:'{"text":"Lever"}',Lore:['{"text":"Once part of a gate mechanism."}','{"text":"If missing, the gate can\'t be opened."}']}}}]}]}
execute at @e[tag=boss1_center] positioned ~1.6 ~ ~1 run summon area_effect_cloud ~ ~ ~ {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:'{"text":"Item"}',CustomDisplayTile:true,DisplayOffset:-10,DisplayState:{Name:sea_lantern},Invulnerable:1,Items:[{Slot:2b,id:carrot_on_a_stick,Count:1,Damage:2,tag:{spell:"small_fireball",Unbreakable:1,HideFlags:63,display:{Lore:['{"text":"1 Mana"}','{"text":"Throw a small fireball"}'],Name:'{"text":"Fireball Staff"}'}}}]}]}
title @p subtitle {"text":""}
title @p title {"text":"Foe slain"}
playsound ui.toast.challenge_complete master @p ~ ~ ~ 1 1 1

tag @p remove boss1_started
tag @p add boss1_killed
