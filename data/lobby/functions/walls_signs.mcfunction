#Center sign
execute as @e[tag=wallsSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"", "clickEvent":{"action":"run_command","value":"trigger lobbyWalls42"}}',Text2:'{"text":"Walls distance:","bold":false,"color":"aqua"}',Text3:'{"score":{"name":"lobbyWallsDistance","objective":"lobby"},"bold":true,"color":"gold"}'}

#Plus
execute if score lobbyWallsDistance lobby matches ..79 as @e[tag=wallsPlusSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lobbyWallsPlus"}}',Text2:'{"text":"[+]","bold":true,"color":"aqua"}'}
execute unless score lobbyWallsDistance lobby matches ..79 as @e[tag=wallsPlusSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"[+]","bold":true,"color":"dark_gray"}'}

#Minus
execute if score lobbyWallsDistance lobby matches 16.. as @e[tag=wallsMinusSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lobbyWallsMinus"}}',Text2:'{"text":"[-]","bold":true,"color":"aqua"}'}
execute unless score lobbyWallsDistance lobby matches 16.. as @e[tag=wallsMinusSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"[-]","bold":true,"color":"dark_gray"}'}

#Triggers
execute if entity @a[scores={lobbyWallsPlus=1..}] run scoreboard players add lobbyWallsDistance lobby 1
execute if entity @a[scores={lobbyWallsPlus=1..}] as @e[tag=miniwallsRedWall] at @s run tp @s ~ ~ ~-0.025
execute if entity @a[scores={lobbyWallsPlus=1..}] as @e[tag=miniwallsBlueWall] at @s run tp @s ~ ~ ~0.025 
execute if entity @a[scores={lobbyWallsPlus=1..}] as @e[tag=wallsPlusSignMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ .1 2 1
execute if entity @a[scores={lobbyWallsPlus=1..}] as @a run trigger lobbyWallsPlus set 0

execute if entity @a[scores={lobbyWallsMinus=1..}] run scoreboard players remove lobbyWallsDistance lobby 1
execute if entity @a[scores={lobbyWallsMinus=1..}] as @e[tag=miniwallsRedWall] at @s run tp @s ~ ~ ~0.025
execute if entity @a[scores={lobbyWallsMinus=1..}] as @e[tag=miniwallsBlueWall] at @s run tp @s ~ ~ ~-0.025
execute if entity @a[scores={lobbyWallsMinus=1..}] as @e[tag=wallsPlusSignMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ .1 2 1
execute if entity @a[scores={lobbyWallsMinus=1..}] as @a run trigger lobbyWallsMinus set 0

tellraw @a[scores={lobbyWalls42=1..}, tag=!42] {"text":"???","color":"gray"}
tag @a[scores={lobbyWalls42=1..}, tag=!42] add 42

scoreboard players set @a lobbyWallsPlus 0
scoreboard players set @a lobbyWallsMinus 0
scoreboard players set @a lobbyWalls42 0

execute if score lobbyWallsDistance lobby matches ..79 run scoreboard players enable @a lobbyWallsPlus
execute if score lobbyWallsDistance lobby matches 16.. run scoreboard players enable @a lobbyWallsMinus

execute if score lobbyWallsDistance lobby matches 42 run scoreboard players enable @a[tag=!42] lobbyWalls42
execute unless score lobbyWallsDistance lobby matches 42 as @a run trigger lobbyWalls42 set 0