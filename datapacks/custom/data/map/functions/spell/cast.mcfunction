tag @p remove cooldown_from_potion

tag @p[nbt={SelectedItem:{tag:{spell:"regen"}}}] add cast_regen
tag @p[nbt={SelectedItem:{tag:{spell:"tentacle_beast"}}}] add cast_tentacle_beast
tag @p[nbt={SelectedItem:{tag:{spell:"small_fireball"}}}] add cast_small_fireball
tag @p[nbt={SelectedItem:{tag:{spell:"fireball"}}}] add cast_fireball
tag @p[nbt={SelectedItem:{tag:{spell:"cursed_fireball"}}}] add cast_cursed_fireball 
tag @p[nbt={SelectedItem:{tag:{spell:"enchanted_sword_fire"}}}] add cast_enchanted_sword_fire
tag @p[nbt={SelectedItem:{tag:{spell:"enchanted_sword_curse"}}}] add cast_enchanted_sword_curse
tag @p[nbt={SelectedItem:{tag:{spell:"athame"}}}] add cast_athame 

tag @p[tag=cast_regen] add main_hand_cast
tag @p[tag=cast_tentacle_beast] add main_hand_cast
tag @p[tag=cast_small_fireball] add main_hand_cast
tag @p[tag=cast_fireball] add main_hand_cast
tag @p[tag=cast_cursed_fireball] add main_hand_cast
tag @p[tag=cast_enchanted_sword_fire] add main_hand_cast
tag @p[tag=cast_enchanted_sword_curse] add main_hand_cast
tag @p[tag=cast_athame] add main_hand_cast

tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"regen"}}]}] add cast_regen 
tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"tentacle_beast"}}]}] add cast_tentacle_beast 
tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"small_fireball"}}]}] add cast_small_fireball
tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"fireball"}}]}] add cast_fireball 
tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"cursed_fireball"}}]}] add cast_cursed_fireball
tag @p[tag=!main_hand_cast,nbt={Inventory:[{Slot:-106b,tag:{spell:"athame"}}]}] add cast_athame

tag @p remove main_hand_cast

execute if entity @p[tag=cast_regen,level=6..] run function map:spell/regen
execute if entity @p[tag=cast_tentacle_beast,level=10..] run function map:spell/tentacle_beast
execute if entity @p[tag=cast_small_fireball,level=1..] run function map:spell/small_fireball
execute if entity @p[tag=cast_fireball,level=3..] run function map:spell/fireball
execute if entity @p[tag=cast_cursed_fireball,level=3..] run function map:spell/cursed_fireball 
execute if entity @p[tag=cast_enchanted_sword_fire,level=5..] run function map:spell/enchanted_sword_fire
execute if entity @p[tag=cast_enchanted_sword_curse,level=5..] run function map:spell/enchanted_sword_curse
execute if entity @p[tag=cast_athame] run function map:spell/athame


playsound entity.zombie.infect master @p[tag=cast_success]
execute at @s[tag=!cast_success] run particle dust 1.6 0.1 0.4 1.0 ~ ~1.5 ~ .5 .1 .5 0 15
tag @p remove cast_success
