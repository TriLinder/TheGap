#Set sign text
execute as @e[tag=linkSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger linkSign"}}',Text2:'{"text":"Check out my","color":"aqua"}',Text3:'{"text":"GitHub profile","color":"aqua"}'}

#Markers
execute as @a[scores={linkSign=1..}] run tellraw @s ["",{"text":"You can check out my GitHub profile by clicking ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TriLinder/"}},{"text":"here","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/TriLinder/"}},{"text":".","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TriLinder/"}}]

scoreboard players set @a linkSign 0
scoreboard players enable @a linkSign