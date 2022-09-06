#Teleport to spawnpoint, face enemy team's wall
function game:find_spawn
execute if entity @s[team=red] at @e[tag=spawnpoint,limit=1] run teleport @s ~ ~ ~ 0 0
execute if entity @s[team=blue] at @e[tag=spawnpoint,limit=1] run teleport @s ~ ~ ~ -180 0

#Prevent looping 
scoreboard players set @s deaths 0

#Other
effect give @s minecraft:resistance 1 255 true
clear @s minecraft:stick