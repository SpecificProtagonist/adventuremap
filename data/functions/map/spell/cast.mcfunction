#Directional
#	execute @p[rym=-10,ry=010] ~ ~1 ~00000000001
#	execute @p[rym=011,ry=030] ~-.342 ~1 ~00.939
#	execute @p[rym=031,ry=050] ~-.642 ~1 ~00.766
#	execute @p[rym=051,ry=070] ~-.866 ~1 ~0000.5
#	execute @p[rym=071,ry=083] ~-.984 ~1 ~00.173
#	execute @p[rym=084,ry=097] ~-1 ~1 ~000000000
#	execute @p[rym=098,ry=110] ~-.984 ~1 ~-0.173
#	execute @p[rym=111,ry=130] ~-.866 ~1 ~-000.5
#	execute @p[rym=131,ry=150] ~-.642 ~1 ~-0.766
#	execute @p[rym=151,ry=170] ~-.342 ~1 ~-0.939
#	execute @p[rym=171,ry=180] ~ ~1 ~-0000000001
#	execute @p[ry=-011,rym=-030] ~.342 ~1 ~0.939
#	execute @p[ry=-031,rym=-050] ~.642 ~1 ~0.766
#	execute @p[ry=-051,rym=-070] ~.866 ~1 ~000.5
#	execute @p[ry=-071,rym=-083] ~.984 ~1 ~0.173
#	execute @p[ry=-084,rym=-097] ~1 ~1 ~00000000
#	execute @p[ry=-098,rym=-110] ~.984 ~1 ~-.173
#	execute @p[ry=-111,rym=-130] ~.866 ~1 ~-00.5
#	execute @p[ry=-131,rym=-150] ~.642 ~1 ~-.766
#	execute @p[ry=-151,rym=-170] ~.342 ~1 ~-.939
#	execute @p[ry=-171,rym=-180] ~ ~1 ~-00000001

scoreboard players tag @p remove cooldown_from_potion

scoreboard players tag @p add cast_regen {SelectedItem:{tag:{spell:"regen"}}}
scoreboard players tag @p add cast_tentacle_beast {SelectedItem:{tag:{spell:"tentacle_beast"}}}
scoreboard players tag @p add cast_small_fireball {SelectedItem:{tag:{spell:"small_fireball"}}}
scoreboard players tag @p add cast_fireball {SelectedItem:{tag:{spell:"fireball"}}}
scoreboard players tag @p add cast_cursed_fireball {SelectedItem:{tag:{spell:"cursed_fireball"}}}
scoreboard players tag @p add cast_enchanted_sword_fire {SelectedItem:{tag:{spell:"enchanted_sword_fire"}}}
scoreboard players tag @p add cast_enchanted_sword_curse {SelectedItem:{tag:{spell:"enchanted_sword_curse"}}}
scoreboard players tag @p add cast_athame {SelectedItem:{tag:{spell:"athame"}}}

scoreboard players tag @p add cast_regen {Inventory:[{Slot:-106b,tag:{spell:"regen"}}]}
scoreboard players tag @p add cast_tentacle_beast {Inventory:[{Slot:-106b,tag:{spell:"tentacle_beast"}}]}
scoreboard players tag @p add cast_small_fireball {Inventory:[{Slot:-106b,tag:{spell:"small_fireball"}}]}
scoreboard players tag @p add cast_fireball {Inventory:[{Slot:-106b,tag:{spell:"fireball"}}]}
scoreboard players tag @p add cast_cursed_fireball {Inventory:[{Slot:-106b,tag:{spell:"cursed_fireball"}}]}
scoreboard players tag @p add cast_athame {Inventory:[{Slot:-106b,tag:{spell:"athame"}}]}

function map:spell/regen if @p[tag=cast_regen,lm=6]
function map:spell/tentacle_beast if @p[tag=cast_tentacle_beast,lm=10]
function map:spell/small_fireball if @p[tag=cast_small_fireball,lm=1]
function map:spell/fireball if @p[tag=cast_fireball,lm=3]
function map:spell/cursed_fireball if @p[tag=cast_cursed_fireball,lm=3]
function map:spell/enchanted_sword_fire if @p[tag=cast_enchanted_sword_fire,lm=5]
function map:spell/enchanted_sword_curse if @p[tag=cast_enchanted_sword_curse,lm=5]
function map:spell/athame if @p[tag=cast_athame]


playsound entity.zombie.infect master @p[tag=cast_success]
execute @s[tag=!cast_success] ~ ~ ~ particle reddust ~ ~1.5 ~ .5 .1 .5 0 15
scoreboard players tag @p remove cast_success