scoreboard players add @s rayCast 1

tp @s ^ ^ ^.25

execute unless block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {"Tags":["block", "playerBuilt"]}
execute unless block ~ ~ ~ minecraft:air as @e[tag=block, distance=..0.1] at @s run function game:assign_block
execute unless block ~ ~ ~ minecraft:air run scoreboard players reset @s rayCast
execute unless block ~ ~ ~ minecraft:air run kill @s

execute unless score @s rayCast matches 20.. as @s at @s run function game:raycast_loop
execute if score @s rayCast matches 20.. run kill @s