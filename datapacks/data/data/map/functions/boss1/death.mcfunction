fill -492 63 434 -488 68 434 air 0 replace stained_glass
kill @e[tag=boss1]
#summon item -490 63 433 {Tags:[boss1Key],Item:{id:stick,Count:1,tag:{display:{Name:"§rLever",Lore:["Once part of a gate mechanism.","If missing, the gate can't be opened."]}}}}
summon area_effect_cloud -491 57 418 {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:Item,CustomDisplayTile:1,DisplayOffset:-10,DisplayTile:sea_lantern,Invulnerable:1,Items:[{Slot:2b,id:stick,Count:1,tag:{display:{Name:"§rLever",Lore:["Once part of a gate mechanism.","If missing, the gate can't be opened."]}}}]}]}
summon area_effect_cloud -489 57 419 {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:Item,CustomDisplayTile:1,DisplayOffset:-10,DisplayTile:sea_lantern,Invulnerable:1,Items:[{Slot:2b,id:carrot_on_a_stick,Count:1,Damage:2,tag:{spell:"small_fireball",Unbreakable:1,HideFlags:63,display:{Lore:["1 Mana","Throw a small fireball"],Name:"§rFireball Staff"}}}]}]}
title @p subtitle {"text":""}
title @p title {"text":"Foe slain"}
playsound ui.toast.challenge_complete master @p ~ ~ ~ 1 1 1
kill @e[tag=boss1_minnion]
kill @e[tag=boss1_fireball]
tp @e[tag=boss1_blades] -499 92 489
kill @e[tag=boss1_spectre]
kill @e[tag=boss1_fireballMarker]
scoreboard players tag @p add boss1_killed