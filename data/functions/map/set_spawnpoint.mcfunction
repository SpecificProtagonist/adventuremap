execute @e[tag=spawnpoint_inactive,r=4] ~ ~ ~ title @p actionbar {"text":"Spawnpoint set"}
execute @e[tag=spawnpoint_active,r=4] ~ ~ ~ title @p actionbar {"text":"Rested"}
execute @e[tag=spawnpoint_inactive,r=4] ~ ~ ~ particle dragonbreath ~ ~1 ~ .7 1 .7 0 50
execute @e[tag=spawnpoint_active,r=4] ~ ~ ~ particle dragonbreath ~ ~1 ~ .5 1 .5 0 15
scoreboard players tag @e[tag=spawnpoint_active] add spawnpoint_inactive
scoreboard players tag @e remove spawnpoint_active
execute @p ~ ~ ~ scoreboard players tag @e[tag=spawnpoint,r=3] add spawnpoint_active
scoreboard players tag @e[tag=spawnpoint_active] remove spawnpoint_inactive
execute @e[tag=spawnpoint_active] ~ ~ ~ spawnpoint @p ~ ~-4 ~
scoreboard players tag @p add rested

clear @p potion 0 99 {display:{Name:"§rBlood Vial"}}
advancement grant @p only map:bottles
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
give @p potion 1 0 {loseOnDeath:true,Potion:"strong_healing",display:{Name:"§rBlood Vial",Lore:["Restores Health","Sometimes, survival takes","precedence over morality"]},HideFlags:32}
advancement revoke @p only map:bottles

xp -48L @p[score_athame_used_min=8]
scoreboard players remove @e[score_athame_used_min=8] athame_used 8
xp -24L @p[score_athame_used_min=4]
scoreboard players remove @e[score_athame_used_min=4] athame_used 4
xp -12L @p[score_athame_used_min=2]
scoreboard players remove @e[score_athame_used_min=2] athame_used 2
xp -6L @p[score_athame_used_min=1]
scoreboard players set @p athame_used 0
effect @p instant_health 10 0 true
function map:spawn_mobs