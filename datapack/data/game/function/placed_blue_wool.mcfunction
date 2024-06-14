#Replace with wool block again
setblock ~ ~ ~ minecraft:blue_wool

#Create and assign block if the block wasn't assigned before
execute unless entity @e[tag=block, distance=..0.1] run summon minecraft:marker ~ ~ ~ {"Tags":["block", "playerBuilt", "newBlock"]}
execute as @e[tag=newBlock, distance=..0.1] at @s run function game:assign_block
tag @e[tag=newBlock, distance=..0.1] remove newBlock