#Team choosing
execute as @a[team=!red] at @s if block ~ 64 ~ minecraft:red_wool run team join red
execute as @a[team=!blue] at @s if block ~ 64 ~ minecraft:blue_wool run team join blue
execute as @a at @s unless block ~ 64 ~ minecraft:red_wool unless block ~ 64 ~ minecraft:blue_wool run team leave @s

title @a[team=red] actionbar ["",{"text":"You are on the ","color":"red"},{"text":"RED","bold":true,"color":"red"},{"text":" team.","color":"red"}]
title @a[team=blue] actionbar ["",{"text":"You are on the ","color":"blue"},{"text":"BLUE","bold":true,"color":"blue"},{"text":" team.","color":"blue"}]
execute as @a at @s unless block ~ 64 ~ minecraft:red_wool unless block ~ 64 ~ minecraft:blue_wool run title @a actionbar ""

effect give @a[team=red] minecraft:glowing 10000 255 true
effect give @a[team=blue] minecraft:glowing 10000 255 true
execute as @a at @s unless block ~ 64 ~ minecraft:red_wool unless block ~ 64 ~ minecraft:blue_wool run effect clear @s minecraft:glowing

#Signs
function lobby:start_sign
function lobby:walls_signs
function lobby:blocks_signs
function lobby:music_sign
function lobby:link_sign
function lobby:tutorial_sign

#Effects
effect give @a minecraft:resistance 1000000 255 true
effect give @a minecraft:regeneration 1000000 255 true
effect give @a minecraft:saturation 1000000 255 true