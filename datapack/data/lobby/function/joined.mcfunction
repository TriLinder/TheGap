#Prevent from looping
scoreboard players set @s hasJoined 1
scoreboard players set @s gamesLeft 0

tag @s add detected

#Set gamemode, teleport, leave teams, remove tags
execute unless score $timer tutorial matches 0.. unless score $inProgress game matches 1 run gamemode adventure @s
execute unless score $timer tutorial matches 0.. unless score $inProgress game matches 1 run tp @s 2048.0 80 0 0 0

execute if score $inProgress game matches 1 run tellraw @s "You are now spectating the game."
execute if score $inProgress game matches 1 run tp @s 0 80 0

execute if score $starting game matches 1 run tellraw @s "You are now spectating the game."
execute if score $starting game matches 1 run tp @s 0 80 0

clear @s
effect clear @s

xp set @s 0 levels
xp set @s 0 points

execute if score $inProgress game matches 1 run gamemode spectator @s
execute if score $starting game matches 1 run gamemode spectator @s

execute if score $timer tutorial matches -2 run gamemode spectator @s
execute if score $timer tutorial matches 0.. run gamemode spectator @s 
execute if score $timer tutorial matches -2 run effect give @s minecraft:slowness infinite 255 true
execute if score $timer tutorial matches 0.. run effect give @s minecraft:slowness infinite 255 true

tag @s remove playing
team leave @s

#If not in lobby, remove lobby triggers
execute unless score $inLobby lobby matches 1 run function lobby:disable_triggers