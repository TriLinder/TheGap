#Prevent from looping
scoreboard players set @s hasJoined 1
scoreboard players set @s gamesLeft 0

tag @s add detected

#Set gamemode, teleport, leave teams, remove tags
execute unless score $timer tutorial matches 0.. unless score $inProgress game matches 1 run gamemode adventure @s
execute unless score $timer tutorial matches 0.. unless score $inProgress game matches 1 run tp @s 2048 80 0

execute if score $inProgress game matches 1 run gamemode spectator @s
execute if score $timer tutorial matches 0.. run gamemode spectator @s 

tag @s remove playing
team leave @s