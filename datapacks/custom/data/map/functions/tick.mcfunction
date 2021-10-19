execute if entity @p[gamemode=creative,tag=test_mode] run function map:edit_mode
execute if entity @p[gamemode=adventure,tag=!test_mode] run function map:test_mode
tag @p[gamemode=adventure] add test_mode
tag @p[gamemode=creative] remove test_mode
execute if entity @p[gamemode=adventure] run function map:test_mode_tick
execute if entity @p[gamemode=creative] run function map:edit_mode_tick

