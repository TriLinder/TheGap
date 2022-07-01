kill @e[tag=spawnpoint]

execute as @e[tag=completeCenter] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["spawnpoint"], Marker:1b, Invisible:1b}
execute as @e[tag=completeCenter] at @s run spreadplayers ~ ~ 5 5 false @e[tag=spawnpoint]