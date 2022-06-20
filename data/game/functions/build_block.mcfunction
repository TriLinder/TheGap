#Build a block based on marker's block ID
#See assign_block for more info about IDs

execute if score @s block matches 0 run setblock ~ ~ ~ minecraft:white_concrete
execute if score @s block matches 1 run setblock ~ ~ ~ minecraft:red_concrete
execute if score @s block matches 2 run setblock ~ ~ ~ minecraft:blue_concrete
execute if score @s block matches 3 run setblock ~ ~ ~ minecraft:red_wool
execute if score @s block matches 4 run setblock ~ ~ ~ minecraft:blue_wool