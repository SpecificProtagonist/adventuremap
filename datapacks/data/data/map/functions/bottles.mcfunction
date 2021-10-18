tag @p[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] add has_bottle
scoreboard players add @p[tag=has_bottle] spellCooldown 20
tag @p[tag=has_bottle] add cooldown_from_potion
tag @p remove has_bottle
clear @p glass_bottle
tag @e[type=item,distance=..2.5,nbt={Item:{tag:{display:{Name:"§rBlood Vial"}}},Age:0s}] add bloodVial
tp @e[tag=bloodVial] @p
execute as @e[tag=bloodVial] run data merge entity @s {PickupDelay:0s,Item:{tag:{display:{Name:"§rBlood Vial",Lore:["Restores Health","It would not be wise to","throw away what lets","you cling to life"]}}}}
advancement revoke @s only map:bottles
