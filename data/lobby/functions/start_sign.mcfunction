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
execute if score startSignState lobby matches 0 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger startSignClick"}}',Text2:'{"text":"Not enough","bold":true,"color":"aqua"}',Text3:'{"text":"players.","bold":true,"color":"aqua"}'}
execute if score startSignState lobby matches 1 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"Every player","clickEvent":{"action":"run_command","value":"trigger startSignClick"},"bold":true,"color":"aqua"}',Text2:'{"text":"must","bold":true,"color":"aqua"}',Text3:'{"text":"choose a team.","bold":true,"color":"aqua"}'}

execute if score startSignState lobby matches 2 as @e[tag=startSignMarker] at @s if score redPlayers lobby matches 0 at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger startSignClick"}}',Text2:'["",{"text":"Team ","bold":true,"color":"aqua"},{"text":"RED","bold":true,"color":"dark_red"}]',Text3:'{"text":"is empty.","bold":true,"color":"aqua"}'}
execute if score startSignState lobby matches 2 as @e[tag=startSignMarker] at @s if score bluePlayers lobby matches 0 at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger startSignClick"}}',Text2:'["",{"text":"Team ","bold":true,"color":"aqua"},{"text":"BLUE","bold":true,"color":"dark_blue"}]',Text3:'{"text":"is empty.","bold":true,"color":"aqua"}'}

execute if score startSignState lobby matches 3 as @e[tag=startSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger startSignClick"}}',Text2:'{"text":"Click to start!","bold":true,"color":"aqua"}',Text3:'["",{"score":{"name":"redPlayers","objective":"lobby"},"bold":true,"color":"dark_red"},{"text":" | ","bold":true,"color":"aqua"},{"score":{"name":"bluePlayers","objective":"lobby"},"bold":true,"color":"dark_blue"}]'}

#Triggers
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 0 run tellraw @s {"text":"You need two or more players to start the game.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 1 run tellraw @s {"text":"Every player must choose their team by standing on the wool.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 2 run tellraw @s {"text":"No team can be empty.","color":"aqua"}
execute as @a[scores={startSignClick=1..}] if score startSignState lobby matches 3 run function game:start_game

scoreboard players set @a startSignClick 0
scoreboard players enable @a startSignClick