playsound custom.statue_demon_1 master @p ~ ~ ~ 1 1 1
fill -492 63 434 -488 68 434 light_blue_stained_glass replace air
summon evoker -501 62 420 {NoAI:true,Health:1,Rotation:[250f,20f],Tags:[mob,boss1_e]}
summon evoker -498 62 410 {NoAI:true,Health:1,Rotation:[315f,20f],Tags:[mob,boss1_e]}
summon evoker -482 62 410 {NoAI:true,Health:1,Rotation:[45f,20f],Tags:[mob,boss1_e]}
summon evoker -479 62 420 {NoAI:true,Health:1,Rotation:[110f,20f],Tags:[mob,boss1_e]}
# TODO: replace with /bossbar
summon wither -493 123 415 {Tags:[mob,boss1],Attributes:[{Name:"generic.maxHealth",Base:400}],Health:400,CustomName:"§rDemon Evokers"}
stats entity @e[tag=boss1] set SuccessCount @e[tag=boss1] boss_health
scoreboard players set @e[tag=boss1] eventTimer 4
scoreboard players set @e[tag=boss1] boss_health 4
scoreboard players set @p eventTimer 0
