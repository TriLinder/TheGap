execute as @e[tag=block] at @s run function game:destroy_block
function game:build_base

summon minecraft:marker 0 65 -7 {Tags:["block", "bridge"]}
summon minecraft:marker 0 66 -7 {Tags:["block", "bridge"]}
summon minecraft:marker 0 66 -8 {Tags:["block", "bridge"]}
summon minecraft:marker 0 67 -8 {Tags:["block", "bridge"]}
summon minecraft:marker 0 67 -9 {Tags:["block", "bridge"]}
summon minecraft:marker 0 68 -9 {Tags:["block", "bridge"]}
summon minecraft:marker 0 68 -10 {Tags:["block", "bridge"]}
summon minecraft:marker 0 69 -9 {Tags:["block", "bridge"]}
summon minecraft:marker 0 69 -10 {Tags:["block", "bridge"]}
summon minecraft:marker 0 70 -10 {Tags:["block", "bridge"]}
summon minecraft:marker 0 71 -10 {Tags:["block", "bridge"]}
summon minecraft:marker 0 71 -11 {Tags:["block", "bridge"]}
summon minecraft:marker 0 72 -11 {Tags:["block", "bridge"]}
summon minecraft:marker 0 72 -12 {Tags:["block", "bridge"]}
summon minecraft:marker 0 72 -13 {Tags:["block", "bridge"]}
summon minecraft:marker 0 72 -14 {Tags:["block", "bridge", "target"]}

scoreboard players set @e[tag=bridge] block 4
execute as @e[tag=bridge] at @s run function game:build_block 

tp @e[tag=tutorialCamera] 22.4 55.5 8.4 126.5 -0.5

title @a times 20 500 20

title @a subtitle "AND ALL BLOCKS ATTACHED TO IT"
title @a title "THE MIDDLE,"