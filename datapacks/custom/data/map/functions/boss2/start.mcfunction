function map:boss2/door_accessible_from_library

title @p subtitle {"text":"Cathedral of Fire"}
title @p title {"text":""}
playsound custom:boom master @p ~ ~ ~ 1 1 1

bossbar set boss2 value 8
scoreboard players set @e[tag=boss2] eventTimer 1
scoreboard players set @e[tag=boss2] boss2_health 8
scoreboard players set @e[tag=boss2_additional_evokers] eventTimer 0
tag @p add boss2_started
