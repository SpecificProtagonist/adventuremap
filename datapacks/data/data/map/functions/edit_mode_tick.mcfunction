#New Item
execute @e[tag=newItemPos] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Color:16777215,Radius:.1,Duration:9999999,RadiusOnUse:0,RadiusPerTick:0,Tags:["ItemCloud"],Passengers:[{id:hopper_minecart,Tags:["Item"],Enabled:0,CustomName:Item,CustomDisplayTile:1,DisplayOffset:-10,DisplayTile:sea_lantern,Invulnerable:1}]}
kill @e[tag=newItemPos]

#New Mimic
execute @e[tag=newMimicPos] ~ ~ ~ summon hopper_minecart ~ ~1 ~ {Tags:["Mimic"],Enabled:0,CustomName:Mimic,CustomDisplayTile:1,DisplayTile:chest,Invulnerable:1,LootTable:"",Invulnerable:1}
kill @e[tag=newMimicPos]

#Quick tp
scoreboard players tag @e[type=item] add tpSwitch {Item:{id:"minecraft:glowstone_dust"}}
execute @p[tag=edit_hasreturn] ~ ~ ~ function map:edit_mode_quickreturn if @e[tag=tpSwitch]
execute @p[tag=!edit_hasreturn] ~ ~ ~ function map:edit_mode_quicktp if @e[tag=tpSwitch]