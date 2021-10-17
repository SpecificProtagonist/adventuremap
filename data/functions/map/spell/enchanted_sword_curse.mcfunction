scoreboard players tag @p remove cast_enchanted_sword_curse
scoreboard players tag @p add cast_success
scoreboard players tag @p add has_enchanted_sword_curse
xp -5L @s
scoreboard players set @s spellCooldown 20
clear @p carrot_on_a_stick 8 1 {spell:"enchanted_sword_curse"}
give @s golden_sword 1 15 {Unbreakable:1,HideFlags:63,display:{Lore:["10 Magic Damage, Medium","The word 'Curse' is engraved","at the base of the blade."],Name:"§rCurse Sword"},AttributeModifiers:[{UUIDLeast:1,UUIDMost:6,Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attackDamage",Amount:9f},{UUIDLeast:2,UUIDMost:6,Name:"a",Slot:mainhand,Operation:1,AttributeName:"generic.attackSpeed",Amount:-.8f}],weaponType:3,dualWield:0,ench:[{id:19,lvl:2}]}
