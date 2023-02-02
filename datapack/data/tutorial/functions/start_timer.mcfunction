execute as @e[tag=block] at @s run function game:destroy_block

function game:build_base
function game:build_walls

kill @e[tag=wall]

summon minecraft:marker 0 64 0 {Marker:1b, Tags:["tutorialCamera"]}
tp @e[tag=tutorialCamera] 47 69 63 141.6 10.6

scoreboard players set $timer tutorial 0
effect clear @a minecraft:blindness
effect clear @a minecraft:darkness

kill @e[tag=spawnpoint]