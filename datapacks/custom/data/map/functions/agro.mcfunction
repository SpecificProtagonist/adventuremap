tag @s add agroActive
execute if entity @s[tag=agro2] at @s as @e[tag=agro,distance=1..2.1] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro5] at @s as @e[tag=agro,distance=1..5.2] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro9] at @s as @e[tag=agro,distance=1..9.3] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro2] at @s as @e[tag=mob,distance=..2.1] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro5] at @s as @e[tag=mob,distance=..5.2] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro9] at @s as @e[tag=mob,distance=..9.3] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro2] run tag @e[tag=caster,distance=..2.1] add casteractive
execute if entity @s[tag=agro5] run tag @e[tag=caster,distance=..5.2] add casteractive
execute if entity @s[tag=agro9] run tag @e[tag=caster,distance=..9.3] add casteractive
kill @s
