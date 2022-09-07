#Move all block to north ( -1z )

#Kill marker entity if block no longer present
execute as @e[tag=block] at @s if block ~ ~ ~ air run kill @s

#Find blocks not connected to base
function game:find_connected

#Check if there's a block near the north border
scoreboard players set canMove game 1
execute as @e[tag=connectedBlock] run function game:blocks_from_border
execute if entity @e[tag=connectedBlock, scores={blockPositiveNegative=-1, blocksFromBorder=..0}] run scoreboard players set canMove game 0

#Always move when in tutorial
execute unless score $timer tutorial matches -1 run scoreboard players set canMove game 1

#Teleport all touching entities
execute if score canMove game matches 1 as @e[type=!marker, tag=!raycast] at @s run function game:standing_check
execute if score canMove game matches 1 as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 if entity @e[tag=notConnected, distance=..1] run scoreboard players set @s standing 0
execute if score canMove game matches 1 as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run tp @s ~ ~ ~-1

#Kill blocks touching built inside border, teleport touching entities AGAIN, so they can land on a reamaining block.
execute as @e[tag=connectedBlock, scores={blocksFromBorder=..-1}] at @s run execute as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run tp @s ~ ~ ~-1
execute as @e[tag=connectedBlock, scores={blocksFromBorder=..-1}] at @s run function game:destroy_block 

#Move blocks
execute if score canMove game matches 1 as @e[tag=connectedBlock] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute if score canMove game matches 1 as @e[tag=connectedBlock] at @s run tp @s ~ ~ ~-1

execute if score canMove game matches 1 run scoreboard players remove centerZ game 1

execute if score canMove game matches 1 as @e[tag=connectedBlock] at @s run function game:build_block