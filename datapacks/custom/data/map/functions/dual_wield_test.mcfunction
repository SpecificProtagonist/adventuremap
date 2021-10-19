tag @s remove dualWield
tag @s remove dualWield2
tag @s[nbt={SelectedItem:{tag:{dualWield:1}}}] add dualWield
tag @p[tag=dualWield,nbt={Inventory:[{Slot:-106b}]}] add dualWield2 
effect give @s[tag=dualWield2] minecraft:mining_fatigue 1 5 true
tag @s[tag=dualWield2] add dualWield4
tag @s[tag=dualWield3] remove dualWield4
title @s[tag=dualWield4] actionbar {"text":"You have difficulties wielding a two-handed weapon with one hand","color":"dark_red"}
tag @s remove dualWield3
tag @s remove dualWield4
tag @s[tag=dualWield2] add dualWield3
