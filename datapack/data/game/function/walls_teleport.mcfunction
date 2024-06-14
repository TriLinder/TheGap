execute if score wallsDistanceTemp game matches 100.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~100
execute if score wallsDistanceTemp game matches 100.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-100
execute if score wallsDistanceTemp game matches 100.. run scoreboard players remove wallsDistanceTemp game 100

execute if score wallsDistanceTemp game matches 50.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~50
execute if score wallsDistanceTemp game matches 50.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-50
execute if score wallsDistanceTemp game matches 50.. run scoreboard players remove wallsDistanceTemp game 50

execute if score wallsDistanceTemp game matches 25.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~25
execute if score wallsDistanceTemp game matches 25.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-25
execute if score wallsDistanceTemp game matches 25.. run scoreboard players remove wallsDistanceTemp game 25

execute if score wallsDistanceTemp game matches 10.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~10
execute if score wallsDistanceTemp game matches 10.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-10
execute if score wallsDistanceTemp game matches 10.. run scoreboard players remove wallsDistanceTemp game 10

execute if score wallsDistanceTemp game matches 5.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~5 
execute if score wallsDistanceTemp game matches 5.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-5 
execute if score wallsDistanceTemp game matches 5.. run scoreboard players remove wallsDistanceTemp game 5

execute if score wallsDistanceTemp game matches 2.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~2
execute if score wallsDistanceTemp game matches 2.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-2
execute if score wallsDistanceTemp game matches 2.. run scoreboard players remove wallsDistanceTemp game 2

execute if score wallsDistanceTemp game matches 1.. as @e[tag=south_wall] at @s run tp @s ~ ~ ~1 
execute if score wallsDistanceTemp game matches 1.. as @e[tag=north_wall] at @s run tp @s ~ ~ ~-1 
execute if score wallsDistanceTemp game matches 1.. run scoreboard players remove wallsDistanceTemp game 1

execute if score wallsDistanceTemp game matches 1.. run function game:walls_teleport