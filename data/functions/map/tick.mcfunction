function map:edit_mode if @p[m=1,tag=test_mode]
function map:test_mode if @p[m=2,tag=!test_mode]
scoreboard players tag @p[m=2] add test_mode
scoreboard players tag @p[m=1] remove test_mode
function map:test_mode_tick if @p[m=2]
function map:edit_mode_tick if @p[m=1]