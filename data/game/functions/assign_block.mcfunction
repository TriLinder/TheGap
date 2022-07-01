#Assign block ID to marker

#   0 = WHITE CONCRETE
#   1 = RED CONCRETE
#   2 = BLUE CONCRETE
#   3 = RED WOOL
#   4 = BlUE WOOL

#Fallback
scoreboard players set @s block 0

#Get block
execute if block ~ ~ ~ minecraft:white_concrete run scoreboard players set @s block 0
execute if block ~ ~ ~ minecraft:red_concrete run scoreboard players set @s block 1
execute if block ~ ~ ~ minecraft:blue_concrete run scoreboard players set @s block 2
execute if block ~ ~ ~ minecraft:red_wool run scoreboard players set @s block 3
execute if block ~ ~ ~ minecraft:blue_wool run scoreboard players set @s block 4

#Destroy block if inside walls
function game:blocks_from_border
execute if score @s blocksFromBorder matches ..-2 run function game:destroy_block 