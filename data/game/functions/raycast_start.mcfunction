summon minecraft:armor_stand ~ ~ ~ {Tags:["raycast"], Marker:1b, Invisbile:1b}
tp @e[tag=raycast,distance=..1] ~ ~1 ~ ~ ~

execute as @e[tag=raycast,distance=..1] at @s run function game:raycast_loop