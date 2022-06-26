scoreboard players set @s standing 0

execute if entity @s[nbt={OnGround:1b}] if entity @e[tag=block, distance=..2] run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-1 ~ minecraft:red_wool run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-1 ~ minecraft:blue_wool run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-2 ~ minecraft:red_wool run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-2 ~ minecraft:blue_wool run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-1 ~ minecraft:red_concrete run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-1 ~ minecraft:blue_concrete run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-2 ~ minecraft:red_concrete run scoreboard players set @s standing 1
execute unless score @s standing matches 1 if block ~ ~-2 ~ minecraft:blue_concrete run scoreboard players set @s standing 1

execute if entity @s[gamemode=spectator] run scoreboard players set @s standing 0
execute if entity @s[tag=wall] run scoreboard players set @s standing 0