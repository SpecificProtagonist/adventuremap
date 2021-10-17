scoreboard players tag @s remove dualWield
scoreboard players tag @s remove dualWield2
scoreboard players tag @s add dualWield {SelectedItem:{tag:{dualWield:1}}}
scoreboard players tag @p[tag=dualWield] add dualWield2 {Inventory:[{Slot:-106b}]}
effect @s[tag=dualWield2] minecraft:mining_fatigue 1 5 true
scoreboard players tag @s[tag=dualWield2] add dualWield4
scoreboard players tag @s[tag=dualWield3] remove dualWield4
title @s[tag=dualWield4] actionbar {"text":"You can't equip an item in your offhand if you wield a two-handed weapon!","color":"dark_red"}
scoreboard players tag @s remove dualWield3
scoreboard players tag @s remove dualWield4
scoreboard players tag @s[tag=dualWield2] add dualWield3