#Detect player building a block
execute if score $inProgress game matches 1 as @a[scores={placedRedWool=1..}] at @s run function game:raycast_start
execute if score $inProgress game matches 1 as @a[scores={placedBlueWool=1..}] at @s run function game:raycast_start

execute if score $inProgress game matches 1 run scoreboard players set @a placedRedWool 0
execute if score $inProgress game matches 1 run scoreboard players set @a placedBlueWool 0

#Detect player falling in void
execute if score $inProgress game matches 1 as @a[nbt={OnGround:0b}] store result score @s y run data get entity @s Pos[1]
execute if score $inProgress game matches 1 as @a[scores={y=..30}] run kill @s
execute if score $inProgress game matches 1 run scoreboard players set @a[scores={y=..30}] y 255

#Detect kill
execute if score $inProgress game matches 1 as @a[scores={kills=1..}] at @s run function game:kill
execute if score $inProgress game matches 1 run scoreboard players set @a kills 0