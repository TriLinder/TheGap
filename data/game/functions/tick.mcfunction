#Detect player building a block
execute if score $inProgress game matches 1 as @a[scores={placedRedWool=1..}] at @s run function game:raycast_start
execute if score $inProgress game matches 1 as @a[scores={placedBlueWool=1..}] at @s run function game:raycast_start

execute if score $inProgress game matches 1 run scoreboard players set @a placedRedWool 0
execute if score $inProgress game matches 1 run scoreboard players set @a placedBlueWool 0