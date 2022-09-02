#Team choosing
execute as @a at @s if block ~ 79 ~ minecraft:red_wool run title @s actionbar ["",{"text":"You are on the ","color":"red"},{"text":"RED","bold":true,"color":"red"},{"text":" team.","color":"red"}]
execute as @a at @s if block ~ 79 ~ minecraft:blue_wool run title @s actionbar ["",{"text":"You are on the ","color":"blue"},{"text":"BLUE","bold":true,"color":"blue"},{"text":" team.","color":"blue"}]
execute as @a at @s unless block ~ 79 ~ minecraft:red_wool unless block ~ 79 ~ minecraft:blue_wool run title @a actionbar ""

execute as @a at @s if block ~ 79 ~ minecraft:red_wool run effect give @s minecraft:glowing 10000 255 true
execute as @a at @s if block ~ 79 ~ minecraft:blue_wool run effect give @s minecraft:glowing 10000 255 true
execute as @a at @s unless block ~ 79 ~ minecraft:red_wool unless block ~ 79 ~ minecraft:blue_wool run effect clear @s minecraft:glowing

execute as @a at @s if block ~ 79 ~ minecraft:red_wool run team join red
execute as @a at @s if block ~ 79 ~ minecraft:blue_wool run team join blue
execute as @a at @s unless block ~ 79 ~ minecraft:red_wool unless block ~ 79 ~ minecraft:blue_wool run team leave @s

#Signs
function lobby:start_sign
function lobby:walls_signs
function lobby:blocks_signs

#Effects
effect give @a minecraft:resistance 1000000 255 true
effect give @a minecraft:regeneration 1000000 255 true
effect give @a minecraft:saturation 1000000 255 true

#Triggers
scoreboard players enable @a startTutorial
execute if entity @a[scores={startTutorial=1..}] run function tutorial:start
scoreboard players set @a startTutorial 0