scoreboard players set $timer tutorial -1

effect give @a minecraft:blindness 1 255 true
effect clear @a minecraft:slowness

execute as @e[tag=block] at @s run function game:destroy_block

fill 21 75 -43 -21 53 -47 air
fill -21 75 43 21 53 47 air

kill @e[tag=tutorialCamera]
kill @e[type=item]

title @a times 20 100 20
title @a subtitle ""
title @a title ""

tp @a 2048 83 0
gamemode adventure @a