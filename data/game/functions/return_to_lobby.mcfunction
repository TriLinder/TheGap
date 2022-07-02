scoreboard players set $gameOverTime game -1

function game:destory_walls

execute as @e[tag=block] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air
execute as @e[tag=block] run function game:destroy_block

effect clear @a

worldborder set 10000
scoreboard players set $inLobby lobby 1

tp @a 2048 83 0
spawnpoint @a 2048 83 0

xp set @a 0 levels
xp set @a 0 points

gamemode adventure @a

clear @a

tag @a remove winner
tag @a remove loser

tag @a remove playing