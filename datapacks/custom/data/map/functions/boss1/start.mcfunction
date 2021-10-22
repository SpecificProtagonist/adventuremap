bossbar set boss1 visible true
playsound statue_demon_1 master @p ~ ~ ~ 1 1 1
fill -492 63 434 -488 68 434 light_blue_stained_glass replace air
execute at @e[tag=boss1_evoker_pos] run summon evoker ~ ~ ~ {NoAI:true,Health:1,Tags:[mob,boss1_evoker]}
tag @e[tag=boss1_evoker_pos] add boss1_evoker_pos_active
tag @p add boss1_started
scoreboard players set @e[tag=boss1_center] eventTimer 0
