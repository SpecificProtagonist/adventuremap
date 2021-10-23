tag @p remove cast_enchanted_sword_fire
tag @p add cast_success
tag @p add has_enchanted_sword_fire
xp add @s -5 levels
scoreboard players set @s spellCooldown 20
clear @p carrot_on_a_stick{spell:"enchanted_sword_fire"} 1
give @s golden_sword{Damage:14,Unbreakable:1,HideFlags:63,display:{Lore:['{"text":"10 Sharp Damage, Medium"}','{"text":"The word \'Fire\' is engraved"}','{"text":"at the base of the blade"}'],Name:'{"text":"Fire Sword"}'},AttributeModifiers:[{UUID:[I;861778151,473428878,-910231985,-782070453],Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_damage",Amount:9f},{UUID:[I;-45383749,-1665223285,776697470,-1803142752],Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_speed",Amount:-3.125f}],weaponType:2,dualWield:0,Enchantments:[{id:fire_aspect,lvl:2}]}
