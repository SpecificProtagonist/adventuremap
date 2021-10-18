tag @p remove cast_cursed_fireball
tag @p add cast_success
xp add @s -3 levels
scoreboard players set @s spellCooldown 40

#######
# TODO: Replace with data command
#######

execute at @p[y_rotation=-11..010] positioned ~ ~1 ~00000000001 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0,.0,.1]}
execute at @p[y_rotation=011..030] positioned ~-.342 ~1 ~00.939 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0342,.0,.0939]}
execute at @p[y_rotation=031..050] positioned ~-.642 ~1 ~00.766 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0642,.0,.0766]}
execute at @p[y_rotation=051..070] positioned ~-.866 ~1 ~0000.5 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0866,.0,.05]}
execute at @p[y_rotation=071..083] positioned ~-.984 ~1 ~00.173 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0984,.0,.0173]}
execute at @p[y_rotation=084..097] positioned ~-1 ~1 ~000000000 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.1,.0,.0]}
execute at @p[y_rotation=098..110] positioned ~-.984 ~1 ~-0.173 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0984,.0,-.0173]}
execute at @p[y_rotation=111..130] positioned ~-.866 ~1 ~-000.5 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0866,.0,-.05]}
execute at @p[y_rotation=131..150] positioned ~-.642 ~1 ~-0.766 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0642,.0,-.0766]}
execute at @p[y_rotation=151..170] positioned ~-.342 ~1 ~-0.939 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[-.0342,.0,-.0939]}
execute at @p[y_rotation=171..180] positioned ~ ~1 ~-0000000001 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0,.0,-.1]}
execute at @p[y_rotation=-030..-011] positioned ~.342 ~1 ~0.939 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0342,.0,.0939]}
execute at @p[y_rotation=-050..-031] positioned ~.642 ~1 ~0.766 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0642,.0,.0766]}
execute at @p[y_rotation=-070..-051] positioned ~.866 ~1 ~000.5 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0866,.0,.05]}
execute at @p[y_rotation=-083..-071] positioned ~.984 ~1 ~0.173 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0984,.0,.0173]}
execute at @p[y_rotation=-097..-084] positioned ~1 ~1 ~0000000 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.1,.0,.0]}
execute at @p[y_rotation=-110..-098] positioned ~.984 ~1 ~-.173 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0984,.0,-.0173]}
execute at @p[y_rotation=-130..-111] positioned ~.866 ~1 ~-00.5 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0866,.0,-.05]}
execute at @p[y_rotation=-150..-131] positioned ~.642 ~1 ~-.766 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0642,.0,-.0766]}
execute at @p[y_rotation=-170..-151] positioned ~.342 ~1 ~-.939 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0342,.0,-.0939]}
execute at @p[y_rotation=-180..-171] positioned ~ ~1 ~-00000001 run summon dragon_fireball ~ ~ ~ {direction:[.0,.0,.0],power:[.0,.0,-.1]}
