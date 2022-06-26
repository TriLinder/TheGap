scoreboard players add @s rayCast 1

tp @s ^ ^ ^.25

execute unless block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {"Tags":["block", "playerBuilt"]}
execute unless block ~ ~ ~ minecraft:air as @e[tag=block, distance=..0.1] at @s run function game:assign_block
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s rayCast 999

execute if score @s rayCast matches 35.. run kill @s

#tellraw @a ["",{"text":"SCORE: "},{"score":{"name":"@s","objective":"rayCast"}}]

execute if score @s rayCast matches 1..35 as @s at @s run function game:raycast_loop