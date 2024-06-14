#Center sign
execute as @e[tag=blocksSignMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":""},"text":""}','{"bold":false,"color":"aqua","text":"Blocks to move:"}','{"score":{"name":"lobbyBlocksToMove","objective":"lobby"},"bold":true,"color":"gold"}','{"text":""}']},is_waxed:0b}

#Plus
execute if score lobbyBlocksToMove lobby matches ..11 as @e[tag=blocksPlusMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger lobbyBlocksPlus"},"text":""}','{"bold":true,"color":"aqua","text":"[+]"}','{"text":""}','{"text":""}']},is_waxed:0b}
execute unless score lobbyBlocksToMove lobby matches ..11 as @e[tag=blocksPlusMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger lobbyBlocksPlus"},"text":""}','{"bold":true,"color":"dark_gray","text":"[+]"}','{"text":""}','{"text":""}']},is_waxed:0b}

#Minus
execute if score lobbyBlocksToMove lobby matches 2.. as @e[tag=blocksMinusMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger lobbyBlocksMinus"},"text":""}','{"bold":true,"color":"aqua","text":"[-]"}','{"text":""}','{"text":""}']},is_waxed:0b}
execute unless score lobbyBlocksToMove lobby matches 2.. as @e[tag=blocksMinusMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger lobbyBlocksMinus"},"text":""}','{"bold":true,"color":"dark_gray","text":"[-]"}','{"text":""}','{"text":""}']},is_waxed:0b}

#Triggers
execute if entity @a[scores={lobbyBlocksPlus=1..}] run scoreboard players add lobbyBlocksToMove lobby 1
execute if entity @a[scores={lobbyBlocksPlus=1..}] as @e[tag=blocksPlusMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ .1 2 1
execute if entity @a[scores={lobbyWallsPlus=1..}] as @a run trigger lobbyWallsPlus set 0

execute if entity @a[scores={lobbyBlocksMinus=1..}] run scoreboard players remove lobbyBlocksToMove lobby 1
execute if entity @a[scores={lobbyBlocksMinus=1..}] as @e[tag=blocksMinusMarker] at @s run playsound minecraft:ui.button.click master @a[distance=..8] ~ ~ ~ .1 2 1
execute if entity @a[scores={lobbyBlocksMinus=1..}] as @a run trigger lobbyBlocksMinus set 0

scoreboard players set @a lobbyBlocksPlus 0
scoreboard players set @a lobbyBlocksMinus 0

execute if score lobbyBlocksToMove lobby matches ..11 run scoreboard players enable @a lobbyBlocksPlus
execute if score lobbyBlocksToMove lobby matches 2.. run scoreboard players enable @a lobbyBlocksMinus