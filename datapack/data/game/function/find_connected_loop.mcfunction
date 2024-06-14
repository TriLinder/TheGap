scoreboard players set foundNewConnected game 0

execute as @e[tag=connectedBlock] at @s if entity @e[tag=!connectedBlock, distance=..2, type=marker] run scoreboard players set foundNewConnected game 1
execute as @e[tag=connectedBlock] at @s run tag @e[tag=block, distance=..2] add connectedBlock

execute if score foundNewConnected game matches 1 run function game:find_connected_loop