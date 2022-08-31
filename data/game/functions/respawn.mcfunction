function game:find_spawn
teleport @s @e[tag=spawnpoint,limit=1]

scoreboard players set @s deaths 0
effect give @s minecraft:resistance 1 255 true