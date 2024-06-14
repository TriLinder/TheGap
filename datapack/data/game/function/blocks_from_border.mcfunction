execute store result score @s blockZ run data get entity @s Pos[2]

scoreboard players set -1 blockZ -1 

execute if score @s blockZ matches ..-1 run scoreboard players set @s blockPositiveNegative -1
execute if score @s blockZ matches 0.. run scoreboard players set @s blockPositiveNegative 1

execute if score @s blockZ matches ..0 run scoreboard players operation @s blockZ *= -1 blockZ

scoreboard players operation @s blocksFromBorder = border game
scoreboard players operation @s blocksFromBorder -= @s blockZ