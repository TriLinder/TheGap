#Move all block to south ( +1z )

#Kill marker entity if block no longer present
execute as @e[tag=block] at @s if block ~ ~ ~ air run kill @s

#Check if there's a block near the south border
scoreboard players set canMove game 1
execute as @e[tag=block] run function game:blocks_from_border
execute if entity @e[tag=block, scores={blockPositiveNegative=1, blocksFromBorder=..0}] run scoreboard players set canMove game 0

#Always move when in tutorial
execute unless score $timer tutorial matches -1 run scoreboard players set canMove game 1

#Teleport all touching entities
execute if score canMove game matches 1 as @e[type=!marker, tag=!raycast] at @s run function game:standing_check
execute if score canMove game matches 1 as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run tp @s ~ ~ ~1

#Kill blocks touching built inside border, teleport touching entities AGAIN, so they can land on a reamaining block.
execute as @e[tag=block, scores={blocksFromBorder=..-1}] at @s run execute as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run tp @s ~ ~ ~1
execute as @e[tag=block, scores={blocksFromBorder=..-1}] at @s run function game:destroy_block 

#Move blocks
execute if score canMove game matches 1 as @e[tag=block] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute if score canMove game matches 1 as @e[tag=block] at @s run tp @s ~ ~ ~1

execute if score canMove game matches 1 run scoreboard players add centerZ game 1

execute if score canMove game matches 1 as @e[tag=block] at @s run function game:build_block
