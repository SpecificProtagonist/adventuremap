kill @e[tag=boss2]
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
summon area_effect_cloud -489 57 419 {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:Item,CustomDisplayTile:1,DisplayOffset:-10,DisplayTile:sea_lantern,Invulnerable:1,Items:[{Slot:2b,id:carrot_on_a_stick,Count:1,Damage:5,tag:{Unbreakable:1,HideFlags:63,display:{Lore:["3 Mana","Throw a exploding fireball.","The flame is a hungry dog","on the pyromancers leash,","be careful it doesn't bite you."],Name:"§rGreater Fireball Staff"}}}]}]}

#fill 991 94 968 991 96 972 air replace light_blue_stained_glass
fill 1017 94 968 1017 96 972 air replace light_blue_stained_glass
clone 1002 81 968 1006 81 972 1002 92 968
setblock 1004 93 970 white_carpet
summon armor_stand 1004 93 970 {CustomName:"§rSpawnpoint",Tags:[spawnpoint,spawnpoint_inactive],Marker:true,Invisible:true,CustomNameVisible:false}
