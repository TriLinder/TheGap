scoreboard players set $gameOverTime game -1

function game:destory_walls

execute as @e[tag=block] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air
execute as @e[tag=block] run kill @s

effect clear @a
tp @a 2048 83 0
gamemode adventure @a

tag @a remove winner
tag @a remove loser