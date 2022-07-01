#Save current Z postion, teleport to z=0
execute store result score @s blockZ run data get entity @s Pos[2]
tp @s ~ ~ 0

#Set flipBlocks to blockZ * -1 
scoreboard players set -1 blockZ -1
scoreboard players operation @s flipBlocks = @s blockZ
scoreboard players operation @s flipBlocks *= -1 blockZ

#Teleport
function game:flip_teleport

#Turn players around
execute if entity @s[type=player] at @s run tp @s ~ ~ ~ ~-180 ~