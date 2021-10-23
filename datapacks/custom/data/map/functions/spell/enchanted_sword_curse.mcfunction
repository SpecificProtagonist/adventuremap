tag @p remove cast_enchanted_sword_curse
tag @p add cast_success
tag @p add has_enchanted_sword_curse
xp add @s -5 levels
scoreboard players set @s spellCooldown 20
clear @p carrot_on_a_stick{Damage:8,spell:"enchanted_sword_curse"} 1
give @s golden_sword{Damage:15,Unbreakable:1,HideFlags:63,display:{Lore:["10 Magic Damage, Medium","The word 'Curse' is engraved","at the base of the blade."],Name:"§rCurse Sword"},AttributeModifiers:[{UUID:[I;95427594,1758189014,-438560953,335333742],Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_damage",Amount:9f},{UUID:[I;861778151,473428878,-910231985,-782070453],Name:"a",Slot:mainhand,Operation:1,AttributeName:"generic.attackSpeed",Amount:-.8f}],weaponType:3,dualWield:0,ench:[{id:19,lvl:2}]}
