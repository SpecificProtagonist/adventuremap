scoreboard players tag @p add has_bottle {Inventory:[{id:"minecraft:glass_bottle"}]}
scoreboard players add @p[tag=has_bottle] spellCooldown 20
scoreboard players tag @p[tag=has_bottle] add cooldown_from_potion
scoreboard players tag @p remove has_bottle
clear @p glass_bottle
scoreboard players tag @e[type=item,r=2] add bloodVial {Item:{tag:{display:{Name:"§rBlood Vial"}}},Age:0s}
tp @e[tag=bloodVial] @p
entitydata @e[tag=bloodVial] {PickupDelay:0s,Item:{tag:{display:{Name:"§rBlood Vial",Lore:["Restores Health","It would not be wise to","throw away what lets","you cling to life"]}}}}
advancement revoke @s only map:bottles