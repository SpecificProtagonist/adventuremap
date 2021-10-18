#New Item
execute as @e[tag=newItemPos] at @s run summon area_effect_cloud ~ ~ ~ {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:Item,CustomDisplayTile:1,DisplayOffset:-10,DisplayTile:sea_lantern,Invulnerable:1}]}
kill @e[tag=newItemPos]

#New Mimic
execute as @e[tag=newMimicPos] at @s run summon hopper_minecart ~ ~1 ~ {Tags:["Mimic"],Enabled:0,CustomName:Mimic,CustomDisplayTile:1,DisplayTile:chest,Invulnerable:1,LootTable:"",Invulnerable:1}
kill @e[tag=newMimicPos]

