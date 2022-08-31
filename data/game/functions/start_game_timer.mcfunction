#Prepare blocks
function game:build_base
function game:build_walls

#Build barrier between two teams
fill -5 65 0 5 69 0 minecraft:barrier
fill 2 67 0 -2 66 0 minecraft:iron_bars

#Players
title @a title ""

gamemode adventure @a
effect clear @a

execute as @e[tag=north_wall] at @s run spawnpoint @a ~ ~12 ~-3
#spawnpoint @a 0 0 0

tp @a[team=red] 0 67 -3 0 0
tp @a[team=blue] 0 67 3 180 0

scoreboard players set $countdown game 100