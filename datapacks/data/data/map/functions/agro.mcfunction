scoreboard players tag @s add agroActive
execute @s[tag=agro2] ~ ~ ~ execute @e[tag=agro,r=2,rm=1] ~ ~ ~ function map:agro if @s[tag=!agroActive]
execute @s[tag=agro5] ~ ~ ~ execute @e[tag=agro,r=5,rm=1] ~ ~ ~ function map:agro if @s[tag=!agroActive]
execute @s[tag=agro9] ~ ~ ~ execute @e[tag=agro,r=9,rm=1] ~ ~ ~ function map:agro if @s[tag=!agroActive]
execute @s[tag=agro2] ~ ~ ~ entitydata @e[tag=mob,r=2] {NoAI:false}
execute @s[tag=agro5] ~ ~ ~ entitydata @e[tag=mob,r=5] {NoAI:false}
execute @s[tag=agro9] ~ ~ ~ entitydata @e[tag=mob,r=9] {NoAI:false}
execute @s[tag=agro2] ~ ~ ~ scoreboard players tag @e[tag=caster,r=2] add casteractive
execute @s[tag=agro5] ~ ~ ~ scoreboard players tag @e[tag=caster,r=5] add casteractive
execute @s[tag=agro9] ~ ~ ~ scoreboard players tag @e[tag=caster,r=9] add casteractive
kill @s