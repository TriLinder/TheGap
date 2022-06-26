#Move all block to north ( -1z )

#Kill marker entity if block no longer present
execute as @e[tag=block] at @s if block ~ ~ ~ air run kill @s

#Teleport all touching entities
execute as @e[type=!marker, tag=!raycast] at @s run function game:standing_check
execute as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run tp @s ~ ~ ~-1

#Move blocks
execute as @e[tag=block] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute as @e[tag=block] at @s run tp @s ~ ~ ~-1

scoreboard players remove centerZ game 1

execute as @e[tag=block] at @s run function game:build_block