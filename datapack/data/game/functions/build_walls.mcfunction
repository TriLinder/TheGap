kill @e[tag=wall]

#Set border
scoreboard players set wallsDistanceTemp game 1
scoreboard players operation border game = wallsDistance game
scoreboard players operation border game -= wallsDistanceTemp game

#Summon
summon minecraft:armor_stand 0 64 1 {Marker:1b, Tags:["south_wall", "wall"], Invisible:1b}
summon minecraft:armor_stand 0 64 -1 {Marker:1b, Tags:["north_wall", "wall"], Invisible:1b}

#Teleport
scoreboard players operation wallsDistanceTemp game = wallsDistance game

function game:walls_teleport

#Build
execute as @e[tag=wall] at @s run setblock ~ ~ ~ minecraft:yellow_concrete

execute as @e[tag=south_wall] at @s run fill ~-21 ~-11 ~4 ~21 ~11 ~ minecraft:bedrock hollow
execute as @e[tag=south_wall] at @s run fill ~20 ~10 ~ ~-20 ~-10 ~2 minecraft:blue_stained_glass
execute as @e[tag=south_wall] at @s run fill ~20 ~10 ~3 ~-20 ~-10 ~3 minecraft:gold_block

execute as @e[tag=north_wall] at @s run fill ~21 ~11 ~-4 ~-21 ~-11 ~ minecraft:bedrock hollow
execute as @e[tag=north_wall] at @s run fill ~20 ~10 ~ ~-20 ~-10 ~-2 minecraft:red_stained_glass
execute as @e[tag=north_wall] at @s run fill ~20 ~10 ~-3 ~-20 ~-10 ~-3 minecraft:gold_block