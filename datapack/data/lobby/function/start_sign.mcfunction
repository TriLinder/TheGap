#     -- STATE IDs --
#   0 = Not enough players
#   1 = Every player must choose team
#   2 = Team can not be empty
#   3 = Start + team stats

execute store result score playersOnline lobby run execute if entity @a

#3
scoreboard players set startSignState lobby 3

execute store result score redPlayers lobby run execute if entity @a[team=red]
execute store result score bluePlayers lobby run execute if entity @a[team=blue]

#2
execute if score redPlayers lobby matches 0 run scoreboard players set startSignState lobby 2
execute if score bluePlayers lobby matches 0 run scoreboard players set startSignState lobby 2

#1
execute as @a unless entity @s[team=red] unless entity @s[team=blue] run scoreboard players set startSignState lobby 1

#0
execute if score playersOnline lobby matches ..1 run scoreboard players set startSignState lobby 0

#Set sign data
execute if score startSignState lobby matches 0 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger startSignClick"},"text":""}','{"bold":true,"color":"aqua","text":"Not enough"}','{"bold":true,"color":"aqua","text":"players."}','{"text":""}']},is_waxed:0b}
execute if score startSignState lobby matches 1 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger startSignClick"},"bold":true,"color":"aqua","text":"All players"}','{"bold":true,"color":"aqua","text":"must choose"}','{"bold":true,"color":"aqua","text":"their team."}','{"text":""}']},is_waxed:0b}

execute if score startSignState lobby matches 2 as @e[tag=startSignMarker] at @s if score redPlayers lobby matches 0 at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger startSignClick"},"text":""}','{"extra":[{"bold":true,"color":"aqua","text":"Team "},{"bold":true,"color":"dark_red","text":"RED"}],"text":""}','{"bold":true,"color":"aqua","text":"is empty."}','{"text":""}']},is_waxed:0b}
execute if score startSignState lobby matches 2 as @e[tag=startSignMarker] at @s if score bluePlayers lobby matches 0 at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger startSignClick"},"text":""}','{"extra":[{"bold":true,"color":"aqua","text":"Team "},{"bold":true,"color":"dark_blue","text":"BLUE"}],"text":""}','{"bold":true,"color":"aqua","text":"is empty."}','{"text":""}']},is_waxed:0b}

execute if score startSignState lobby matches 3 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {front_text:{color:"black",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"trigger startSignClick"},"text":""}','{"bold":true,"color":"aqua","text":"Click to start!"}','{"extra":[{"bold":true,"color":"dark_red","score":{"name":"redPlayers","objective":"lobby"}},{"bold":true,"color":"aqua","text":" | "},{"bold":true,"color":"dark_blue","score":{"name":"bluePlayers","objective":"lobby"}}],"text":""}','{"text":""}']},is_waxed:0b}

#Triggers
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 0 run tellraw @s {"text":"Two or more players are required to start the game.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 1 run tellraw @s {"text":"All players must choose their team by standing on the wool.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 2 run tellraw @s {"text":"Teams can't be empty.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 3 run function game:start_game

scoreboard players set @a startSignClick 0
scoreboard players enable @a startSignClick