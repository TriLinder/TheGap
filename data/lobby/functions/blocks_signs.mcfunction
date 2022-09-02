#Center sign
execute as @e[tag=blocksSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"", "clickEvent":{"action":"run_command","value":""}}',Text2:'{"text":"Blocks to move:","bold":false,"color":"aqua"}',Text3:'{"score":{"name":"lobbyBlocksToMove","objective":"lobby"},"bold":true,"color":"gold"}'}

#Plus
execute if score lobbyBlocksToMove lobby matches ..11 as @e[tag=blocksPlusMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lobbyBlocksPlus"}}',Text2:'{"text":"[+]","bold":true,"color":"aqua"}'}
execute unless score lobbyBlocksToMove lobby matches ..11 as @e[tag=blocksPlusMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"[+]","bold":true,"color":"dark_gray"}'}

#Minus
execute if score lobbyBlocksToMove lobby matches 2.. as @e[tag=blocksMinusMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lobbyBlocksMinus"}}',Text2:'{"text":"[-]","bold":true,"color":"aqua"}'}
execute unless score lobbyBlocksToMove lobby matches 2.. as @e[tag=blocksMinusMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"[-]","bold":true,"color":"dark_gray"}'}

#Triggers
execute if entity @a[scores={lobbyBlocksPlus=1..}] run scoreboard players add lobbyBlocksToMove lobby 1
execute if entity @a[scores={lobbyBlocksPlus=1..}] as @e[tag=blocksPlusMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ 1 2 1
execute if entity @a[scores={lobbyWallsPlus=1..}] as @a run trigger lobbyWallsPlus set 0

execute if entity @a[scores={lobbyBlocksMinus=1..}] run scoreboard players remove lobbyBlocksToMove lobby 1
execute if entity @a[scores={lobbyBlocksMinus=1..}] as @e[tag=blocksMinusMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ 1 2 1
execute if entity @a[scores={lobbyBlocksMinus=1..}] as @a run trigger lobbyBlocksMinus set 0

scoreboard players set @a lobbyBlocksPlus 0
scoreboard players set @a lobbyBlocksMinus 0

execute if score lobbyBlocksToMove lobby matches ..11 run scoreboard players enable @a lobbyBlocksPlus
execute if score lobbyBlocksToMove lobby matches 2.. run scoreboard players enable @a lobbyBlocksMinus