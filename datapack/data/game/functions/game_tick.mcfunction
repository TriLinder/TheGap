#Detect player building a block
execute as @a[scores={placedRedWool=1..}] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:command_block{Command:"function game:placed_red_wool",auto:1b} replace minecraft:red_wool
execute as @a[scores={placedBlueWool=1..}] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:command_block{Command:"function game:placed_blue_wool",auto:1b} replace minecraft:blue_wool

scoreboard players set @a placedRedWool 0
scoreboard players set @a placedBlueWool 0

#Detect player running out of blocks
execute as @a[team=red] store result score @s hasRedWool run clear @s minecraft:red_wool 0
execute as @a[team=red] if score @s hasRedWool matches ..16 run function game:give_red_wool
execute as @a[team=blue] store result score @s hasBlueWool run clear @s minecraft:blue_wool 0
execute as @a[team=blue] if score @s hasBlueWool matches ..16 run function game:give_blue_wool

#Detect player placing TNT
execute as @a[scores={placedTNT=1..}] at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"function game:placed_tnt",auto:1b} replace minecraft:tnt
scoreboard players set @a placedTNT 0

#Detect exploding TNT
execute as @e[tag=placedTNT, nbt={fuse:1s}] at @s run function game:explode
execute as @e[tag=placedTNT, nbt={fuse:1s}] at @s run kill @s

#Respawn
execute as @a[scores={deaths=1..}] run scoreboard players set @s killStreak 0
execute as @a[scores={deaths=1..}] run xp set @s 0 levels
execute as @a[scores={deaths=1..}, nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:bedrock run function game:respawn

#Detect player falling in void
execute as @a[tag=playing] store result score @s playerY run data get entity @s Pos[1]
execute as @a[scores={playerY=..30}, tag=playing] run kill @s
scoreboard players set @a[scores={playerY=..30}, tag=playing] playerY 76

#Detect kill
execute as @a[scores={kills=1..}] at @s run function game:kill
scoreboard players remove @a[scores={kills=1..}] kills 1

#Detect victory
execute as @a[scores={goldBlocksMined=1..}] store result score @s playerZ run data get entity @s Pos[2]
execute if entity @a[scores={goldBlocksMined=1.., playerZ=1..}] run function game:red_won
execute if entity @a[scores={goldBlocksMined=1.., playerZ=..-1}] run function game:blue_won

#Victory when enemy team leaves
execute unless entity @a[tag=playing, team=red] unless score $allowEmptyGames game matches 1 run function game:blue_won
execute unless entity @a[tag=playing, team=blue] unless score $allowEmptyGames game matches 1 if score $inProgress game matches 1 run function game:red_won

#Prevent items from being dropped
execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] run data merge entity @s {PickupDelay:0s}

#Prevent spectators from flying away
execute as @a[gamemode=spectator] at @s unless entity @e[distance=..150, tag=block] run tp @s @p[tag=playing]