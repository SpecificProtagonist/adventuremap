tag @p remove cast_enchanted_sword_curse
tag @p add cast_success
tag @p add has_enchanted_sword_curse
xp add @s -5 levels
scoreboard players set @s spellCooldown 20
clear @p carrot_on_a_stick{spell:"enchanted_sword_curse"} 1
give @s golden_sword{Damage:15,Unbreakable:1,HideFlags:63,display:{Lore:['{"text":"10 Magic Damage, Medium"}','{"text":"The word \'Curse\' is engraved"}','{"text":"at the base of the blade"}'],Name:'{"text":"Curse Sword"}'},AttributeModifiers:[{UUID:[I;95427594,1758189014,-438560953,335333742],Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_damage",Amount:9f},{UUID:[I;861778151,473428878,-910231985,-782070453],Name:"a",Slot:mainhand,Operation:0,AttributeName:"generic.attack_speed",Amount:-3.125ff}],weaponType:3,dualWield:0,Enchantments:[{id:knockback,lvl:2}]}
# TODO: increased knockback when active
