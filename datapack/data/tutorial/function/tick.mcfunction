scoreboard players add $timer tutorial 1

execute as @e[tag=tutorialCamera] at @s run tp @a ~ ~10 ~ ~ ~

scoreboard players operation $timer20 tutorial = $timer tutorial
scoreboard players operation $timer20 tutorial %= 20 tutorial

scoreboard players operation $timer10 tutorial = $timer tutorial
scoreboard players operation $timer10 tutorial %= 10 tutorial

#INTRO
execute if score $timer tutorial matches 1 run function tutorial:t1
execute if score $timer tutorial matches 1..120 if score $timer20 tutorial matches 19 run function game:move_north

#THE GOAL
execute if score $timer tutorial matches 120 run function tutorial:t2
execute if score $timer tutorial matches 180 run function tutorial:t3

execute if score $timer tutorial matches 180..620 if score $timer20 tutorial matches 19 run function game:move_north
execute if score $timer tutorial matches 440..620 if score $timer20 tutorial matches 19 if entity @a[tag=42] as @e[tag=target] at @s run setblock ~ ~1 ~ minecraft:potted_allium 

execute if score $timer tutorial matches 300 run function tutorial:t4

#THE CENTER MOVES
execute if score $timer tutorial matches 360 run function tutorial:t5
execute if score $timer tutorial matches 420 if entity @a[tag=42] run function tutorial:t5_secret 
execute if score $timer tutorial matches 450 run function tutorial:t6
execute if score $timer tutorial matches 455 if entity @a[tag=42] run function tutorial:t6_secret

#Cross The Gap
execute if score $timer tutorial matches 540 run function tutorial:t7
execute if score $timer tutorial matches 620 run function tutorial:t8
execute if score $timer tutorial matches 620.. if score centerZ game matches -27.. if score $timer10 tutorial matches 9 run function game:move_north
execute if score $timer tutorial matches 620.. if score centerZ game matches -27.. if score $timer10 tutorial matches 9 if entity @a[tag=42] as @e[tag=target] at @s run setblock ~ ~1 ~ minecraft:potted_allium
execute if score $timer tutorial matches 820 run function tutorial:t9
execute if score $timer tutorial matches 840 run function tutorial:t10
execute if score $timer tutorial matches 900 run fill 1 74 -45 -1 72 -43 air
execute if score $timer tutorial matches 940 run setblock 0 73 -46 air destroy
execute if score $timer tutorial matches 940 run playsound minecraft:block.stone.break master @a 0 73 -46 1000000 1 1
execute if score $timer tutorial matches 950 run function tutorial:t11
execute if score $timer tutorial matches 1180 run function tutorial:end