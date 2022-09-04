clear @s

#Hotbar
item replace entity @s hotbar.0 with minecraft:iron_sword{HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"]}
item replace entity @s hotbar.1 with minecraft:iron_pickaxe{HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"]}
#item replace entity @s hotbar.2 with minecraft:shears{HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"]}
item replace entity @s hotbar.2 with minecraft:bow{HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}, {id:"minecraft:infinity",lvl:1s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"]}

#Inventory
item replace entity @s inventory.0 with minecraft:arrow 64

#Team dependent (red)
execute if entity @s[team=red] run item replace entity @s hotbar.3 with minecraft:red_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=red] run item replace entity @s hotbar.4 with minecraft:red_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=red] run item replace entity @s hotbar.5 with minecraft:red_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64

execute if entity @s[team=red] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:10036257}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=red] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:10036257}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=red] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:10036257}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=red] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:10036257}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}

execute if entity @s[team=red] run item replace entity @s weapon.offhand with minecraft:shield{BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"cre"}]}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}

#Team dependent (blue)
execute if entity @s[team=blue] run item replace entity @s hotbar.3 with minecraft:blue_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=blue] run item replace entity @s hotbar.4 with minecraft:blue_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=blue] run item replace entity @s hotbar.5 with minecraft:blue_wool{HideFlags:127, Unbreakable:1b, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64

execute if entity @s[team=blue] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:3290519}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=blue] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:3290519}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=blue] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:3290519}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}
execute if entity @s[team=blue] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:3290519}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s},{id:"minecraft:binding_curse",lvl:1s}]}

execute if entity @s[team=blue] run item replace entity @s weapon.offhand with minecraft:shield{BlockEntityTag:{Base:11,Patterns:[{Color:0,Pattern:"cre"}]}, HideFlags:127, Unbreakable:1b, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}