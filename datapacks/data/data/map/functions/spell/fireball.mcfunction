scoreboard players tag @p remove cast_fireball
scoreboard players tag @p add cast_success
xp -3L @s
scoreboard players set @s spellCooldown 20

execute @p[rym=-11,ry=010] ~ ~1 ~00000000001 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0,.0,.1]}
execute @p[rym=011,ry=030] ~-.342 ~1 ~00.939 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0342,.0,.0939]}
execute @p[rym=031,ry=050] ~-.642 ~1 ~00.766 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0642,.0,.0766]}
execute @p[rym=051,ry=070] ~-.866 ~1 ~0000.5 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0866,.0,.05]}
execute @p[rym=071,ry=083] ~-.984 ~1 ~00.173 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0984,.0,.0173]}
execute @p[rym=084,ry=097] ~-1 ~1 ~000000000 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.1,.0,.0]}
execute @p[rym=098,ry=110] ~-.984 ~1 ~-0.173 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0984,.0,-.0173]}
execute @p[rym=111,ry=130] ~-.866 ~1 ~-000.5 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0866,.0,-.05]}
execute @p[rym=131,ry=150] ~-.642 ~1 ~-0.766 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0642,.0,-.0766]}
execute @p[rym=151,ry=170] ~-.342 ~1 ~-0.939 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[-.0342,.0,-.0939]}
execute @p[rym=171,ry=180] ~ ~1 ~-0000000001 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0,.0,-.1]}
execute @p[ry=-011,rym=-030] ~.342 ~1 ~0.939 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0342,.0,.0939]}
execute @p[ry=-031,rym=-050] ~.642 ~1 ~0.766 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0642,.0,.0766]}
execute @p[ry=-051,rym=-070] ~.866 ~1 ~000.5 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0866,.0,.05]}
execute @p[ry=-071,rym=-083] ~.984 ~1 ~0.173 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0984,.0,.0173]}
execute @p[ry=-084,rym=-097] ~1 ~1 ~00000000 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.1,.0,.0]}
execute @p[ry=-098,rym=-110] ~.984 ~1 ~-.173 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0984,.0,-.0173]}
execute @p[ry=-111,rym=-130] ~.866 ~1 ~-00.5 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0866,.0,-.05]}
execute @p[ry=-131,rym=-150] ~.642 ~1 ~-.766 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0642,.0,-.0766]}
execute @p[ry=-151,rym=-170] ~.342 ~1 ~-.939 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0342,.0,-.0939]}
execute @p[ry=-171,rym=-180] ~ ~1 ~-00000001 summon fireball ~ ~ ~ {ExplosionPower:2,direction:[.0,.0,.0],power:[.0,.0,-.1]}