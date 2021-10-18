scoreboard players tag @p remove cast_tentacle_beast
scoreboard players tag @p add cast_success
xp -10L @s
scoreboard players set @s spellCooldown 40

execute @p[rym=-10,ry=010] ~ ~1 ~00000000001 summon squid
execute @p[rym=010,ry=030] ~-.342 ~1 ~00.939 summon squid
execute @p[rym=030,ry=050] ~-.642 ~1 ~00.766 summon squid
execute @p[rym=050,ry=070] ~-.866 ~1 ~0000.5 summon squid
execute @p[rym=070,ry=090] ~-.984 ~1 ~00.173 summon squid
execute @p[rym=090,ry=110] ~-.984 ~1 ~-0.173 summon squid
execute @p[rym=110,ry=130] ~-.866 ~1 ~-000.5 summon squid
execute @p[rym=130,ry=150] ~-.642 ~1 ~-0.766 summon squid
execute @p[rym=150,ry=170] ~-.342 ~1 ~-0.939 summon squid
execute @p[rym=170,ry=180] ~ ~1 ~-0000000001 summon squid
execute @p[ry=-010,rym=-030] ~.342 ~1 ~0.939 summon squid
execute @p[ry=-030,rym=-050] ~.642 ~1 ~0.766 summon squid
execute @p[ry=-050,rym=-070] ~.866 ~1 ~000.5 summon squid
execute @p[ry=-070,rym=-090] ~.984 ~1 ~0.173 summon squid
execute @p[ry=-090,rym=-110] ~.984 ~1 ~-.173 summon squid
execute @p[ry=-110,rym=-130] ~.866 ~1 ~-00.5 summon squid
execute @p[ry=-130,rym=-150] ~.642 ~1 ~-.766 summon squid
execute @p[ry=-150,rym=-170] ~.342 ~1 ~-.939 summon squid
execute @p[ry=-170,rym=-180] ~ ~1 ~-00000001 summon squid