execute if entity @e[tag=spawnpoint_inactive,distance=..4] run title @p actionbar {"text":"Spawnpoint set"}
execute if entity @e[tag=spawnpoint_active,distance=..4] run title @p actionbar {"text":"Rested"}
execute at @e[tag=spawnpoint_inactive,distance=..4] run particle dragon_breath ~ ~1 ~ .7 1 .7 0 50
execute at @e[tag=spawnpoint_active,distance=..4] run particle dragon_breath ~ ~1 ~ .5 1 .5 0 15
tag @e[tag=spawnpoint_active] add spawnpoint_inactive
tag @e remove spawnpoint_active
execute at @p run tag @e[tag=spawnpoint,distance=..4] add spawnpoint_active
tag @e[tag=spawnpoint_active] remove spawnpoint_inactive
execute at @e[tag=spawnpoint_active] run spawnpoint @p ~ ~-4 ~
tag @p add rested

clear @p potion{display:{Name:"§rBlood Vial"}}
advancement grant @p only map:bottles
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:'{"text":"Blood Vial"}',Lore:['{"text":"Restores Health"}','{"text":"Sometimes, survival takes"}','{"text":"precedence over morality"}']},HideFlags:32}
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:'{"text":"Blood Vial"}',Lore:['{"text":"Restores Health"}','{"text":"Sometimes, survival takes"}','{"text":"precedence over morality"}']},HideFlags:32}
give @p potion{loseOnDeath:true,Potion:"strong_healing",display:{Name:'{"text":"Blood Vial"}',Lore:['{"text":"Restores Health"}','{"text":"Sometimes, survival takes"}','{"text":"precedence over morality"}']},HideFlags:32}
advancement revoke @p only map:bottles

xp add @p[scores={athame_usxed=8..}] -48 levels
scoreboard players remove @e[scores={athame_used=8..}] athame_used 8
xp add @p[scores={athame_used=4..}] -24 levels
scoreboard players remove @e[scores={athame_used=4..}] athame_used 4
xp add @p[scores={athame_used=2..}] -12 levels
scoreboard players remove @e[scores={athame_used=2..}] athame_used 2
xp add @p[scores={athame_used=1..}] -6 levels
scoreboard players set @p athame_used 0
effect give @p instant_health 10 0 true
function map:spawn_mobs
