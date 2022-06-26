#Detect player building a block
execute as @a[scores={placedRedWool=1..}] at @s run function game:raycast_start
execute as @a[scores={placedBlueWool=1..}] at @s run function game:raycast_start

scoreboard players set @a placedRedWool 0
scoreboard players set @a placedBlueWool 0

#Detect player falling in void
execute as @a[nbt={OnGround:0b}] store result score @s playerY run data get entity @s Pos[1]
execute as @a[scores={playerY=..30}] run kill @s
#scoreboard players set @a[scores={y=..30}] playerY 255

#Detect kill
execute as @a[scores={kills=1..}] at @s run function game:kill
scoreboard players set @a kills 0

#Detect victory
execute if entity @a[scores={goldBlocksMined=1..}, team=red] run function game:red_won
execute if entity @a[scores={goldBlocksMined=1..}, team=blue] run function game:blue_won