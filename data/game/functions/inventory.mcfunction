clear @s

#Hotbar
item replace entity @s hotbar.0 with minecraft:iron_sword{HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"]}
item replace entity @s hotbar.1 with minecraft:iron_pickaxe{HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"]}
item replace entity @s hotbar.2 with minecraft:shears{HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"]}
item replace entity @s hotbar.3 with minecraft:bow{HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}, {id:"minecraft:infinity",lvl:1s}], CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"]}

#Inventory
item replace entity @s inventory.0 with minecraft:arrow 64

#Team dependent (red)
execute if entity @s[team=red] run item replace entity @s hotbar.4 with minecraft:red_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=red] run item replace entity @s hotbar.5 with minecraft:red_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=red] run item replace entity @s hotbar.6 with minecraft:red_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64

execute if entity @s[team=red] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:10036257}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=red] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:10036257}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=red] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:10036257}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=red] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:10036257}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}

#Team dependent (blue)
execute if entity @s[team=blue] run item replace entity @s hotbar.4 with minecraft:blue_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=blue] run item replace entity @s hotbar.5 with minecraft:blue_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64
execute if entity @s[team=blue] run item replace entity @s hotbar.6 with minecraft:blue_wool{HideFlags:127, CanDestroy:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool"], CanPlaceOn:["minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete"]} 64

execute if entity @s[team=blue] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:3290519}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=blue] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:3290519}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=blue] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:3290519}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}
execute if entity @s[team=blue] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:3290519}, HideFlags:127, Enchantments:[{id:"minecraft:unbreaking",lvl:255s}]}