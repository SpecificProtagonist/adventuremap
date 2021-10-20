tag @s add agroActive
execute if entity @s[tag=agro2] at @s as @e[tag=agro,distance=1..2.5] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro5] at @s as @e[tag=agro,distance=1..5.5] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro9] at @s as @e[tag=agro,distance=1..9.5] if entity @s[tag=!agroActive] run function map:agro
execute if entity @s[tag=agro2] as @e[tag=mob,distance=..2.5] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro5] as @e[tag=mob,distance=..5.5] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro9] as @e[tag=mob,distance=..9.5] run data merge entity @s {NoAI:false}
execute if entity @s[tag=agro2] run tag @e[tag=caster,distance=..2.5] add casteractive
execute if entity @s[tag=agro5] run tag @e[tag=caster,distance=..5.5] add casteractive
execute if entity @s[tag=agro9] run tag @e[tag=caster,distance=..9.5] add casteractive
kill @s
