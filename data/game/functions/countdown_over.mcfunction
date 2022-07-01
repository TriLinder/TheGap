#Remove barrier
fill -5 65 0 5 69 0 minecraft:air

#Players
execute as @a run function game:inventory

#System
scoreboard players set $inProgress game 1